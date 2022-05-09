; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/men_z135_uart.c_pt.bc'
source_filename = "../drivers/tty/serial/men_z135_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.mcb_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mcb_device_id = type { i16, i32 }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.men_z135_port = type { %struct.uart_port, ptr, ptr, ptr, i32, %struct.spinlock, i8 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mcb_device = type { %struct.device, ptr, i8, ptr, i16, i32, i32, i32, i32, i32, %struct.resource, %struct.resource, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.36, %struct.anon.37, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.36 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.37 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__param_str_txlvl = internal constant [20 x i8] c"men_z135_uart.txlvl\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@txlvl = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_txlvl = internal constant %struct.kernel_param { ptr @__param_str_txlvl, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @txlvl } }, section "__param", align 4
@__UNIQUE_ID_txlvltype227 = internal constant [33 x i8] c"men_z135_uart.parmtype=txlvl:int\00", section ".modinfo", align 1
@__UNIQUE_ID_txlvl228 = internal constant [72 x i8] c"men_z135_uart.parm=txlvl:TX IRQ trigger level 0-7, default 5 (128 byte)\00", section ".modinfo", align 1
@__param_str_rxlvl = internal constant [20 x i8] c"men_z135_uart.rxlvl\00", align 1
@rxlvl = internal global { i32, [28 x i8] } { i32 6, [28 x i8] zeroinitializer }, align 32
@__param_rxlvl = internal constant %struct.kernel_param { ptr @__param_str_rxlvl, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @rxlvl } }, section "__param", align 4
@__UNIQUE_ID_rxlvltype229 = internal constant [33 x i8] c"men_z135_uart.parmtype=rxlvl:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rxlvl230 = internal constant [72 x i8] c"men_z135_uart.parm=rxlvl:RX IRQ trigger level 0-7, default 6 (256 byte)\00", section ".modinfo", align 1
@__param_str_align = internal constant [20 x i8] c"men_z135_uart.align\00", align 1
@align = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_align = internal constant %struct.kernel_param { ptr @__param_str_align, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @align } }, section "__param", align 4
@__UNIQUE_ID_aligntype231 = internal constant [33 x i8] c"men_z135_uart.parmtype=align:int\00", section ".modinfo", align 1
@__UNIQUE_ID_align232 = internal constant [77 x i8] c"men_z135_uart.parm=align:Keep hardware FIFO write pointer aligned, default 0\00", section ".modinfo", align 1
@__param_str_rx_timeout = internal constant [25 x i8] c"men_z135_uart.rx_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rx_timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_timeout = internal constant %struct.kernel_param { ptr @__param_str_rx_timeout, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @rx_timeout } }, section "__param", align 4
@__UNIQUE_ID_rx_timeouttype233 = internal constant [39 x i8] c"men_z135_uart.parmtype=rx_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_timeout234 = internal constant [103 x i8] c"men_z135_uart.parm=rx_timeout:RX timeout. Timeout in seconds = (timeout_reg * baud_reg * 4) / freq_reg\00", section ".modinfo", align 1
@__initcall__kmod_men_z135_uart__238_915_men_z135_init6 = internal global ptr @men_z135_init, section ".initcall6.init", align 4
@mcb_driver = internal global { %struct.mcb_driver, [36 x i8] } { %struct.mcb_driver { %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @men_z135_ids, ptr @men_z135_probe, ptr @men_z135_remove, ptr null }, [36 x i8] zeroinitializer }, align 32
@men_z135_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.3, ptr @.str.25, i32 0, i32 0, i32 12, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_men_z135_exit = internal global ptr @men_z135_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [68 x i8] c"men_z135_uart.author=Johannes Thumshirn <johannes.thumshirn@men.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [52 x i8] c"men_z135_uart.file=drivers/tty/serial/men_z135_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [29 x i8] c"men_z135_uart.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [53 x i8] c"men_z135_uart.description=MEN 16z135 High Speed UART\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [31 x i8] c"men_z135_uart.alias=mcb:16z135\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns244 = internal constant [28 x i8] c"men_z135_uart.import_ns=MCB\00", section ".modinfo", align 1
@men_z135_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013men_z135_uart:Failed to register UART: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"men_z135_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/tty/serial/men_z135_uart.c\00", [61 x i8] zeroinitializer }, align 32
@men_z135_init._entry_ptr = internal global ptr @men_z135_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"men_z135_uart\00", [18 x i8] zeroinitializer }, align 32
@men_z135_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013men_z135_uart:Failed to register MCB driver: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@men_z135_init._entry_ptr.6 = internal global ptr @men_z135_init._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"z135-uart\00", [22 x i8] zeroinitializer }, align 32
@men_z135_ids = internal constant { [2 x %struct.mcb_device_id], [16 x i8] } { [2 x %struct.mcb_device_id] [%struct.mcb_device_id { i16 135, i32 0 }, %struct.mcb_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@men_z135_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @men_z135_tx_empty, ptr @men_z135_set_mctrl, ptr @men_z135_get_mctrl, ptr @men_z135_stop_tx, ptr @men_z135_start_tx, ptr null, ptr null, ptr null, ptr @men_z135_stop_rx, ptr @men_z135_enable_ms, ptr null, ptr @men_z135_startup, ptr @men_z135_shutdown, ptr null, ptr @men_z135_set_termios, ptr null, ptr null, ptr @men_z135_type, ptr @men_z135_release_port, ptr @men_z135_request_port, ptr @men_z135_config_port, ptr @men_z135_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@line = internal global { i32, [28 x i8] } zeroinitializer, align 32
@men_z135_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&uart->lock\00", [20 x i8] zeroinitializer }, align 32
@men_z135_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 855, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to add UART: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"men_z135_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@men_z135_probe._entry_ptr = internal global ptr @men_z135_probe._entry, section ".printk_index", align 4
@men_z135_handle_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 331, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Not enough room in TX FIFO have %d, need %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"men_z135_handle_tx\00", [45 x i8] zeroinitializer }, align 32
@men_z135_handle_tx._entry_ptr = internal global ptr @men_z135_handle_tx._entry, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"men_z135_intr\00", [18 x i8] zeroinitializer }, align 32
@men_z135_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 445, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error %d getting interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"men_z135_request_irq\00", [43 x i8] zeroinitializer }, align 32
@men_z135_request_irq._entry_ptr = internal global ptr @men_z135_request_irq._entry, section ".printk_index", align 4
@men_z135_intr.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Character Timeout Indication\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@men_z135_handle_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 266, ptr @.str.21, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Not enough room in flip buffer, truncating to %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"men_z135_handle_rx\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@men_z135_handle_rx._entry_ptr = internal global ptr @men_z135_handle_rx._entry, section ".printk_index", align 4
@men_z135_handle_rx._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 280, ptr @.str.21, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Only copied %d instead of %d bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@men_z135_handle_rx._entry_ptr.24 = internal global ptr @men_z135_handle_rx._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyHSU\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"txlvl\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 102, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"rxlvl\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 106, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 110, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"rx_timeout\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 114, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"mcb_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 880, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"men_z135_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 792, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 902, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 906, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 908, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 882, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"men_z135_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 874, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"men_z135_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 774, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 100, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 845, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 855, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 329, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 443, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 445, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 409, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 264, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 278, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [38 x i8] c"../drivers/tty/serial/men_z135_uart.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 795, i32 14 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_align232, ptr @__UNIQUE_ID_aligntype231, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_import_ns244, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_rx_timeout234, ptr @__UNIQUE_ID_rx_timeouttype233, ptr @__UNIQUE_ID_rxlvl230, ptr @__UNIQUE_ID_rxlvltype229, ptr @__UNIQUE_ID_txlvl228, ptr @__UNIQUE_ID_txlvltype227, ptr @__exitcall_men_z135_exit, ptr @__initcall__kmod_men_z135_uart__238_915_men_z135_init6, ptr @__param_align, ptr @__param_rx_timeout, ptr @__param_rxlvl, ptr @__param_txlvl, ptr @men_z135_exit, ptr @men_z135_handle_rx._entry, ptr @men_z135_handle_rx._entry.22, ptr @men_z135_handle_rx._entry_ptr, ptr @men_z135_handle_rx._entry_ptr.24, ptr @men_z135_handle_tx._entry, ptr @men_z135_handle_tx._entry_ptr, ptr @men_z135_init._entry, ptr @men_z135_init._entry.4, ptr @men_z135_init._entry_ptr, ptr @men_z135_init._entry_ptr.6, ptr @men_z135_probe._entry, ptr @men_z135_probe._entry_ptr, ptr @men_z135_request_irq._entry, ptr @men_z135_request_irq._entry_ptr, ptr @txlvl, ptr @rxlvl, ptr @align, ptr @rx_timeout, ptr @mcb_driver, ptr @men_z135_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @men_z135_ids, ptr @men_z135_ops, ptr @line, ptr @men_z135_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txlvl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxlvl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @align to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_handle_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_handle_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z135_handle_rx._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z135_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @men_z135_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__mcb_register_driver(ptr noundef nonnull @mcb_driver, ptr noundef null, ptr noundef nonnull @.str.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @men_z135_driver) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mcb_unregister_driver(ptr noundef nonnull @mcb_driver) #6
  tail call void @uart_unregister_driver(ptr noundef nonnull @men_z135_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcb_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mcb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z135_probe(ptr noundef %mdev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdev, i32 noundef 424, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #6
  %0 = inttoptr i32 %call2 to ptr
  %rxbuf = getelementptr inbounds %struct.men_z135_port, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %rxbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %rxbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mem7 = getelementptr inbounds %struct.mcb_device, ptr %mdev, i32 0, i32 11
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %3 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 471859200, ptr %uartclk, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %4 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1024, ptr %fifosize, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %5 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %iotype, align 2
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @men_z135_ops, ptr %ops, align 4
  %call11 = tail call i32 @mcb_get_irq(ptr noundef %mdev) #6
  %irq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call11, ptr %irq, align 4
  %8 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %iotype, align 2
  %flags = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1879048192, ptr %flags, align 4
  %10 = load i32, ptr @line, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @line, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %11 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %line, align 4
  %dev18 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mdev, ptr %dev18, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 107, ptr %type, align 4
  %14 = ptrtoint ptr %mem7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem7, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %16 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mapbase, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %membase, align 4
  %mdev22 = getelementptr inbounds %struct.men_z135_port, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %mdev22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mdev, ptr %mdev22, align 4
  %lock = getelementptr inbounds %struct.men_z135_port, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @men_z135_probe.__key, i16 noundef signext 3) #6
  %call25 = tail call i32 @uart_add_one_port(ptr noundef nonnull @men_z135_driver, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end6.cleanup_crit_edge, label %err29

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err29:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxbuf, align 4
  %21 = ptrtoint ptr %20 to i32
  tail call void @free_pages(i32 noundef %21, i32 noundef 0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdev, ptr noundef nonnull @.str.9, i32 noundef %call25) #9
  br label %cleanup

cleanup:                                          ; preds = %err29, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %err29 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_remove(ptr nocapture noundef readonly %mdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @line, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @line, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @men_z135_driver, ptr noundef %1) #6
  %rxbuf = getelementptr inbounds %struct.men_z135_port, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rxbuf, align 4
  %5 = ptrtoint ptr %4 to i32
  tail call void @free_pages(i32 noundef %5, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcb_get_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z135_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2052
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %3 = and i32 %2, 65283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !117
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %and1 = and i32 %3, -520093697
  %and = shl i32 %mctrl, 23
  %and9 = shl i32 %mctrl, 13
  %4 = and i32 %and9, 67108864
  %5 = and i32 %and9, 134217728
  %6 = and i32 %and9, 268435456
  %conf_reg.0 = and i32 %and, 50331648
  %conf_reg.1 = or i32 %conf_reg.0, %4
  %conf_reg.2 = or i32 %conf_reg.1, %5
  %conf_reg.3 = or i32 %conf_reg.2, %6
  %conf_reg.4 = or i32 %conf_reg.3, %and1
  call void @__sanitizer_cov_trace_cmp4(i32 %conf_reg.4, i32 %3)
  %cmp.not = icmp eq i32 %conf_reg.4, %3
  br i1 %cmp.not, label %entry.if.end33_crit_edge, label %if.then30

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr32 = getelementptr i8, ptr %8, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %conf_reg.4) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %9) #6, !srcloc !120
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z135_get_mctrl(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #6, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %conv = zext i8 %2 to i32
  %and = shl nuw nsw i32 %conv, 1
  %3 = and i32 %and, 32
  %and3 = shl nuw nsw i32 %conv, 3
  %4 = and i32 %and3, 256
  %5 = or i32 %4, %3
  %6 = and i32 %and, 128
  %7 = or i32 %5, %6
  %and15 = lshr i32 %conv, 1
  %8 = and i32 %and15, 64
  %9 = or i32 %7, %8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_stop_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %3 = and i32 %2, -33554433
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #6, !srcloc !120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %automode = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %automode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %automode, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i.i = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 5
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #6
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2056
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %5 = and i32 %4, -134217729
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %7, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %5) #6, !srcloc !120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @men_z135_handle_tx(ptr noundef %port)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_stop_rx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #6, !srcloc !120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_enable_ms(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %3 = or i32 %2, 134217728
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #6, !srcloc !120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z135_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 4
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @men_z135_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.15, ptr noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %men_z135_request_irq.exit

men_z135_request_irq.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %call.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 2056
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %7 = and i32 %6, -218169089
  %8 = load i32, ptr @txlvl, align 4
  %shl = shl i32 %8, 16
  %9 = load i32, ptr @rxlvl, align 4
  %shl4 = shl i32 %9, 20
  %10 = or i32 %7, 218103808
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %or3 = or i32 %11, %shl
  %or5 = or i32 %or3, %shl4
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or5) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %14) #6, !srcloc !120
  %15 = load i32, ptr @rx_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 2068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %18) #6, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %men_z135_request_irq.exit
  %retval.0 = phi i32 [ -19, %men_z135_request_irq.exit ], [ 0, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %3 = and i32 %2, -251658241
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #6, !srcloc !120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %7, ptr noundef %port) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !117
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %shr = lshr i32 %3, 8
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %and2 = lshr i32 %5, 4
  %6 = and i32 %and2, 3
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb9
    i32 3, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %shr to i8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = trunc i32 %shr to i8
  %conv8 = or i8 %8, 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = trunc i32 %shr to i8
  %conv12 = or i8 %9, 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = trunc i32 %shr to i8
  %conv16 = or i8 %10, 3
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb
  %lcr.0 = phi i8 [ %conv16, %sw.bb13 ], [ %conv12, %sw.bb9 ], [ %conv8, %sw.bb5 ], [ %conv, %sw.bb ]
  %11 = trunc i32 %5 to i8
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 4
  %14 = or i8 %lcr.0, %13
  %and23 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %sw.epilog.if.end44_crit_edge, label %if.then25

sw.epilog.if.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then25:                                        ; preds = %sw.epilog
  %and30 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %15 = or i8 %14, 8
  br label %if.end44

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %16 = or i8 %14, 24
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then32, %sw.epilog.if.end44_crit_edge
  %lcr.2 = phi i8 [ %15, %if.then32 ], [ %16, %if.else ], [ %14, %sw.epilog.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool48.not = icmp sgt i32 %5, -1
  br i1 %tobool48.not, label %if.else53, label %if.then49

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %or50 = or i32 %3, 536870920
  %automode = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 6
  %17 = ptrtoint ptr %automode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %automode, align 4
  %18 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_cflag, align 4
  %and52 = and i32 %19, -2049
  store i32 %and52, ptr %c_cflag, align 4
  br label %if.end56

if.else53:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %or45 = and i32 %3, -536870921
  %and54 = or i32 %or45, 8
  %automode55 = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 6
  %20 = ptrtoint ptr %automode55 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %automode55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then49
  %conf_reg.0 = phi i32 [ %or50, %if.then49 ], [ %and54, %if.else53 ]
  %21 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_cflag, align 4
  %and58 = and i32 %22, -1073741825
  store i32 %and58, ptr %c_cflag, align 4
  %conv59 = zext i8 %lcr.2 to i32
  %shl = shl nuw nsw i32 %conv59, 8
  %or60 = or i32 %conf_reg.0, %shl
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr62 = getelementptr i8, ptr %24, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %or60) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %25) #6, !srcloc !120
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr64 = getelementptr i8, ptr %27, i32 2060
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #6, !srcloc !117
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp = icmp eq i32 %28, 0
  %spec.store.select = select i1 %cmp, i32 29491200, i32 %29
  %div117 = lshr i32 %spec.store.select, 4
  %call69 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div117) #6
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #6
  %call70 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end56.if.end73_crit_edge, label %if.then72

if.end56.if.end73_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then72:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call69, i32 noundef %call69) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end56.if.end73_crit_edge
  %mul = shl i32 %call69, 2
  %div74 = udiv i32 %spec.store.select, %mul
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr76 = getelementptr i8, ptr %31, i32 2064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %div74) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %32) #6, !srcloc !120
  %33 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %34, i32 noundef %call69) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %port) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @men_z135_type(ptr nocapture noundef readnone %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_release_port(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %1) #6
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %membase, align 4
  %mem = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  tail call void @mcb_release_mem(ptr noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z135_request_port(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @mcb_request_mem(ptr noundef %1, ptr noundef %retval.0.i) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call3, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %9 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mapbase, align 4
  %mem6 = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %mem6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %mem6, align 4
  %11 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %11
  %add.i = add i32 %sub.i, %13
  %call9 = tail call ptr @ioremap(i32 noundef %11, i32 noundef %add.i) #6
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %membase, align 4
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mcb_release_mem(ptr noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ -12, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z135_config_port(ptr nocapture noundef %port, i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 107, ptr %type1, align 4
  %mdev1.i = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev1.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.dev_name.exit.i_crit_edge

entry.dev_name.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %entry.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %entry.dev_name.exit.i_crit_edge ]
  %call3.i = tail call ptr @mcb_request_mem(ptr noundef %2, ptr noundef %retval.0.i.i) #6
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dev_name.exit.i.men_z135_request_port.exit_crit_edge, label %if.end.i

dev_name.exit.i.men_z135_request_port.exit_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %men_z135_request_port.exit

if.end.i:                                         ; preds = %dev_name.exit.i
  %7 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call3.i, align 4
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %9 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mapbase.i, align 4
  %mem6.i = getelementptr inbounds %struct.men_z135_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %mem6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3.i, ptr %mem6.i, align 4
  %11 = load i32, ptr %call3.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call3.i, i32 0, i32 1
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %11
  %add.i.i = add i32 %sub.i.i, %13
  %call9.i = tail call ptr @ioremap(i32 noundef %11, i32 noundef %add.i.i) #6
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %membase.i, align 4
  %cmp.i = icmp eq ptr %call9.i, null
  br i1 %cmp.i, label %if.then11.i, label %if.end.i.men_z135_request_port.exit_crit_edge

if.end.i.men_z135_request_port.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %men_z135_request_port.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mcb_release_mem(ptr noundef %call3.i) #6
  br label %men_z135_request_port.exit

men_z135_request_port.exit:                       ; preds = %if.then11.i, %if.end.i.men_z135_request_port.exit_crit_edge, %dev_name.exit.i.men_z135_request_port.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @men_z135_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readnone %serinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @men_z135_handle_tx(ptr noundef %uart) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %head3 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %head3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head3, align 4
  %tail4 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

if.end.uart_tx_stopped.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %if.end
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stopped.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %if.end.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 35
  %10 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i.not = icmp eq i32 %11, 0
  br i1 %tobool4.not.i.not, label %if.end6, label %uart_tx_stopped.exit.out_crit_edge

uart_tx_stopped.exit.out_crit_edge:               ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %uart_tx_stopped.exit
  %x_char = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 24
  %12 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9:                                          ; preds = %if.end6
  %sub = sub i32 %3, %5
  %and = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.end9.out_crit_edge, label %if.end14

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end9
  %membase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 2
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 2052
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !117
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %shr = lshr i32 %17, 16
  %and16 = and i32 %shr, 1023
  %18 = tail call i32 @llvm.usub.sat.i32(i32 1020, i32 %and16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %and16)
  %cmp22 = icmp ugt i32 %and16, 1019
  br i1 %cmp22, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %mdev = getelementptr inbounds %struct.men_z135_port, ptr %uart, i32 0, i32 1
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.13, i32 noundef %18, i32 noundef %and) #9
  br label %irq_en

if.end24:                                         ; preds = %if.end14
  %21 = load i32, ptr @align, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp26 = icmp ugt i32 %and, 2
  %or.cond = select i1 %tobool25.not, i1 %cmp26, i1 false
  br i1 %or.cond, label %land.lhs.true27, label %if.end24.if.else_crit_edge

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true27:                                  ; preds = %if.end24
  %and28 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.else_crit_edge, label %if.then30

land.lhs.true27.if.else_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  %sub32 = sub nuw nsw i32 4, %and28
  br label %if.end40

if.else:                                          ; preds = %land.lhs.true27.if.else_crit_edge, %if.end24.if.else_crit_edge
  %22 = tail call i32 @llvm.umin.i32(i32 %and, i32 %18)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then30
  %n.0 = phi i32 [ %sub32, %if.then30 ], [ %22, %if.else ]
  %23 = ptrtoint ptr %head3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %head3, align 4
  %and42 = and i32 %24, 4095
  %25 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tail4, align 4
  %and44 = and i32 %26, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %and44)
  %cmp45.not = icmp ult i32 %and42, %and44
  %spec.select = select i1 %cmp45.not, i32 4096, i32 %and42
  %sub46 = sub nsw i32 %spec.select, %and44
  %27 = tail call i32 @llvm.smin.i32(i32 %n.0, i32 %sub46)
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 4
  %add.ptr53 = getelementptr i8, ptr %29, i32 1024
  %30 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xmit2, align 4
  %arrayidx = getelementptr i8, ptr %31, i32 %26
  tail call void @mmiocpy(ptr noundef %add.ptr53, ptr noundef %arrayidx, i32 noundef %27) #6
  %32 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tail4, align 4
  %add = add i32 %27, %33
  %and56 = and i32 %add, 4095
  store i32 %and56, ptr %tail4, align 4
  %and58 = and i32 %27, 1023
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr60 = getelementptr i8, ptr %35, i32 2052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %and58) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %36) #6, !srcloc !120
  %tx = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 31, i32 5
  %37 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx, align 4
  %add61 = add i32 %38, %27
  store i32 %add61, ptr %tx, align 4
  %39 = ptrtoint ptr %head3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %head3, align 4
  %41 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tail4, align 4
  %sub64 = sub i32 %40, %42
  %and65 = and i32 %sub64, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %cmp66 = icmp eq i32 %and65, 0
  br i1 %cmp66, label %if.then67, label %if.end40.irq_en_crit_edge

if.end40.irq_en_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_en

if.then67:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @uart_write_wakeup(ptr noundef %uart) #6
  br label %irq_en

irq_en:                                           ; preds = %if.then67, %if.end40.irq_en_crit_edge, %do.end
  %43 = ptrtoint ptr %head3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %head3, align 4
  %45 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tail4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp71 = icmp eq i32 %44, %46
  %lock.i118 = getelementptr inbounds %struct.men_z135_port, ptr %uart, i32 0, i32 5
  %call3.i119 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i118) #6
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr.i121 = getelementptr i8, ptr %48, i32 2056
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %cmp71, label %if.else73, label %if.then72

if.then72:                                        ; preds = %irq_en
  call void @__sanitizer_cov_trace_pc() #8
  %50 = or i32 %49, 33554432
  %51 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase, align 4
  %add.ptr8.i = getelementptr i8, ptr %52, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %50) #6, !srcloc !120
  br label %out.sink.split

if.else73:                                        ; preds = %irq_en
  call void @__sanitizer_cov_trace_pc() #8
  %53 = and i32 %49, -33554433
  %54 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase, align 4
  %add.ptr8.i122 = getelementptr i8, ptr %55, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i122, i32 %53) #6, !srcloc !120
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else73, %if.then72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i118, i32 noundef %call3.i119) #6
  br label %out

out:                                              ; preds = %out.sink.split, %if.end9.out_crit_edge, %if.end6.out_crit_edge, %uart_tx_stopped.exit.out_crit_edge, %land.lhs.true.i.out_crit_edge, %entry.out_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z135_intr(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !117
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %stat_reg = getelementptr inbounds %struct.men_z135_port, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %stat_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %stat_reg, align 4
  %and = and i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %data) #6
  %conv = trunc i32 %and to i8
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %conv) #6, !srcloc !125
  %and5 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %7 = ptrtoint ptr %stat_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_reg, align 4
  %9 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then7.if.end.i_crit_edge, label %if.then.i

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 7
  %10 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %overrun.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %overrun.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then7.if.end.i_crit_edge
  %12 = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.i = icmp eq i32 %12, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then7.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 8
  %13 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %parity.i, align 4
  %inc9.i = add i32 %14, 1
  store i32 %inc9.i, ptr %parity.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %15 = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not.i = icmp eq i32 %15, 0
  br i1 %tobool13.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then14.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 6
  %16 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame.i, align 4
  %inc16.i = add i32 %17, 1
  store i32 %inc16.i, ptr %frame.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end10.i.if.end17.i_crit_edge
  %18 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not.i = icmp eq i32 %18, 0
  br i1 %tobool20.not.i, label %if.end17.i.if.end8_crit_edge, label %if.then21.i

if.end17.i.if.end8_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then21.i:                                      ; preds = %if.end17.i
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 9
  %19 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brk.i, align 4
  %inc23.i = add i32 %20, 1
  store i32 %inc23.i, ptr %brk.i, align 4
  %state1.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %21 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state1.i.i, align 4
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 17
  %23 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then21.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then21.i.if.end.i.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %24(ptr noundef %data) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then21.i.if.end.i.i_crit_edge
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 48
  %25 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool3.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 32
  %27 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %28, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %30 to i32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 41
  %31 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %32, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 46
  %33 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool10.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %35, 500
  %36 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  br label %if.end8

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 33
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end8_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end8_crit_edge:                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %22, i32 0, i32 1
  %40 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %41) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then17.i.i, %if.end15.i.i.if.end8_crit_edge, %if.then11.i.i, %if.end17.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %and9 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end22_crit_edge, label %if.then11

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then11:                                        ; preds = %if.end8
  %and12 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then11.if.end21_crit_edge, label %do.body

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @men_z135_intr.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@men_z135_intr, %if.then19)) #6
          to label %if.end21 [label %if.then19], !srcloc !126

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %mdev = getelementptr inbounds %struct.men_z135_port, ptr %data, i32 0, i32 1
  %42 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @men_z135_intr.__UNIQUE_ID_ddebug237, ptr noundef %43, ptr noundef nonnull @.str.18) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body, %if.then11.if.end21_crit_edge
  %state.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state.i, align 4
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !117
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %shr.i.i = lshr i32 %49, 24
  %50 = shl i32 %49, 2
  %shl.i.i = and i32 %50, 768
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  %conv6.i.i = trunc i32 %or.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6.i.i)
  %cmp.i = icmp eq i16 %conv6.i.i, 0
  br i1 %cmp.i, label %if.end21.if.end22_crit_edge, label %if.end.i50

if.end21.if.end22_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end.i50:                                       ; preds = %if.end21
  %51 = tail call i16 @llvm.umin.i16(i16 %conv6.i.i, i16 1020) #6
  %conv9.i = zext i16 %51 to i32
  %call10.i = tail call i32 @tty_buffer_request_room(ptr noundef %45, i32 noundef %conv9.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %conv9.i)
  %cmp12.not.i = icmp eq i32 %call10.i, %conv9.i
  br i1 %cmp12.not.i, label %if.end.i50.if.end15.i_crit_edge, label %do.end.i

if.end.i50.if.end15.i_crit_edge:                  ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

do.end.i:                                         ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  %mdev.i = getelementptr inbounds %struct.men_z135_port, ptr %data, i32 0, i32 1
  %52 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.19, i32 noundef %call10.i) #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.end.i50.if.end15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp16.i = icmp eq i32 %call10.i, 0
  br i1 %cmp16.i, label %if.end15.i.if.end22_crit_edge, label %if.end19.i

if.end15.i.if.end22_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end19.i:                                       ; preds = %if.end15.i
  %rxbuf.i = getelementptr inbounds %struct.men_z135_port, ptr %data, i32 0, i32 3
  %54 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rxbuf.i, align 4
  %56 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %57, i32 4
  tail call void @mmiocpy(ptr noundef %55, ptr noundef %add.ptr.i, i32 noundef %call10.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase, align 4
  %add.ptr24.i = getelementptr i8, ptr %59, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %call10.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %60) #6, !srcloc !120
  %61 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rxbuf.i, align 4
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %45, ptr noundef %62, i8 noundef zeroext 0, i32 noundef %call10.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %call10.i)
  %cmp27.not.i = icmp eq i32 %call.i.i, %call10.i
  br i1 %cmp27.not.i, label %if.end19.i.if.end35.i_crit_edge, label %do.end32.i

if.end19.i.if.end35.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

do.end32.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %mdev33.i = getelementptr inbounds %struct.men_z135_port, ptr %data, i32 0, i32 1
  %63 = ptrtoint ptr %mdev33.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev33.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.23, i32 noundef %call.i.i, i32 noundef %call10.i) #9
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end32.i, %if.end19.i.if.end35.i_crit_edge
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 31, i32 4
  %65 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx.i, align 4
  %add.i = add i32 %66, %call.i.i
  store i32 %add.i, ptr %rx.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %45) #6
  br label %if.end22

if.end22:                                         ; preds = %if.end35.i, %if.end15.i.if.end22_crit_edge, %if.end21.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %handled.1 = phi i1 [ %tobool6, %if.end8.if.end22_crit_edge ], [ true, %if.end21.if.end22_crit_edge ], [ true, %if.end15.i.if.end22_crit_edge ], [ true, %if.end35.i ]
  %and23 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @men_z135_handle_tx(ptr noundef %data)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %handled.2 = phi i1 [ true, %if.then25 ], [ %handled.1, %if.end22.if.end26_crit_edge ]
  %and27 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  %67 = ptrtoint ptr %stat_reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %stat_reg, align 4
  %shr.i = lshr i32 %68, 8
  %69 = and i32 %68, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i52 = icmp eq i32 %69, 0
  br i1 %tobool.not.i52, label %if.then29.if.end.i54_crit_edge, label %if.then.i53

if.then29.if.end.i54_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i54

if.then.i53:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %and4.i = and i32 %shr.i, 128
  tail call void @uart_handle_dcd_change(ptr noundef %data, i32 noundef %and4.i) #6
  br label %if.end.i54

if.end.i54:                                       ; preds = %if.then.i53, %if.then29.if.end.i54_crit_edge
  %70 = and i32 %68, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool7.not.i = icmp eq i32 %70, 0
  br i1 %tobool7.not.i, label %if.end.i54.if.end30_crit_edge, label %if.then8.i

if.end.i54.if.end30_crit_edge:                    ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then8.i:                                       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  %and11.i = and i32 %shr.i, 16
  tail call void @uart_handle_cts_change(ptr noundef %data, i32 noundef %and11.i) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then8.i, %if.end.i54.if.end30_crit_edge, %if.end26.if.end30_crit_edge
  %handled.3 = phi i1 [ %handled.2, %if.end26.if.end30_crit_edge ], [ true, %if.end.i54.if.end30_crit_edge ], [ true, %if.then8.i ]
  tail call void @_raw_spin_unlock(ptr noundef %data) #6
  br label %out

out:                                              ; preds = %if.end30, %entry.out_crit_edge
  %handled.4.off0 = phi i1 [ %handled.3, %if.end30 ], [ false, %entry.out_crit_edge ]
  %cond = zext i1 %handled.4.off0 to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcb_release_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mcb_request_mem(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !52, !53, !55, !57, !58, !59, !61, !63, !65, !67, !68, !70, !71, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__param_txlvl, !1, !"__param_txlvl", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 103, i32 1}
!2 = !{ptr @__UNIQUE_ID_txlvltype227, !1, !"__UNIQUE_ID_txlvltype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_txlvl228, !4, !"__UNIQUE_ID_txlvl228", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 104, i32 1}
!5 = !{ptr @__param_rxlvl, !6, !"__param_rxlvl", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 107, i32 1}
!7 = !{ptr @__UNIQUE_ID_rxlvltype229, !6, !"__UNIQUE_ID_rxlvltype229", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_rxlvl230, !9, !"__UNIQUE_ID_rxlvl230", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 108, i32 1}
!10 = !{ptr @__param_align, !11, !"__param_align", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 111, i32 1}
!12 = !{ptr @__UNIQUE_ID_aligntype231, !11, !"__UNIQUE_ID_aligntype231", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_align232, !14, !"__UNIQUE_ID_align232", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 112, i32 1}
!15 = !{ptr @__param_rx_timeout, !16, !"__param_rx_timeout", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 115, i32 1}
!17 = !{ptr @__UNIQUE_ID_rx_timeouttype233, !16, !"__UNIQUE_ID_rx_timeouttype233", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_rx_timeout234, !19, !"__UNIQUE_ID_rx_timeout234", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 116, i32 1}
!20 = !{ptr @__initcall__kmod_men_z135_uart__238_915_men_z135_init6, !21, !"__initcall__kmod_men_z135_uart__238_915_men_z135_init6", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 915, i32 1}
!22 = !{ptr @__exitcall_men_z135_exit, !23, !"__exitcall_men_z135_exit", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 927, i32 1}
!24 = !{ptr @__UNIQUE_ID_author239, !25, !"__UNIQUE_ID_author239", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 929, i32 1}
!26 = !{ptr @__UNIQUE_ID_file240, !27, !"__UNIQUE_ID_file240", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 930, i32 1}
!28 = !{ptr @__UNIQUE_ID_license241, !27, !"__UNIQUE_ID_license241", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_description242, !30, !"__UNIQUE_ID_description242", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 931, i32 1}
!31 = !{ptr @__UNIQUE_ID_alias243, !32, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 932, i32 1}
!33 = !{ptr @__UNIQUE_ID_import_ns244, !34, !"__UNIQUE_ID_import_ns244", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 933, i32 1}
!35 = !{ptr @align, !36, !"align", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 110, i32 12}
!37 = !{ptr @rx_timeout, !38, !"rx_timeout", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 114, i32 13}
!39 = !{ptr @__param_str_txlvl, !1, !"__param_str_txlvl", i1 false, i1 false}
!40 = !{ptr @txlvl, !41, !"txlvl", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 102, i32 12}
!42 = !{ptr @__param_str_rxlvl, !6, !"__param_str_rxlvl", i1 false, i1 false}
!43 = !{ptr @rxlvl, !44, !"rxlvl", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 106, i32 12}
!45 = !{ptr @__param_str_align, !11, !"__param_str_align", i1 false, i1 false}
!46 = !{ptr @__param_str_rx_timeout, !16, !"__param_str_rx_timeout", i1 false, i1 false}
!47 = !{ptr @.str, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 902, i32 3}
!49 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @men_z135_init._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @men_z135_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 906, i32 8}
!55 = !{ptr @.str.5, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 908, i32 3}
!57 = !{ptr @men_z135_init._entry.4, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @men_z135_init._entry_ptr.6, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 882, i32 11}
!61 = !{ptr @mcb_driver, !62, !"mcb_driver", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 880, i32 26}
!63 = !{ptr @men_z135_ids, !64, !"men_z135_ids", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 874, i32 35}
!65 = !{ptr @men_z135_probe.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 845, i32 2}
!67 = !{ptr @.str.8, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.9, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 855, i32 2}
!70 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.11, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @men_z135_probe._entry, !69, !"_entry", i1 false, i1 false}
!74 = !{ptr @men_z135_probe._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @men_z135_ops, !76, !"men_z135_ops", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 774, i32 30}
!77 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 329, i32 3}
!79 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @men_z135_handle_tx._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @men_z135_handle_tx._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 443, i32 4}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 445, i32 3}
!86 = !{ptr @.str.17, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @men_z135_request_irq._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @men_z135_request_irq._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.18, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 409, i32 4}
!91 = !{ptr @men_z135_intr.__UNIQUE_ID_ddebug237, !90, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 264, i32 3}
!94 = !{ptr @.str.20, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.21, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @men_z135_handle_rx._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @men_z135_handle_rx._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.23, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 278, i32 3}
!100 = !{ptr @men_z135_handle_rx._entry.22, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @men_z135_handle_rx._entry_ptr.24, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @line, !103, !"line", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 100, i32 12}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 795, i32 14}
!106 = !{ptr @men_z135_driver, !107, !"men_z135_driver", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/men_z135_uart.c", i32 792, i32 27}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 4636317}
!118 = !{i64 2152176666}
!119 = !{i64 2152178021}
!120 = !{i64 4635899}
!121 = !{i64 4636097}
!122 = !{i64 2152175442}
!123 = !{i8 0, i8 2}
!124 = !{i64 2152177047}
!125 = !{i64 4635702}
!126 = !{i64 2148711522, i64 2148711527, i64 2148711540, i64 2148711584, i64 2148711618, i64 2148711639}
!127 = !{i64 2154032929}
