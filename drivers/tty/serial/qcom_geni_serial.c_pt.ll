; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/qcom_geni_serial.c_pt.bc'
source_filename = "../drivers/tty/serial/qcom_geni_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.qcom_geni_private_data = type { ptr, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qcom_geni_serial_port = type { %struct.uart_port, %struct.geni_se, ptr, i32, i32, i32, i8, ptr, i32, ptr, i32, i8, i32, i32, i8, i8, %struct.qcom_geni_private_data }
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
%struct.geni_se = type { ptr, ptr, ptr, ptr, i32, ptr, [3 x %struct.geni_icc_path] }
%struct.geni_icc_path = type { ptr, i32 }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }

@__UNIQUE_ID___earlycon_qcom_geni236 = internal constant %struct.earlycon_id { [15 x i8] c"qcom_geni\00\00\00\00\00\00", i8 0, [128 x i8] c"qcom,geni-debug-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcom_geni_serial_earlycon_setup }, section "__earlycon_table", align 4
@__initcall__kmod_qcom_geni_serial__237_1553_qcom_geni_serial_init6 = internal global ptr @qcom_geni_serial_init, section ".initcall6.init", align 4
@qcom_geni_serial_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_geni_serial_probe, ptr @qcom_geni_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_geni_serial_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_geni_serial_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@qcom_geni_console_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.31, ptr @.str.32, i32 0, i32 0, i32 1, ptr @cons_ops, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@qcom_geni_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.35, ptr @.str.36, i32 0, i32 0, i32 3, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_qcom_geni_serial_exit = internal global ptr @qcom_geni_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [68 x i8] c"qcom_geni_serial.description=Serial driver for GENI based QUP cores\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [58 x i8] c"qcom_geni_serial.file=drivers/tty/serial/qcom_geni_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [32 x i8] c"qcom_geni_serial.license=GPL v2\00", section ".modinfo", align 1
@earlycon_private_data = internal global { %struct.qcom_geni_private_data, [44 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom_geni_serial\00", [47 x i8] zeroinitializer }, align 32
@qcom_geni_serial_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,geni-debug-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,geni-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@qcom_geni_serial_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qcom_geni_serial_sys_suspend, ptr @qcom_geni_serial_sys_resume, ptr @qcom_geni_serial_sys_suspend, ptr @qcom_geni_serial_sys_resume, ptr @qcom_geni_serial_sys_suspend, ptr @qcom_geni_serial_sys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,geni-debug-uart\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hsuart\00", [25 x i8] zeroinitializer }, align 32
@qcom_geni_serial_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1350, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid line %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_geni_serial_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/tty/serial/qcom_geni_serial.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_geni_serial_probe._entry_ptr = internal global ptr @qcom_geni_serial_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"se\00", [29 x i8] zeroinitializer }, align 32
@qcom_geni_serial_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1365, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Err getting SE Core clk %d\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_geni_serial_probe._entry_ptr.12 = internal global ptr @qcom_geni_serial_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_geni_serial_%s%d\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"console\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx-tx-swap\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cts-rts-swap\00", [19 x i8] zeroinitializer }, align 32
@qcom_geni_serial_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1423, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid OPP table in device tree\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_geni_serial_probe._entry_ptr.20 = internal global ptr @qcom_geni_serial_probe._entry.18, section ".printk_index", align 4
@qcom_geni_serial_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 1440, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get IRQ ret %d\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_geni_serial_probe._entry_ptr.23 = internal global ptr @qcom_geni_serial_probe._entry.21, section ".printk_index", align 4
@qcom_geni_console_port = internal global { %struct.qcom_geni_serial_port, [96 x i8] } { %struct.qcom_geni_serial_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @qcom_geni_console_pops, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, %struct.geni_se zeroinitializer, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 0, ptr null, i32 0, i8 0, i32 0, i32 0, i8 0, i8 0, %struct.qcom_geni_private_data zeroinitializer }, [96 x i8] zeroinitializer }, align 32
@qcom_geni_uart_ports = internal global { [3 x %struct.qcom_geni_serial_port], [352 x i8] } { [3 x %struct.qcom_geni_serial_port] [%struct.qcom_geni_serial_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @qcom_geni_uart_pops, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, %struct.geni_se zeroinitializer, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 0, ptr null, i32 0, i8 0, i32 0, i32 0, i8 0, i8 0, %struct.qcom_geni_private_data zeroinitializer }, %struct.qcom_geni_serial_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @qcom_geni_uart_pops, i32 0, i32 1, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, %struct.geni_se zeroinitializer, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 0, ptr null, i32 0, i8 0, i32 0, i32 0, i8 0, i8 0, %struct.qcom_geni_private_data zeroinitializer }, %struct.qcom_geni_serial_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @qcom_geni_uart_pops, i32 0, i32 2, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, %struct.geni_se zeroinitializer, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 0, ptr null, i32 0, i8 0, i32 0, i32 0, i8 0, i8 0, %struct.qcom_geni_private_data zeroinitializer }], [352 x i8] zeroinitializer }, align 32
@qcom_geni_console_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @qcom_geni_serial_tx_empty, ptr @qcom_geni_serial_set_mctrl, ptr @qcom_geni_serial_get_mctrl, ptr @qcom_geni_serial_stop_tx, ptr @qcom_geni_serial_start_tx, ptr null, ptr null, ptr null, ptr @qcom_geni_serial_stop_rx, ptr null, ptr null, ptr @qcom_geni_serial_startup, ptr @qcom_geni_serial_shutdown, ptr null, ptr @qcom_geni_serial_set_termios, ptr null, ptr @qcom_geni_serial_pm, ptr @qcom_geni_serial_get_type, ptr null, ptr @qcom_geni_serial_request_port, ptr @qcom_geni_serial_config_port, ptr null, ptr null, ptr null, ptr @qcom_geni_serial_poll_put_char, ptr @qcom_geni_serial_get_char }, [56 x i8] zeroinitializer }, align 32
@qcom_geni_serial_port_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 896, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid FW loaded, proto: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom_geni_serial_port_setup\00", [36 x i8] zeroinitializer }, align 32
@qcom_geni_serial_port_setup._entry_ptr = internal global ptr @qcom_geni_serial_port_setup._entry, section ".printk_index", align 4
@get_clk_div_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: Can't find matching DFS entry for baud %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_clk_div_rate\00", [47 x i8] zeroinitializer }, align 32
@get_clk_div_rate._entry_ptr = internal global ptr @get_clk_div_rate._entry, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSM\00", [28 x i8] zeroinitializer }, align 32
@qcom_geni_uart_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @qcom_geni_serial_tx_empty, ptr @qcom_geni_serial_set_mctrl, ptr @qcom_geni_serial_get_mctrl, ptr @qcom_geni_serial_stop_tx, ptr @qcom_geni_serial_start_tx, ptr null, ptr null, ptr null, ptr @qcom_geni_serial_stop_rx, ptr null, ptr null, ptr @qcom_geni_serial_startup, ptr @qcom_geni_serial_shutdown, ptr null, ptr @qcom_geni_serial_set_termios, ptr null, ptr @qcom_geni_serial_pm, ptr @qcom_geni_serial_get_type, ptr null, ptr @qcom_geni_serial_request_port, ptr @qcom_geni_serial_config_port, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@handle_rx_uart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 587, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:Unable to push data ret %d_bytes %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_rx_uart\00", [17 x i8] zeroinitializer }, align 32
@handle_rx_uart._entry_ptr = internal global ptr @handle_rx_uart._entry, section ".printk_index", align 4
@handle_rx_uart.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_geni_console\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyMSM\00", [25 x i8] zeroinitializer }, align 32
@cons_ops = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyMSM\00\00\00\00\00\00\00\00\00\00", ptr @qcom_geni_serial_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @qcom_geni_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @qcom_geni_console_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@qcom_geni_console_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013Invalid line %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_geni_console_setup\00", [40 x i8] zeroinitializer }, align 32
@qcom_geni_console_setup._entry_ptr = internal global ptr @qcom_geni_console_setup._entry, section ".printk_index", align 4
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_geni_uart\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyHS\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.38 = private unnamed_addr constant [33 x i8] c"qcom_geni_serial_platform_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1522, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"qcom_geni_console_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1244, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"qcom_geni_uart_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1262, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"earlycon_private_data\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1166, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1526, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [29 x i8] c"qcom_geni_serial_match_table\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1515, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"qcom_geni_serial_pm_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1510, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1335, i32 49 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1340, i32 45 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1345, i32 46 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1350, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1362, i32 42 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1365, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1397, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1398, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1398, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1411, i32 47 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1414, i32 47 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1423, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1440, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"qcom_geni_console_port\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 188, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"qcom_geni_uart_ports\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 161, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"qcom_geni_console_pops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1288, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 896, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 969, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 252, i32 9 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"qcom_geni_uart_pops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1308, i32 30 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 586, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1246, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1247, i32 14 }
@___asan_gen_.170 = private unnamed_addr constant [9 x i8] c"cons_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1234, i32 23 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1107, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1264, i32 17 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [41 x i8] c"../drivers/tty/serial/qcom_geni_serial.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1265, i32 14 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID___earlycon_qcom_geni236, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_qcom_geni_serial_exit, ptr @__initcall__kmod_qcom_geni_serial__237_1553_qcom_geni_serial_init6, ptr @get_clk_div_rate._entry, ptr @get_clk_div_rate._entry_ptr, ptr @handle_rx_uart._entry, ptr @handle_rx_uart._entry_ptr, ptr @qcom_geni_console_setup._entry, ptr @qcom_geni_console_setup._entry_ptr, ptr @qcom_geni_serial_exit, ptr @qcom_geni_serial_port_setup._entry, ptr @qcom_geni_serial_port_setup._entry_ptr, ptr @qcom_geni_serial_probe._entry, ptr @qcom_geni_serial_probe._entry.10, ptr @qcom_geni_serial_probe._entry.18, ptr @qcom_geni_serial_probe._entry.21, ptr @qcom_geni_serial_probe._entry_ptr, ptr @qcom_geni_serial_probe._entry_ptr.12, ptr @qcom_geni_serial_probe._entry_ptr.20, ptr @qcom_geni_serial_probe._entry_ptr.23, ptr @qcom_geni_serial_platform_driver, ptr @qcom_geni_console_driver, ptr @qcom_geni_uart_driver, ptr @earlycon_private_data, ptr @.str, ptr @qcom_geni_serial_match_table, ptr @qcom_geni_serial_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @qcom_geni_console_port, ptr @qcom_geni_uart_ports, ptr @qcom_geni_console_pops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @qcom_geni_uart_pops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @cons_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_serial_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_console_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earlycon_private_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_serial_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_serial_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_serial_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_serial_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_serial_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_serial_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_console_port to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_uart_ports to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_console_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_serial_port_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_clk_div_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_uart_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_rx_uart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cons_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_geni_console_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_earlycon_setup(ptr nocapture noundef %dev, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  %se = alloca %struct.geni_se, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %se) #7
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @earlycon_private_data, ptr %private_data, align 4
  %3 = getelementptr inbounds i8, ptr %se, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 44)
  %5 = ptrtoint ptr %se to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %se, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !116
  %7 = and i32 %6, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %7)
  %cmp.not = icmp eq i32 %7, 131072
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @qcom_geni_serial_poll_tx_done(ptr noundef %port)
  tail call fastcc void @qcom_geni_serial_abort_rx(ptr noundef %port)
  call void @geni_se_config_packing(ptr noundef nonnull %se, i32 noundef 8, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  call void @geni_se_init(ptr noundef nonnull %se, i32 noundef 8, i32 noundef 14) #7
  call void @geni_se_select_mode(ptr noundef nonnull %se, i32 noundef 1) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 676
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #7, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 640
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #7, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #7, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 134217728) #7, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr29 = getelementptr i8, ptr %19, i32 652
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 134217728) #7, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr34 = getelementptr i8, ptr %21, i32 620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #7, !srcloc !118
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %write = getelementptr inbounds %struct.console, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @qcom_geni_serial_earlycon_write, ptr %write, align 4
  %25 = load ptr, ptr %dev, align 4
  %setup = getelementptr inbounds %struct.console, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %setup, align 4
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %se, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 1584
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %se, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %32, i32 1584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 8) #7, !srcloc !118
  %read.i = getelementptr inbounds %struct.console, ptr %27, i32 0, i32 2
  %33 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @qcom_geni_serial_earlycon_read, ptr %read.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %se) #7
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @uart_register_driver(ptr noundef nonnull @qcom_geni_console_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @uart_register_driver(ptr noundef nonnull @qcom_geni_uart_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_geni_serial_platform_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @qcom_geni_console_driver) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %if.end.cleanup.sink.split_crit_edge
  %qcom_geni_uart_driver.sink = phi ptr [ @qcom_geni_uart_driver, %if.then7 ], [ @qcom_geni_console_driver, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call5, %if.then7 ], [ %call1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @uart_unregister_driver(ptr noundef nonnull %qcom_geni_uart_driver.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_geni_serial_platform_driver) #7
  tail call void @uart_unregister_driver(ptr noundef nonnull @qcom_geni_console_driver) #7
  tail call void @uart_unregister_driver(ptr noundef nonnull @qcom_geni_uart_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_geni_serial_poll_tx_done(ptr nocapture noundef readonly %uport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data1.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 59
  %0 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.while.body.lr.ph.i_crit_edge, label %if.end6.i

entry.while.body.lr.ph.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

if.end6.i:                                        ; preds = %entry
  %baud2.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 8
  %4 = ptrtoint ptr %baud2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baud2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 115200, i32 %5
  %tx_fifo_depth.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 3
  %6 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_fifo_depth.i, align 4
  %tx_fifo_width.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  %8 = ptrtoint ptr %tx_fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_fifo_width.i, align 4
  %mul.i = mul i32 %7, 1000000
  %mul5.i = mul i32 %mul.i, %9
  %div.i = udiv i32 %mul5.i, %spec.store.select.i
  %phi.bo33.i = add i32 %div.i, 509
  %10 = urem i32 %phi.bo33.i, 10
  %phi.bo34.i = sub i32 %phi.bo33.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i)
  %tobool10.not35.i = icmp eq i32 %phi.bo34.i, 0
  br i1 %tobool10.not35.i, label %if.end6.i.do.body_crit_edge, label %if.end6.i.while.body.lr.ph.i_crit_edge

if.end6.i.while.body.lr.ph.i_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

if.end6.i.do.body_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

while.body.lr.ph.i:                               ; preds = %if.end6.i.while.body.lr.ph.i_crit_edge, %entry.while.body.lr.ph.i_crit_edge
  %timeout_us.041.i = phi i32 [ %phi.bo34.i, %if.end6.i.while.body.lr.ph.i_crit_edge ], [ 20000, %entry.while.body.lr.ph.i_crit_edge ]
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %timeout_us.136.i = phi i32 [ %timeout_us.041.i, %while.body.lr.ph.i ], [ %sub20.i, %if.end19.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %12, i32 1552
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.i.not = icmp eq i32 %14, 0
  br i1 %tobool14.i.not, label %if.end19.i, label %while.body.i.do.body2_crit_edge

while.body.i.do.body2_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

if.end19.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #7
  %sub20.i = add i32 %timeout_us.136.i, -10
  %tobool10.not.i = icmp eq i32 %sub20.i, 0
  br i1 %tobool10.not.i, label %if.end19.i.do.body_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end19.i.do.body_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end19.i.do.body_crit_edge, %if.end6.i.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !118
  %18 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data1.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i12 = icmp eq ptr %21, null
  br i1 %tobool.not.i12, label %do.body.while.body.i33.preheader_crit_edge, label %if.end6.i24

do.body.while.body.i33.preheader_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i33.preheader

if.end6.i24:                                      ; preds = %do.body
  %baud2.i13 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 8
  %22 = ptrtoint ptr %baud2.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %baud2.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i14 = icmp eq i32 %23, 0
  %spec.store.select.i15 = select i1 %tobool3.not.i14, i32 115200, i32 %23
  %tx_fifo_depth.i16 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 3
  %24 = ptrtoint ptr %tx_fifo_depth.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_fifo_depth.i16, align 4
  %tx_fifo_width.i17 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  %26 = ptrtoint ptr %tx_fifo_width.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_fifo_width.i17, align 4
  %mul.i18 = mul i32 %25, 1000000
  %mul5.i19 = mul i32 %mul.i18, %27
  %div.i20 = udiv i32 %mul5.i19, %spec.store.select.i15
  %phi.bo33.i21 = add i32 %div.i20, 509
  %28 = urem i32 %phi.bo33.i21, 10
  %phi.bo34.i22 = sub i32 %phi.bo33.i21, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i22)
  %tobool10.not35.i23 = icmp eq i32 %phi.bo34.i22, 0
  br i1 %tobool10.not35.i23, label %if.end6.i24.do.body2_crit_edge, label %if.end6.i24.while.body.i33.preheader_crit_edge

if.end6.i24.while.body.i33.preheader_crit_edge:   ; preds = %if.end6.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i33.preheader

if.end6.i24.do.body2_crit_edge:                   ; preds = %if.end6.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

while.body.i33.preheader:                         ; preds = %if.end6.i24.while.body.i33.preheader_crit_edge, %do.body.while.body.i33.preheader_crit_edge
  %timeout_us.136.i28.ph = phi i32 [ 20000, %do.body.while.body.i33.preheader_crit_edge ], [ %phi.bo34.i22, %if.end6.i24.while.body.i33.preheader_crit_edge ]
  br label %while.body.i33

while.body.i33:                                   ; preds = %if.end19.i36.while.body.i33_crit_edge, %while.body.i33.preheader
  %timeout_us.136.i28 = phi i32 [ %sub20.i34, %if.end19.i36.while.body.i33_crit_edge ], [ %timeout_us.136.i28.ph, %while.body.i33.preheader ]
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr11.i29 = getelementptr i8, ptr %30, i32 1552
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i29) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %32 = and i32 %31, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool14.i31.not = icmp eq i32 %32, 0
  br i1 %tobool14.i31.not, label %if.end19.i36, label %while.body.i33.do.body2_crit_edge

while.body.i33.do.body2_crit_edge:                ; preds = %while.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

if.end19.i36:                                     ; preds = %while.body.i33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #7
  %sub20.i34 = add i32 %timeout_us.136.i28, -10
  %tobool10.not.i35 = icmp eq i32 %sub20.i34, 0
  br i1 %tobool10.not.i35, label %if.end19.i36.do.body2_crit_edge, label %if.end19.i36.while.body.i33_crit_edge

if.end19.i36.while.body.i33_crit_edge:            ; preds = %if.end19.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i33

if.end19.i36.do.body2_crit_edge:                  ; preds = %if.end19.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2:                                         ; preds = %if.end19.i36.do.body2_crit_edge, %while.body.i33.do.body2_crit_edge, %if.end6.i24.do.body2_crit_edge, %while.body.i.do.body2_crit_edge
  %irq_clear.0 = phi i32 [ 553648128, %if.end6.i24.do.body2_crit_edge ], [ 553648128, %while.body.i33.do.body2_crit_edge ], [ 553648128, %if.end19.i36.do.body2_crit_edge ], [ 16777216, %while.body.i.do.body2_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %membase5 = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %34 = ptrtoint ptr %membase5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase5, align 4
  %add.ptr6 = getelementptr i8, ptr %35, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %irq_clear.0) #7, !srcloc !118
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_geni_serial_abort_rx(ptr nocapture noundef readonly %uport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !118
  %private_data1.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 59
  %2 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.while.body.i.preheader_crit_edge, label %if.end6.i

entry.while.body.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i:                                        ; preds = %entry
  %baud2.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 8
  %6 = ptrtoint ptr %baud2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 115200, i32 %7
  %tx_fifo_depth.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 3
  %8 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_fifo_depth.i, align 4
  %tx_fifo_width.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  %10 = ptrtoint ptr %tx_fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_fifo_width.i, align 4
  %mul.i = mul i32 %9, 1000000
  %mul5.i = mul i32 %mul.i, %11
  %div.i = udiv i32 %mul5.i, %spec.store.select.i
  %phi.bo33.i = add i32 %div.i, 509
  %12 = urem i32 %phi.bo33.i, 10
  %phi.bo34.i = sub i32 %phi.bo33.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i)
  %tobool10.not35.i = icmp eq i32 %phi.bo34.i, 0
  br i1 %tobool10.not35.i, label %if.end6.i.qcom_geni_serial_poll_bit.exit_crit_edge, label %if.end6.i.while.body.i.preheader_crit_edge

if.end6.i.while.body.i.preheader_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i.qcom_geni_serial_poll_bit.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit

while.body.i.preheader:                           ; preds = %if.end6.i.while.body.i.preheader_crit_edge, %entry.while.body.i.preheader_crit_edge
  %timeout_us.136.i.ph = phi i32 [ 20000, %entry.while.body.i.preheader_crit_edge ], [ %phi.bo34.i, %if.end6.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.i.preheader
  %timeout_us.136.i = phi i32 [ %sub20.i, %if.end19.i.while.body.i_crit_edge ], [ %timeout_us.136.i.ph, %while.body.i.preheader ]
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr11.i = getelementptr i8, ptr %14, i32 1588
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %16 = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.i = icmp eq i32 %16, 0
  br i1 %tobool14.i, label %while.body.i.qcom_geni_serial_poll_bit.exit_crit_edge, label %if.end19.i

while.body.i.qcom_geni_serial_poll_bit.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit

if.end19.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #7
  %sub20.i = add i32 %timeout_us.136.i, -10
  %tobool10.not.i = icmp eq i32 %sub20.i, 0
  br i1 %tobool10.not.i, label %if.end19.i.qcom_geni_serial_poll_bit.exit_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end19.i.qcom_geni_serial_poll_bit.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit

qcom_geni_serial_poll_bit.exit:                   ; preds = %if.end19.i.qcom_geni_serial_poll_bit.exit_crit_edge, %while.body.i.qcom_geni_serial_poll_bit.exit_crit_edge, %if.end6.i.qcom_geni_serial_poll_bit.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %19, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 553648128) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #7, !srcloc !118
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_config_packing(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_select_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_earlycon_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call fastcc void @__qcom_geni_serial_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qcom_geni_serial_console_write(ptr noundef %uport, ptr noundef %s, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data1 = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 59
  %0 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp63.not = icmp eq i32 %count, 0
  br i1 %cmp63.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %bytes_to_send.065 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ %count, %entry.for.body_crit_edge ]
  %i.064 = phi i32 [ %inc4, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %s, i32 %i.064
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp2 = icmp eq i8 %3, 10
  %inc = zext i1 %cmp2 to i32
  %spec.select = add i32 %bytes_to_send.065, %inc
  %inc4 = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc4, %count
  br i1 %exitcond.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %bytes_to_send.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %spec.select, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %bytes_to_send.0.lcssa) #7
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %10, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 8) #7, !srcloc !118
  br i1 %cmp63.not, label %do.body.for.end20_crit_edge, label %for.body8.lr.ph

do.body.for.end20_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end20

for.body8.lr.ph:                                  ; preds = %do.body
  %baud2.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 8
  %tx_fifo_depth.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 3
  %tx_fifo_width.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  br label %for.body8

for.body8:                                        ; preds = %cleanup.for.body8_crit_edge, %for.body8.lr.ph
  %i.167 = phi i32 [ 0, %for.body8.lr.ph ], [ %add, %cleanup.for.body8_crit_edge ]
  %11 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body8.while.body.i.preheader_crit_edge, label %if.end6.i

for.body8.while.body.i.preheader_crit_edge:       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i:                                        ; preds = %for.body8
  %15 = ptrtoint ptr %baud2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %baud2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i = icmp eq i32 %16, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 115200, i32 %16
  %17 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_fifo_depth.i, align 4
  %19 = ptrtoint ptr %tx_fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_fifo_width.i, align 4
  %mul.i = mul i32 %18, 1000000
  %mul5.i = mul i32 %mul.i, %20
  %div.i = udiv i32 %mul5.i, %spec.store.select.i
  %phi.bo33.i = add i32 %div.i, 509
  %21 = urem i32 %phi.bo33.i, 10
  %phi.bo34.i = sub i32 %phi.bo33.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i)
  %tobool10.not35.i = icmp eq i32 %phi.bo34.i, 0
  br i1 %tobool10.not35.i, label %if.end6.i.for.end20_crit_edge, label %if.end6.i.while.body.i.preheader_crit_edge

if.end6.i.while.body.i.preheader_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i.for.end20_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end20

while.body.i.preheader:                           ; preds = %if.end6.i.while.body.i.preheader_crit_edge, %for.body8.while.body.i.preheader_crit_edge
  %timeout_us.136.i.ph = phi i32 [ 20000, %for.body8.while.body.i.preheader_crit_edge ], [ %phi.bo34.i, %if.end6.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.i.preheader
  %timeout_us.136.i = phi i32 [ %sub20.i, %if.end19.i.while.body.i_crit_edge ], [ %timeout_us.136.i.ph, %while.body.i.preheader ]
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr11.i = getelementptr i8, ptr %23, i32 1552
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %25 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14.i.not = icmp eq i32 %25, 0
  br i1 %tobool14.i.not, label %if.end19.i, label %cleanup

if.end19.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #7
  %sub20.i = add i32 %timeout_us.136.i, -10
  %tobool10.not.i = icmp eq i32 %sub20.i, 0
  br i1 %tobool10.not.i, label %if.end19.i.for.end20_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end19.i.for.end20_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end20

cleanup:                                          ; preds = %while.body.i
  %sub = sub i32 %count, %i.167
  %27 = tail call i32 @llvm.umin.i32(i32 %sub, i32 7)
  %add.ptr13 = getelementptr i8, ptr %s, i32 %i.167
  tail call void @uart_console_write(ptr noundef %uport, ptr noundef %add.ptr13, i32 noundef %27, ptr noundef nonnull @qcom_geni_serial_wr_char) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 4
  %add.ptr18 = getelementptr i8, ptr %29, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 64) #7, !srcloc !118
  %add = add i32 %27, %i.167
  %cmp6 = icmp ult i32 %add, %count
  br i1 %cmp6, label %cleanup.for.body8_crit_edge, label %cleanup.for.end20_crit_edge

cleanup.for.end20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end20

cleanup.for.body8_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.end20:                                        ; preds = %cleanup.for.end20_crit_edge, %if.end19.i.for.end20_crit_edge, %if.end6.i.for.end20_crit_edge, %do.body.for.end20_crit_edge
  %write_cached_bytes_cnt = getelementptr inbounds %struct.qcom_geni_private_data, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %write_cached_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %write_cached_bytes_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %for.end20.if.end31_crit_edge, label %if.then21

for.end20.if.end31_crit_edge:                     ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then21:                                        ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #9
  %.neg = mul i32 %31, -8
  %mul = add i32 %.neg, 32
  %write_cached_bytes = getelementptr inbounds %struct.qcom_geni_private_data, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %write_cached_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %write_cached_bytes, align 4
  %shr = lshr i32 %33, %mul
  store i32 %shr, ptr %write_cached_bytes, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %write_cached_bytes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %write_cached_bytes, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  %add.ptr29 = getelementptr i8, ptr %38, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %36) #7, !srcloc !118
  %39 = ptrtoint ptr %write_cached_bytes_cnt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %write_cached_bytes_cnt, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %for.end20.if.end31_crit_edge
  tail call fastcc void @qcom_geni_serial_poll_tx_done(ptr noundef %uport)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_wr_char(ptr nocapture noundef readonly %uport, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data1 = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 59
  %0 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data1, align 4
  %write_cached_bytes = getelementptr inbounds %struct.qcom_geni_private_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %write_cached_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_cached_bytes, align 4
  %or = tail call i32 @llvm.fshl.i32(i32 %ch, i32 %3, i32 24)
  %4 = ptrtoint ptr %write_cached_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %write_cached_bytes, align 4
  %write_cached_bytes_cnt = getelementptr inbounds %struct.qcom_geni_private_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %write_cached_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_cached_bytes_cnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %write_cached_bytes_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp eq i32 %inc, 4
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %write_cached_bytes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %write_cached_bytes, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #7, !srcloc !118
  %12 = ptrtoint ptr %write_cached_bytes_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %write_cached_bytes_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_earlycon_read(ptr nocapture noundef readonly %con, ptr nocapture noundef writeonly %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp5.not = icmp eq i32 %n, 0
  br i1 %cmp5.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %num_read.06 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %call = tail call i32 @qcom_geni_serial_get_char(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %call)
  %cmp1 = icmp eq i32 %call, 16711680
  br i1 %cmp1, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %conv = trunc i32 %call to i8
  %inc = add nuw i32 %num_read.06, 1
  %arrayidx = getelementptr i8, ptr %s, i32 %num_read.06
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %num_read.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %num_read.06, %while.body.while.end_crit_edge ], [ %n, %if.end.while.end_crit_edge ]
  ret i32 %num_read.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_get_char(ptr nocapture noundef readonly %uport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data1 = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 59
  %0 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data1, align 4
  %poll_cached_bytes_cnt = getelementptr inbounds %struct.qcom_geni_private_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %poll_cached_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poll_cached_bytes_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then:                                          ; preds = %entry
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1552
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %6) #7, !srcloc !118
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 1600
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %11) #7, !srcloc !118
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %15, i32 2052
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !116
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %and = and i32 %17, 33554431
  %18 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.then.if.end31thread-pre-split_crit_edge [
    i32 0, label %if.then.cleanup_crit_edge
    i32 1, label %land.lhs.true
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end31thread-pre-split_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31thread-pre-split

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool27.not = icmp sgt i32 %17, -1
  br i1 %tobool27.not, label %land.lhs.true.if.end31thread-pre-split_crit_edge, label %if.then28

land.lhs.true.if.end31thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31thread-pre-split

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %and29 = lshr i32 %17, 28
  %shr = and i32 %and29, 7
  %19 = ptrtoint ptr %poll_cached_bytes_cnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %poll_cached_bytes_cnt, align 4
  br label %if.end31

if.end31thread-pre-split:                         ; preds = %land.lhs.true.if.end31thread-pre-split_crit_edge, %if.then.if.end31thread-pre-split_crit_edge
  %20 = ptrtoint ptr %poll_cached_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %poll_cached_bytes_cnt, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31thread-pre-split, %if.then28
  %21 = phi i32 [ %.pr, %if.end31thread-pre-split ], [ %shr, %if.then28 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp33 = icmp eq i32 %21, 0
  br i1 %cmp33, label %if.then34, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %poll_cached_bytes_cnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %poll_cached_bytes_cnt, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr40 = getelementptr i8, ptr %24, i32 1920
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #7, !srcloc !116
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %poll_cached_bytes = getelementptr inbounds %struct.qcom_geni_private_data, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %poll_cached_bytes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %poll_cached_bytes, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end36, %entry.if.end44_crit_edge
  %28 = ptrtoint ptr %poll_cached_bytes_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %poll_cached_bytes_cnt, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %poll_cached_bytes_cnt, align 4
  %poll_cached_bytes46 = getelementptr inbounds %struct.qcom_geni_private_data, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %poll_cached_bytes46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %poll_cached_bytes46, align 4
  %and47 = and i32 %31, 255
  %shr49 = lshr i32 %31, 8
  store i32 %shr49, ptr %poll_cached_bytes46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %and47, %if.end44 ], [ 16711680, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call8 = tail call i32 @of_alias_get_id(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br i1 %tobool.not, label %if.else, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call8)
  %cmp = icmp eq i32 %call8, -19
  br i1 %cmp, label %if.then9, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call12 = tail call i32 @of_alias_get_id(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.else.if.end14_crit_edge, %entry.if.end14_crit_edge
  %cond.i = phi i32 [ 3, %if.else.if.end14_crit_edge ], [ 3, %if.then9 ], [ 1, %entry.if.end14_crit_edge ]
  %line.0 = phi i32 [ %call8, %if.else.if.end14_crit_edge ], [ %call12, %if.then9 ], [ %call8, %entry.if.end14_crit_edge ]
  %drv.0 = phi ptr [ @qcom_geni_uart_driver, %if.else.if.end14_crit_edge ], [ @qcom_geni_uart_driver, %if.then9 ], [ @qcom_geni_console_driver, %entry.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %line.0)
  %6 = icmp ugt i32 %cond.i, %line.0
  %arrayidx.i = getelementptr [3 x %struct.qcom_geni_serial_port], ptr @qcom_geni_uart_ports, i32 0, i32 %line.0
  %spec.select.i = select i1 %tobool.not, ptr %arrayidx.i, ptr @qcom_geni_console_port
  %retval.0.i = select i1 %6, ptr %spec.select.i, ptr inttoptr (i32 -6 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %line.0) #10
  %7 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %private_data = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 59
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %tobool23.not = icmp eq ptr %9, null
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %dev27 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 45
  %10 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev27, align 4
  %se = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 1
  %dev29 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %dev29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev29, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %wrapper = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %wrapper to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %wrapper, align 4
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  %clk = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call34, ptr %clk, align 4
  %cmp.i273 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273, label %if.then39, label %if.end47

if.then39:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %18) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end25
  %call48 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %19 = ptrtoint ptr %call48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call48, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 43
  %21 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mapbase, align 4
  %tx_fifo_depth = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %tx_fifo_depth to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %tx_fifo_depth, align 4
  %rx_fifo_depth = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 5
  %23 = ptrtoint ptr %rx_fifo_depth to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %rx_fifo_depth, align 4
  %tx_fifo_width = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 4
  %24 = ptrtoint ptr %tx_fifo_width to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 32, ptr %tx_fifo_width, align 4
  br i1 %tobool.not, label %devm_kcalloc.exit, label %if.end51.if.end61_crit_edge

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

devm_kcalloc.exit:                                ; preds = %if.end51
  %25 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev27, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef 64, i32 noundef 3520) #7
  %rx_fifo = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 9
  %27 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i, ptr %rx_fifo, align 4
  %tobool58.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool58.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %devm_kcalloc.exit.if.end61_crit_edge

devm_kcalloc.exit.if.end61_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %devm_kcalloc.exit.if.end61_crit_edge, %if.end51.if.end61_crit_edge
  %call63 = tail call i32 @geni_icc_get(ptr noundef %se, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  %avg_bw = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 1, i32 6, i32 0, i32 1
  %28 = ptrtoint ptr %avg_bw to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %avg_bw, align 4
  %avg_bw71 = getelementptr %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 1, i32 6, i32 1, i32 1
  %29 = ptrtoint ptr %avg_bw71 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %avg_bw71, align 4
  %call73 = tail call i32 @geni_icc_set_bw(ptr noundef %se) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end66
  %30 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev27, align 4
  %cons = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 32
  %32 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cons, align 4
  %tobool78.not = icmp eq ptr %33, null
  br i1 %tobool78.not, label %if.end76.land.end_crit_edge, label %land.rhs

if.end76.land.end_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.console, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %index, align 2
  %conv = sext i16 %35 to i32
  %line80 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 41
  %36 = ptrtoint ptr %line80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %line80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv)
  %cmp81 = icmp eq i32 %37, %conv
  %phi.sel = select i1 %cmp81, ptr @.str.14, ptr @.str.15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end76.land.end_crit_edge
  %38 = phi ptr [ @.str.15, %if.end76.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %line83 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 41
  %39 = ptrtoint ptr %line83 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %line83, align 4
  %call84 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %31, i32 noundef 3264, ptr noundef nonnull @.str.13, ptr noundef nonnull %38, i32 noundef %40) #7
  %name = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 2
  %41 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call84, ptr %name, align 4
  %tobool86.not = icmp eq ptr %call84, null
  br i1 %tobool86.not, label %land.end.cleanup_crit_edge, label %if.end88

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end88:                                         ; preds = %land.end
  %call89 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end88.cleanup_crit_edge, label %if.end93

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.end88
  %irq94 = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 20
  %42 = ptrtoint ptr %irq94 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call89, ptr %irq94, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %retval.0.i, i32 0, i32 48
  %43 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %has_sysrq, align 4
  br i1 %tobool.not, label %if.then96, label %if.end93.if.end98_crit_edge

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %call97 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #7
  %wakeup_irq = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 13
  %44 = ptrtoint ptr %wakeup_irq to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call97, ptr %wakeup_irq, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end93.if.end98_crit_edge
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %46, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end98.if.end103_crit_edge, label %if.then102

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %rx_tx_swap = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 14
  %47 = ptrtoint ptr %rx_tx_swap to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %rx_tx_swap, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end98.if.end103_crit_edge
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call.i274 = tail call ptr @of_find_property(ptr noundef %49, ptr noundef nonnull @.str.17, ptr noundef null) #7
  %tobool.i275.not = icmp eq ptr %call.i274, null
  br i1 %tobool.i275.not, label %if.end103.if.end108_crit_edge, label %if.then107

if.end103.if.end108_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %cts_rts_swap = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 15
  %50 = ptrtoint ptr %cts_rts_swap to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %cts_rts_swap, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end103.if.end108_crit_edge
  %call110 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end113:                                        ; preds = %if.end108
  %call115 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %dev) #7
  %51 = zext i32 %call115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call115, label %do.end122 [
    i32 0, label %if.end113.if.end124_crit_edge
    i32 -19, label %if.end113.if.end124_crit_edge278
  ]

if.end113.if.end124_crit_edge278:                 ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.end113.if.end124_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

do.end122:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end124:                                        ; preds = %if.end113.if.end124_crit_edge, %if.end113.if.end124_crit_edge278
  %private_data125 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 16
  %52 = ptrtoint ptr %private_data125 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %drv.0, ptr %private_data125, align 4
  %53 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %private_data125, ptr %private_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i, ptr %driver_data.i.i, align 4
  %cond131 = select i1 %tobool.not, ptr @handle_rx_uart, ptr @handle_rx_console
  %handle_rx = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 7
  %55 = ptrtoint ptr %handle_rx to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cond131, ptr %handle_rx, align 4
  %call132 = tail call i32 @uart_add_one_port(ptr noundef nonnull %drv.0, ptr noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end124.cleanup_crit_edge

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end135:                                        ; preds = %if.end124
  %56 = ptrtoint ptr %irq94 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq94, align 4
  tail call void @irq_modify_status(i32 noundef %57, i32 noundef 0, i32 noundef 4096) #7
  %58 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev27, align 4
  %60 = ptrtoint ptr %irq94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq94, align 4
  %62 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name, align 4
  %call.i276 = tail call i32 @devm_request_threaded_irq(ptr noundef %59, i32 noundef %61, ptr noundef nonnull @qcom_geni_serial_isr, ptr noundef null, i32 noundef 4, ptr noundef %63, ptr noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool141.not = icmp eq i32 %call.i276, 0
  br i1 %tobool141.not, label %if.end148, label %do.end145

do.end145:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.22, i32 noundef %call.i276) #10
  %call147 = tail call i32 @uart_remove_one_port(ptr noundef nonnull %drv.0, ptr noundef %retval.0.i) #7
  br label %cleanup

if.end148:                                        ; preds = %if.end135
  %call.i277 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  %wakeup_irq151 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %retval.0.i, i32 0, i32 13
  %66 = ptrtoint ptr %wakeup_irq151 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wakeup_irq151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp152 = icmp sgt i32 %67, 0
  br i1 %cmp152, label %if.then154, label %if.end148.cleanup_crit_edge

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then154:                                       ; preds = %if.end148
  %call156 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  %68 = ptrtoint ptr %wakeup_irq151 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wakeup_irq151, align 4
  %call159 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %dev, i32 noundef %69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then154.cleanup_crit_edge, label %if.then161

if.then154.cleanup_crit_edge:                     ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then161:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  %call163 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #7
  %call164 = tail call i32 @uart_remove_one_port(ptr noundef nonnull %drv.0, ptr noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then161, %if.then154.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %do.end145, %if.end124.cleanup_crit_edge, %do.end122, %if.end108.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %land.end.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then39, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %do.end ], [ %18, %if.then39 ], [ %call115, %do.end122 ], [ %call.i276, %do.end145 ], [ %call159, %if.then161 ], [ -19, %if.end21.cleanup_crit_edge ], [ -22, %if.end47.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call63, %if.end61.cleanup_crit_edge ], [ %call73, %if.end66.cleanup_crit_edge ], [ -12, %land.end.cleanup_crit_edge ], [ %call89, %if.end88.cleanup_crit_edge ], [ %call110, %if.end108.cleanup_crit_edge ], [ %call132, %if.end124.cleanup_crit_edge ], [ 0, %if.then154.cleanup_crit_edge ], [ 0, %if.end148.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #7
  %call3 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #7
  %call4 = tail call i32 @uart_remove_one_port(ptr noundef %3, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_set_bw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_rx_console(ptr noundef %uport, i32 noundef %bytes, i1 noundef zeroext %drop) #3 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %state = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 30
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp83.not = icmp eq i32 %bytes, 0
  br i1 %cmp83.not, label %entry.for.end30_crit_edge, label %for.body.lr.ph

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

for.body.lr.ph:                                   ; preds = %entry
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %rx = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 31, i32 4
  %brk = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 11
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 17
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 48
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 41
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 46
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 33
  %sysrq_ch.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 47
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %2, i32 0, i32 8
  %drop.not = xor i1 %drop, true
  br label %for.body

for.body:                                         ; preds = %cleanup26.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup26.for.body_crit_edge ]
  %sub = sub i32 %bytes, %i.084
  %3 = call i32 @llvm.smin.i32(i32 %sub, i32 4)
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 1920
  call void @__raw_readsl(ptr noundef %add.ptr4, ptr noundef nonnull %buf, i32 noundef 1) #7
  %add = add i32 %3, %i.084
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp679 = icmp sgt i32 %sub, 0
  %or.cond = select i1 %drop.not, i1 %cmp679, i1 false
  br i1 %or.cond, label %for.body7.preheader, label %for.body.cleanup26_crit_edge

for.body.cleanup26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

for.body7.preheader:                              ; preds = %for.body
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %for.body7

for.body7:                                        ; preds = %cleanup.for.body7_crit_edge, %for.body7.preheader
  %c.080 = phi i32 [ %inc25, %cleanup.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %rx, align 4
  %8 = ptrtoint ptr %brk to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %brk, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %for.body7.if.end16_crit_edge, label %land.lhs.true

for.body7.if.end16_crit_edge:                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %for.body7
  %arrayidx = getelementptr [4 x i8], ptr %buf, i32 0, i32 %c.080
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp9 = icmp eq i8 %11, 0
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %brk to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %brk, align 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %15 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then11.if.end.i_crit_edge, label %if.then.i

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  call void %16(ptr noundef %uport) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then11.if.end.i_crit_edge
  %17 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i = icmp eq i8 %18, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %19 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %22 to i32
  %23 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv7.i)
  %cmp.i = icmp eq i32 %24, %conv7.i
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %25 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not.i = icmp eq i32 %26, 0
  br i1 %tobool10.not.i, label %uart_handle_break.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end16_crit_edge, label %if.then17.i

if.end15.i.if.end16_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %14, i32 0, i32 1
  %30 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tty.i, align 4
  call void @do_SAK(ptr noundef %31) #7
  br label %if.end16

uart_handle_break.exit:                           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %32, 500
  %33 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %sysrq.i, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.then17.i, %if.end15.i.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %for.body7.if.end16_crit_edge
  %arrayidx17 = getelementptr [4 x i8], ptr %buf, i32 0, i32 %c.080
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %35 to i32
  %36 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i57 = icmp eq i32 %37, 0
  br i1 %tobool.not.i57, label %if.end16.if.then21_crit_edge, label %if.end.i58

if.end16.if.then21_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.end.i58:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool1.not.i = icmp eq i8 %35, 0
  br i1 %tobool1.not.i, label %if.end.i58.uart_prepare_sysrq_char.exit.thread76_crit_edge, label %land.lhs.true.i60

if.end.i58.uart_prepare_sysrq_char.exit.thread76_crit_edge: ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %uart_prepare_sysrq_char.exit.thread76

land.lhs.true.i60:                                ; preds = %if.end.i58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %38, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i59 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i59, label %if.then3.i, label %land.lhs.true.i60.uart_prepare_sysrq_char.exit.thread76_crit_edge

land.lhs.true.i60.uart_prepare_sysrq_char.exit.thread76_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %uart_prepare_sysrq_char.exit.thread76

if.then3.i:                                       ; preds = %land.lhs.true.i60
  %call.i = call i32 @sysrq_mask() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i61 = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i61, label %if.end7.i, label %uart_prepare_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %uport, i32 noundef %conv18) #7
  br i1 %call8.i, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.uart_prepare_sysrq_char.exit.thread76_crit_edge

if.end7.i.uart_prepare_sysrq_char.exit.thread76_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %uart_prepare_sysrq_char.exit.thread76

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

uart_prepare_sysrq_char.exit.thread76:            ; preds = %if.end7.i.uart_prepare_sysrq_char.exit.thread76_crit_edge, %land.lhs.true.i60.uart_prepare_sysrq_char.exit.thread76_crit_edge, %if.end.i58.uart_prepare_sysrq_char.exit.thread76_crit_edge
  %39 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.then21

uart_prepare_sysrq_char.exit:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %sysrq_ch.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv18, ptr %sysrq_ch.i, align 4
  %41 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %sysrq.i, align 4
  br label %cleanup

if.then21:                                        ; preds = %uart_prepare_sysrq_char.exit.thread76, %if.end16.if.then21_crit_edge
  %42 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx17, align 1
  %44 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i, align 4
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp3.i = icmp slt i32 %47, %49
  br i1 %cmp3.i, label %if.then.i67, label %if.end12.i

if.then.i67:                                      ; preds = %if.then21
  %flags.i63 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 5
  %50 = ptrtoint ptr %flags.i63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i63, align 4
  %and.i64 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %tobool.not.i65, label %if.then8.i, label %if.then.i67.if.end.i68_crit_edge

if.then.i67.if.end.i68_crit_edge:                 ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i68

if.then8.i:                                       ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %47
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %49
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then8.i, %if.then.i67.if.end.i68_crit_edge
  %53 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %54
  %55 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %43, ptr %add.ptr.i1.i, align 1
  br label %cleanup

if.end12.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 @__tty_insert_flip_char(ptr noundef %2, i8 noundef zeroext %43, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.end.i68, %uart_prepare_sysrq_char.exit, %if.end7.i.cleanup_crit_edge, %uart_handle_break.exit
  %inc25 = add nuw nsw i32 %c.080, 1
  %exitcond.not = icmp eq i32 %inc25, %smax
  br i1 %exitcond.not, label %cleanup.cleanup26_crit_edge, label %cleanup.for.body7_crit_edge

cleanup.for.body7_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

cleanup.cleanup26_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup.cleanup26_crit_edge, %for.body.cleanup26_crit_edge
  %cmp = icmp ult i32 %add, %bytes
  br i1 %cmp, label %cleanup26.for.body_crit_edge, label %cleanup26.for.end30_crit_edge

cleanup26.for.end30_crit_edge:                    ; preds = %cleanup26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

cleanup26.for.body_crit_edge:                     ; preds = %cleanup26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end30:                                        ; preds = %cleanup26.for.end30_crit_edge, %entry.for.end30_crit_edge
  br i1 %drop, label %for.end30.if.end33_crit_edge, label %if.then32

for.end30.if.end33_crit_edge:                     ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void @tty_flip_buffer_push(ptr noundef %2) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.end30.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_rx_uart(ptr nocapture noundef %uport, i32 noundef %bytes, i1 noundef zeroext %drop) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_fifo_width = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  %0 = ptrtoint ptr %tx_fifo_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_fifo_width, align 4
  %div69 = lshr i32 %1, 3
  %sub = add i32 %bytes, -1
  %add = add i32 %sub, %div69
  %neg = sub nsw i32 0, %div69
  %and = and i32 %add, %neg
  %div2 = udiv i32 %and, %div69
  %state = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 1920
  %rx_fifo = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 9
  %6 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_fifo, align 4
  tail call void @__raw_readsl(ptr noundef %add.ptr4, ptr noundef %7, i32 noundef %div2) #7
  br i1 %drop, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_fifo, align 4
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %3, ptr noundef %9, i8 noundef zeroext 0, i32 noundef %bytes) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %bytes)
  %cmp.not = icmp eq i32 %call.i, %bytes
  br i1 %cmp.not, label %if.end.if.end46_crit_edge, label %do.end

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 45
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i, i32 noundef %bytes) #10
  %.b70 = load i1, ptr @handle_rx_uart.__already_done, align 1
  br i1 %.b70, label %do.end.if.end46_crit_edge, label %if.then12, !prof !145

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @handle_rx_uart.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 588, i32 noundef 9, ptr noundef null) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then12, %do.end.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %rx = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 31, i32 4
  %12 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx, align 4
  %add47 = add i32 %13, %call.i
  store i32 %add47, ptr %rx, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end46 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_isr(i32 noundef %isr, ptr noundef %dev) #3 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %suspended = getelementptr inbounds %struct.uart_port, ptr %dev, i32 0, i32 51
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %dev) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 1552
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !116
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 1600
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !116
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr22 = getelementptr i8, ptr %16, i32 1556
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr27 = getelementptr i8, ptr %19, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %6) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr32 = getelementptr i8, ptr %21, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %10) #7, !srcloc !118
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end61.critedge, label %do.end45, !prof !145

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 837, i32 noundef 9, ptr noundef null) #7
  br label %out_unlock

if.end61.critedge:                                ; preds = %if.end
  %and62 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.critedge.if.end66_crit_edge, label %if.then64

if.end61.critedge.if.end66_crit_edge:             ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then64:                                        ; preds = %if.end61.critedge
  %overrun = getelementptr inbounds %struct.uart_port, ptr %dev, i32 0, i32 31, i32 7
  %22 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %overrun, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %overrun, align 4
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then64.if.end12.i_crit_edge

if.then64.if.end12.i_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then64
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp3.i = icmp slt i32 %29, %31
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %29
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %31
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %add.ptr.i.i, align 1
  %33 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %34
  %35 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end66

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then64.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 4) #7
  br label %if.end66

if.end66:                                         ; preds = %if.end12.i, %if.end.i, %if.end61.critedge.if.end66_crit_edge
  %36 = and i32 %6, 16777280
  %37 = and i32 %36, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool69.not = icmp eq i32 %37, 0
  br i1 %tobool69.not, label %if.end66.if.end75_crit_edge, label %if.then70

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then70:                                        ; preds = %if.end66
  %and71 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %38 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool74.not = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state, align 4
  %xmit2.i = getelementptr inbounds %struct.uart_state, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  %add.ptr3.i = getelementptr i8, ptr %42, i32 2048
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  br i1 %tobool74.not, label %if.else.i, label %if.then.i142

if.then.i142:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %tx_remaining.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %dev, i32 0, i32 12
  %44 = ptrtoint ptr %tx_remaining.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_remaining.i, align 4
  br label %if.end.i144

if.else.i:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %head.i = getelementptr inbounds %struct.uart_state, ptr %40, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %head.i, align 4
  %tail6.i = getelementptr inbounds %struct.uart_state, ptr %40, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %tail6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tail6.i, align 4
  %sub.i = sub i32 %47, %49
  %and.i143 = and i32 %sub.i, 4095
  br label %if.end.i144

if.end.i144:                                      ; preds = %if.else.i, %if.then.i142
  %pending.0.i = phi i32 [ %45, %if.then.i142 ], [ %and.i143, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.0.i)
  %tobool7.not.i = icmp ne i32 %pending.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool8.not.i = icmp ne i32 %43, 0
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %tobool8.not.i
  %brmerge.i = or i1 %tobool72.not, %or.cond.i
  br i1 %brmerge.i, label %if.end12.i145, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qcom_geni_serial_stop_tx(ptr noundef %dev) #7
  br label %out_write_wakeup.i

if.end12.i145:                                    ; preds = %if.end.i144
  %tx_fifo_depth.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %dev, i32 0, i32 3
  %50 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_fifo_depth.i, align 4
  %52 = and i32 %43, -241
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %sub14.i = sub i32 %51, %53
  %mul.i = shl i32 %sub14.i, 2
  %tail15.i = getelementptr inbounds %struct.uart_state, ptr %40, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %tail15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tail15.i, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %pending.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool17.not.i = icmp eq i32 %56, 0
  br i1 %tobool17.not.i, label %if.end12.i145.out_write_wakeup.i_crit_edge, label %if.end19.i

if.end12.i145.out_write_wakeup.i_crit_edge:       ; preds = %if.end12.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_write_wakeup.i

if.end19.i:                                       ; preds = %if.end12.i145
  %tx_remaining20.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %dev, i32 0, i32 12
  %57 = ptrtoint ptr %tx_remaining20.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_remaining20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool21.not.i = icmp eq i32 %58, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end19.i.for.body.lr.ph.i_crit_edge

if.end19.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

if.then22.i:                                      ; preds = %if.end19.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %pending.0.i) #7
  %60 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase, align 4
  %add.ptr.i.i146 = getelementptr i8, ptr %61, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i146, i32 %59) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %63, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 8) #7, !srcloc !118
  %64 = ptrtoint ptr %tx_remaining20.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %pending.0.i, ptr %tx_remaining20.i, align 4
  %65 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase, align 4
  %add.ptr27.i = getelementptr i8, ptr %66, i32 1556
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #7, !srcloc !116
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %and31.i = and i32 %68, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body.i, label %if.then22.i.for.body.lr.ph.i_crit_edge

if.then22.i.for.body.lr.ph.i_crit_edge:           ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

do.body.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %or.i = or i32 %68, 1073741824
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %70 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase, align 4
  %add.ptr35.i = getelementptr i8, ptr %71, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %69) #7, !srcloc !118
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %do.body.i, %if.then22.i.for.body.lr.ph.i_crit_edge, %if.end19.i.for.body.lr.ph.i_crit_edge
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %dev, i32 0, i32 31, i32 5
  %arrayidx49.i.1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %arrayidx49.i.2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %arrayidx49.i.3 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %remaining.0147.i = phi i32 [ %56, %for.body.lr.ph.i ], [ %sub56.i, %for.end.i.for.body.i_crit_edge ]
  %i.0146.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.end.i.for.body.i_crit_edge ]
  %tail.0145.i = phi i32 [ %55, %for.body.lr.ph.i ], [ %tail.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %72 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %buf.i, align 4
  %73 = call i32 @llvm.umin.i32(i32 %remaining.0147.i, i32 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp46141.not.i = icmp eq i32 %73, 0
  br i1 %cmp46141.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body47.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body47.i:                                     ; preds = %for.body.i
  %74 = ptrtoint ptr %xmit2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %xmit2.i, align 4
  %inc.i147 = add i32 %tail.0145.i, 1
  %arrayidx.i = getelementptr i8, ptr %75, i32 %tail.0145.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i, align 1
  %78 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %buf.i, align 4
  %and50.i = and i32 %inc.i147, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %exitcond.not.i = icmp eq i32 %73, 1
  br i1 %exitcond.not.i, label %for.body47.i.for.end.i_crit_edge, label %for.body47.i.1

for.body47.i.for.end.i_crit_edge:                 ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body47.i.1:                                   ; preds = %for.body47.i
  %79 = ptrtoint ptr %xmit2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xmit2.i, align 4
  %inc.i147.1 = add i32 %tail.0145.i, 2
  %arrayidx.i.1 = getelementptr i8, ptr %80, i32 %and50.i
  %81 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.1, align 1
  %83 = ptrtoint ptr %arrayidx49.i.1 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx49.i.1, align 1
  %and50.i.1 = and i32 %inc.i147.1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %exitcond.not.i.1 = icmp eq i32 %73, 2
  br i1 %exitcond.not.i.1, label %for.body47.i.1.for.end.i_crit_edge, label %for.body47.i.2

for.body47.i.1.for.end.i_crit_edge:               ; preds = %for.body47.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body47.i.2:                                   ; preds = %for.body47.i.1
  %84 = ptrtoint ptr %xmit2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xmit2.i, align 4
  %inc.i147.2 = add i32 %tail.0145.i, 3
  %arrayidx.i.2 = getelementptr i8, ptr %85, i32 %and50.i.1
  %86 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i.2, align 1
  %88 = ptrtoint ptr %arrayidx49.i.2 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx49.i.2, align 2
  %and50.i.2 = and i32 %inc.i147.2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %exitcond.not.i.2 = icmp eq i32 %73, 3
  br i1 %exitcond.not.i.2, label %for.body47.i.2.for.end.i_crit_edge, label %for.body47.i.3

for.body47.i.2.for.end.i_crit_edge:               ; preds = %for.body47.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body47.i.3:                                   ; preds = %for.body47.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %xmit2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %xmit2.i, align 4
  %inc.i147.3 = add i32 %tail.0145.i, 4
  %arrayidx.i.3 = getelementptr i8, ptr %90, i32 %and50.i.2
  %91 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i.3, align 1
  %93 = ptrtoint ptr %arrayidx49.i.3 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx49.i.3, align 1
  %and50.i.3 = and i32 %inc.i147.3, 4095
  br label %for.end.i

for.end.i:                                        ; preds = %for.body47.i.3, %for.body47.i.2.for.end.i_crit_edge, %for.body47.i.1.for.end.i_crit_edge, %for.body47.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %tail.1.lcssa.i = phi i32 [ %tail.0145.i, %for.body.i.for.end.i_crit_edge ], [ %and50.i, %for.body47.i.for.end.i_crit_edge ], [ %and50.i.1, %for.body47.i.1.for.end.i_crit_edge ], [ %and50.i.2, %for.body47.i.2.for.end.i_crit_edge ], [ %and50.i.3, %for.body47.i.3 ]
  %94 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase, align 4
  %add.ptr53.i = getelementptr i8, ptr %95, i32 1792
  call void @__raw_writesl(ptr noundef %add.ptr53.i, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  %add.i = add i32 %73, %i.0146.i
  %96 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx.i, align 4
  %add55.i = add i32 %97, %73
  store i32 %add55.i, ptr %tx.i, align 4
  %sub56.i = sub i32 %remaining.0147.i, %73
  %98 = ptrtoint ptr %tx_remaining20.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_remaining20.i, align 4
  %sub58.i = sub i32 %99, %73
  store i32 %sub58.i, ptr %tx_remaining20.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  %cmp38.i = icmp ult i32 %add.i, %56
  br i1 %cmp38.i, label %for.end.i.for.body.i_crit_edge, label %for.end59.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end59.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %tail15.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %tail.1.lcssa.i, ptr %tail15.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  call void @arm_heavy_mb() #7
  %101 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase, align 4
  %add.ptr65.i = getelementptr i8, ptr %102, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 64) #7, !srcloc !118
  br label %out_write_wakeup.i

out_write_wakeup.i:                               ; preds = %for.end59.i, %if.end12.i145.out_write_wakeup.i_crit_edge, %if.then11.i
  %tx_remaining66.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %dev, i32 0, i32 12
  %103 = ptrtoint ptr %tx_remaining66.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_remaining66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool67.not.i = icmp eq i32 %104, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %out_write_wakeup.i.if.end86.i_crit_edge

out_write_wakeup.i.if.end86.i_crit_edge:          ; preds = %out_write_wakeup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

if.then68.i:                                      ; preds = %out_write_wakeup.i
  %105 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %membase, align 4
  %add.ptr72.i = getelementptr i8, ptr %106, i32 1556
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72.i) #7, !srcloc !116
  %108 = call i32 @llvm.bswap.i32(i32 %107) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %and76.i = and i32 %108, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.then68.i.if.end86.i_crit_edge, label %do.body79.i

if.then68.i.if.end86.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

do.body79.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  call void @arm_heavy_mb() #7
  %and82.i = and i32 %108, -1073741825
  %109 = call i32 @llvm.bswap.i32(i32 %and82.i) #7
  %110 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %membase, align 4
  %add.ptr84.i = getelementptr i8, ptr %111, i32 1556
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %109) #7, !srcloc !118
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.body79.i, %if.then68.i.if.end86.i_crit_edge, %out_write_wakeup.i.if.end86.i_crit_edge
  %head87.i = getelementptr inbounds %struct.uart_state, ptr %40, i32 0, i32 2, i32 1
  %112 = ptrtoint ptr %head87.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %head87.i, align 4
  %tail88.i = getelementptr inbounds %struct.uart_state, ptr %40, i32 0, i32 2, i32 2
  %114 = ptrtoint ptr %tail88.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tail88.i, align 4
  %sub89.i = sub i32 %113, %115
  %and90.i = and i32 %sub89.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %cmp91.i = icmp eq i32 %and90.i, 0
  br i1 %cmp91.i, label %if.then92.i, label %if.end86.i.if.end75_crit_edge

if.end86.i.if.end75_crit_edge:                    ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then92.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @uart_write_wakeup(ptr noundef %dev) #7
  br label %if.end75

if.end75:                                         ; preds = %if.then92.i, %if.end86.i.if.end75_crit_edge, %if.end66.if.end75_crit_edge
  %116 = and i32 %11, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end75
  %and76 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then80.if.end97_crit_edge, label %if.then83

if.then80.if.end97_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %parity = getelementptr inbounds %struct.uart_port, ptr %dev, i32 0, i32 31, i32 8
  %118 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %parity, align 4
  %inc85 = add i32 %119, 1
  store i32 %inc85, ptr %parity, align 4
  br label %if.end97

if.else:                                          ; preds = %if.end75
  %120 = and i32 %11, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %if.else.if.end97_crit_edge, label %if.then92

if.else.if.end97_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then92:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %brk = getelementptr inbounds %struct.uart_port, ptr %dev, i32 0, i32 31, i32 9
  %122 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %brk, align 4
  %inc94 = add i32 %123, 1
  store i32 %inc94, ptr %brk, align 4
  %brk95 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %dev, i32 0, i32 11
  %124 = ptrtoint ptr %brk95 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %brk95, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %if.else.if.end97_crit_edge, %if.then83, %if.then80.if.end97_crit_edge
  %125 = xor i1 %117, true
  %126 = and i32 %11, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %if.end97.out_unlock_crit_edge, label %if.then103

if.end97.out_unlock_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then103:                                       ; preds = %if.end97
  %128 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %membase, align 4
  %add.ptr1.i = getelementptr i8, ptr %129, i32 2052
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !116
  %131 = call i32 @llvm.bswap.i32(i32 %130) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %and.i149 = and i32 %131, 33554431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool.not.i150 = icmp eq i32 %and.i149, 0
  br i1 %tobool.not.i150, label %if.then103.out_unlock_crit_edge, label %if.end.i156

if.then103.out_unlock_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end.i156:                                      ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i = lshr i32 %131, 28
  %shr.i = and i32 %and5.i, 7
  %sub.i151 = shl nuw nsw i32 %and.i149, 2
  %mul.i152 = add nsw i32 %sub.i151, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %tobool6.not.i = icmp sgt i32 %131, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool7.not.i153 = icmp eq i32 %shr.i, 0
  %or.cond.i154 = select i1 %tobool6.not.i, i1 true, i1 %tobool7.not.i153
  %add.i155 = add nuw nsw i32 %mul.i152, %shr.i
  %total_bytes.0.i = select i1 %or.cond.i154, i32 %sub.i151, i32 %add.i155
  %handle_rx.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %dev, i32 0, i32 7
  %132 = ptrtoint ptr %handle_rx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %handle_rx.i, align 4
  %call12.i = call i32 %133(ptr noundef %dev, i32 noundef %total_bytes.0.i, i1 noundef zeroext %125) #7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end.i156, %if.then103.out_unlock_crit_edge, %if.end97.out_unlock_crit_edge, %do.end45
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev, i32 0, i32 48
  %134 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i157 = icmp eq i8 %135, 0
  br i1 %tobool.not.i157, label %if.then.i158, label %if.end.i159

if.then.i158:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %dev) #7
  br label %cleanup

if.end.i159:                                      ; preds = %out_unlock
  %sysrq_ch1.i = getelementptr inbounds %struct.uart_port, ptr %dev, i32 0, i32 47
  %136 = ptrtoint ptr %sysrq_ch1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sysrq_ch1.i, align 4
  store i32 0, ptr %sysrq_ch1.i, align 4
  call void @_raw_spin_unlock(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool4.not.i = icmp eq i32 %137, 0
  br i1 %tobool4.not.i, label %if.end.i159.cleanup_crit_edge, label %if.then5.i

if.end.i159.cleanup_crit_edge:                    ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #9
  call void @handle_sysrq(i32 noundef %137) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i159.cleanup_crit_edge, %if.then.i158, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then.i158 ], [ 1, %if.end.i159.cleanup_crit_edge ], [ 1, %if.then5.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_tx_empty(ptr nocapture noundef readonly %uport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_set_mctrl(ptr nocapture noundef %uport, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cons = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 32
  %0 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 2
  %conv = sext i16 %3 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp eq i32 %5, %conv
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and = and i32 %mctrl, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %loopback = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 10
  %6 = ptrtoint ptr %loopback to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %loopback, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and6 = and i32 %mctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true8:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %suspended = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 51
  %7 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %suspended, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool9.not, i32 -2147483646, i32 0
  br label %do.body

do.body:                                          ; preds = %land.lhs.true8, %if.end5.do.body_crit_edge
  %uart_manual_rfr.0 = phi i32 [ 0, %if.end5.do.body_crit_edge ], [ %spec.select, %land.lhs.true8 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %uart_manual_rfr.0)
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #7, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %do.body, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_get_mctrl(ptr nocapture noundef readonly %uport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cons = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 32
  %0 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 2
  %conv = sext i16 %3 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp eq i32 %5, %conv
  br i1 %cmp, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 2312
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool4.not, i32 352, i32 320
  br label %if.end7

if.end7:                                          ; preds = %if.else, %land.lhs.true.if.end7_crit_edge
  %mctrl.0 = phi i32 [ 352, %land.lhs.true.if.end7_crit_edge ], [ %spec.select, %if.else ]
  ret i32 %mctrl.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_stop_tx(ptr nocapture noundef readonly %uport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 1556
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %3 = and i32 %2, -16777281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %3) #7, !srcloc !118
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %se = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1
  %12 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %se, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #7, !srcloc !118
  %private_data1.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 59
  %14 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data1.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.while.body.i.preheader_crit_edge, label %if.end6.i

if.end.while.body.i.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i:                                        ; preds = %if.end
  %baud2.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 8
  %18 = ptrtoint ptr %baud2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %baud2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp eq i32 %19, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 115200, i32 %19
  %tx_fifo_depth.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 3
  %20 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_fifo_depth.i, align 4
  %tx_fifo_width.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  %22 = ptrtoint ptr %tx_fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_fifo_width.i, align 4
  %mul.i = mul i32 %21, 1000000
  %mul5.i = mul i32 %mul.i, %23
  %div.i = udiv i32 %mul5.i, %spec.store.select.i
  %phi.bo33.i = add i32 %div.i, 509
  %24 = urem i32 %phi.bo33.i, 10
  %phi.bo34.i = sub i32 %phi.bo33.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i)
  %tobool10.not35.i = icmp eq i32 %phi.bo34.i, 0
  br i1 %tobool10.not35.i, label %if.end6.i.if.then20_crit_edge, label %if.end6.i.while.body.i.preheader_crit_edge

if.end6.i.while.body.i.preheader_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i.if.then20_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

while.body.i.preheader:                           ; preds = %if.end6.i.while.body.i.preheader_crit_edge, %if.end.while.body.i.preheader_crit_edge
  %timeout_us.136.i.ph = phi i32 [ 20000, %if.end.while.body.i.preheader_crit_edge ], [ %phi.bo34.i, %if.end6.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.i.preheader
  %timeout_us.136.i = phi i32 [ %sub20.i, %if.end19.i.while.body.i_crit_edge ], [ %timeout_us.136.i.ph, %while.body.i.preheader ]
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr11.i = getelementptr i8, ptr %26, i32 1552
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %28 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool14.i.not = icmp eq i32 %28, 0
  br i1 %tobool14.i.not, label %if.end19.i, label %while.body.i.do.body29_crit_edge

while.body.i.do.body29_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end19.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #7
  %sub20.i = add i32 %timeout_us.136.i, -10
  %tobool10.not.i = icmp eq i32 %sub20.i, 0
  br i1 %tobool10.not.i, label %if.end19.i.if.then20_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end19.i.if.then20_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %if.end19.i.if.then20_crit_edge, %if.end6.i.if.then20_crit_edge
  %30 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %se, align 4
  %add.ptr.i46 = getelementptr i8, ptr %31, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 33554432) #7, !srcloc !118
  %32 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private_data1.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i48 = icmp eq ptr %35, null
  br i1 %tobool.not.i48, label %if.then20.while.body.i69.preheader_crit_edge, label %if.end6.i60

if.then20.while.body.i69.preheader_crit_edge:     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i69.preheader

if.end6.i60:                                      ; preds = %if.then20
  %baud2.i49 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 8
  %36 = ptrtoint ptr %baud2.i49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %baud2.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool3.not.i50 = icmp eq i32 %37, 0
  %spec.store.select.i51 = select i1 %tobool3.not.i50, i32 115200, i32 %37
  %tx_fifo_depth.i52 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 3
  %38 = ptrtoint ptr %tx_fifo_depth.i52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_fifo_depth.i52, align 4
  %tx_fifo_width.i53 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  %40 = ptrtoint ptr %tx_fifo_width.i53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_fifo_width.i53, align 4
  %mul.i54 = mul i32 %39, 1000000
  %mul5.i55 = mul i32 %mul.i54, %41
  %div.i56 = udiv i32 %mul5.i55, %spec.store.select.i51
  %phi.bo33.i57 = add i32 %div.i56, 509
  %42 = urem i32 %phi.bo33.i57, 10
  %phi.bo34.i58 = sub i32 %phi.bo33.i57, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i58)
  %tobool10.not35.i59 = icmp eq i32 %phi.bo34.i58, 0
  br i1 %tobool10.not35.i59, label %if.end6.i60.qcom_geni_serial_poll_bit.exit74_crit_edge, label %if.end6.i60.while.body.i69.preheader_crit_edge

if.end6.i60.while.body.i69.preheader_crit_edge:   ; preds = %if.end6.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i69.preheader

if.end6.i60.qcom_geni_serial_poll_bit.exit74_crit_edge: ; preds = %if.end6.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit74

while.body.i69.preheader:                         ; preds = %if.end6.i60.while.body.i69.preheader_crit_edge, %if.then20.while.body.i69.preheader_crit_edge
  %timeout_us.136.i64.ph = phi i32 [ 20000, %if.then20.while.body.i69.preheader_crit_edge ], [ %phi.bo34.i58, %if.end6.i60.while.body.i69.preheader_crit_edge ]
  br label %while.body.i69

while.body.i69:                                   ; preds = %if.end19.i72.while.body.i69_crit_edge, %while.body.i69.preheader
  %timeout_us.136.i64 = phi i32 [ %sub20.i70, %if.end19.i72.while.body.i69_crit_edge ], [ %timeout_us.136.i64.ph, %while.body.i69.preheader ]
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr11.i65 = getelementptr i8, ptr %44, i32 1552
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i65) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %46 = and i32 %45, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool14.i67.not = icmp eq i32 %46, 0
  br i1 %tobool14.i67.not, label %if.end19.i72, label %while.body.i69.qcom_geni_serial_poll_bit.exit74_crit_edge

while.body.i69.qcom_geni_serial_poll_bit.exit74_crit_edge: ; preds = %while.body.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit74

if.end19.i72:                                     ; preds = %while.body.i69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #7
  %sub20.i70 = add i32 %timeout_us.136.i64, -10
  %tobool10.not.i71 = icmp eq i32 %sub20.i70, 0
  br i1 %tobool10.not.i71, label %if.end19.i72.qcom_geni_serial_poll_bit.exit74_crit_edge, label %if.end19.i72.while.body.i69_crit_edge

if.end19.i72.while.body.i69_crit_edge:            ; preds = %if.end19.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i69

if.end19.i72.qcom_geni_serial_poll_bit.exit74_crit_edge: ; preds = %if.end19.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit74

qcom_geni_serial_poll_bit.exit74:                 ; preds = %if.end19.i72.qcom_geni_serial_poll_bit.exit74_crit_edge, %while.body.i69.qcom_geni_serial_poll_bit.exit74_crit_edge, %if.end6.i60.qcom_geni_serial_poll_bit.exit74_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase, align 4
  %add.ptr27 = getelementptr i8, ptr %49, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 536870912) #7, !srcloc !118
  br label %do.body29

do.body29:                                        ; preds = %qcom_geni_serial_poll_bit.exit74, %while.body.i.do.body29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 4
  %add.ptr33 = getelementptr i8, ptr %51, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 268435456) #7, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %do.body29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_start_tx(ptr nocapture noundef readonly %uport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.not = icmp eq i32 %6, 0
  br i1 %tobool.not.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 1556
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %10 = or i32 %9, 16777280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 33554432) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %10) #7, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_stop_rx(ptr noundef %uport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 1604
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %3 = and i32 %2, -13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #7, !srcloc !118
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 1556
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  %9 = and i32 %8, -13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %9) #7, !srcloc !118
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr22 = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %15 = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %se = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1
  %16 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %se, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 1588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #7, !srcloc !118
  %private_data1.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 59
  %18 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data1.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.while.body.i.preheader_crit_edge, label %if.end6.i

if.end.while.body.i.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i:                                        ; preds = %if.end
  %baud2.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 8
  %22 = ptrtoint ptr %baud2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %baud2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 115200, i32 %23
  %tx_fifo_depth.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 3
  %24 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_fifo_depth.i, align 4
  %tx_fifo_width.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  %26 = ptrtoint ptr %tx_fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_fifo_width.i, align 4
  %mul.i = mul i32 %25, 1000000
  %mul5.i = mul i32 %mul.i, %27
  %div.i = udiv i32 %mul5.i, %spec.store.select.i
  %phi.bo33.i = add i32 %div.i, 509
  %28 = urem i32 %phi.bo33.i, 10
  %phi.bo34.i = sub i32 %phi.bo33.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i)
  %tobool10.not35.i = icmp eq i32 %phi.bo34.i, 0
  br i1 %tobool10.not35.i, label %if.end6.i.qcom_geni_serial_poll_bit.exit_crit_edge, label %if.end6.i.while.body.i.preheader_crit_edge

if.end6.i.while.body.i.preheader_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i.qcom_geni_serial_poll_bit.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit

while.body.i.preheader:                           ; preds = %if.end6.i.while.body.i.preheader_crit_edge, %if.end.while.body.i.preheader_crit_edge
  %timeout_us.136.i.ph = phi i32 [ 20000, %if.end.while.body.i.preheader_crit_edge ], [ %phi.bo34.i, %if.end6.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.i.preheader
  %timeout_us.136.i = phi i32 [ %sub20.i, %if.end19.i.while.body.i_crit_edge ], [ %timeout_us.136.i.ph, %while.body.i.preheader ]
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr11.i = getelementptr i8, ptr %30, i32 1600
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %32 = and i32 %31, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool14.i.not = icmp eq i32 %32, 0
  br i1 %tobool14.i.not, label %if.end19.i, label %while.body.i.qcom_geni_serial_poll_bit.exit_crit_edge

while.body.i.qcom_geni_serial_poll_bit.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit

if.end19.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #7
  %sub20.i = add i32 %timeout_us.136.i, -10
  %tobool10.not.i = icmp eq i32 %sub20.i, 0
  br i1 %tobool10.not.i, label %if.end19.i.qcom_geni_serial_poll_bit.exit_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end19.i.qcom_geni_serial_poll_bit.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit

qcom_geni_serial_poll_bit.exit:                   ; preds = %if.end19.i.qcom_geni_serial_poll_bit.exit_crit_edge, %while.body.i.qcom_geni_serial_poll_bit.exit_crit_edge, %if.end6.i.qcom_geni_serial_poll_bit.exit_crit_edge
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr31 = getelementptr i8, ptr %35, i32 1600
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  %37 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool36.not = icmp eq i32 %37, 0
  br i1 %tobool36.not, label %qcom_geni_serial_poll_bit.exit.do.body39_crit_edge, label %if.then37

qcom_geni_serial_poll_bit.exit.do.body39_crit_edge: ; preds = %qcom_geni_serial_poll_bit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

if.then37:                                        ; preds = %qcom_geni_serial_poll_bit.exit
  %38 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase, align 4
  %add.ptr1.i = getelementptr i8, ptr %39, i32 2052
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !116
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %and.i75 = and i32 %41, 33554431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool.not.i76 = icmp eq i32 %and.i75, 0
  br i1 %tobool.not.i76, label %if.then37.do.body39_crit_edge, label %if.end.i

if.then37.do.body39_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

if.end.i:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i = lshr i32 %41, 28
  %shr.i = and i32 %and5.i, 7
  %sub.i = shl nuw nsw i32 %and.i75, 2
  %mul.i77 = add nsw i32 %sub.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool6.not.i = icmp sgt i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool7.not.i = icmp eq i32 %shr.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool7.not.i
  %add.i = add nuw nsw i32 %mul.i77, %shr.i
  %total_bytes.0.i = select i1 %or.cond.i, i32 %sub.i, i32 %add.i
  %handle_rx.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 7
  %42 = ptrtoint ptr %handle_rx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handle_rx.i, align 4
  %call12.i = tail call i32 %43(ptr noundef %uport, i32 noundef %total_bytes.0.i, i1 noundef zeroext true) #7
  br label %do.body39

do.body39:                                        ; preds = %if.end.i, %if.then37.do.body39_crit_edge, %qcom_geni_serial_poll_bit.exit.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase, align 4
  %add.ptr43 = getelementptr i8, ptr %45, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %36) #7, !srcloc !118
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %add.ptr47 = getelementptr i8, ptr %47, i32 64
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %49 = and i32 %48, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool52.not = icmp eq i32 %49, 0
  br i1 %tobool52.not, label %do.body39.cleanup_crit_edge, label %if.then53

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @qcom_geni_serial_abort_rx(ptr noundef %uport)
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %do.body39.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_startup(ptr noundef %uport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %setup = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 6
  %0 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setup, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @qcom_geni_serial_port_setup(ptr noundef %uport)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %irq = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_shutdown(ptr nocapture noundef readonly %uport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_set_termios(ptr noundef %uport, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qcom_geni_serial_stop_rx(ptr noundef %uport)
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %uport, ptr noundef %termios, ptr noundef %old, i32 noundef 300, i32 noundef 4000000) #7
  %baud1 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 8
  %0 = ptrtoint ptr %baud1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %baud1, align 4
  %se = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1
  %call2 = tail call i32 @geni_se_get_qup_hw_version(ptr noundef %se) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 537198591, i32 %call2)
  %cmp = icmp ugt i32 %call2, 537198591
  %spec.select = select i1 %cmp, i32 16, i32 32
  %mul.i = mul i32 %spec.select, %call
  %rem.i.i = urem i32 7372800, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end5_crit_edge, label %for.cond.i.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.i.i:                                     ; preds = %entry
  %rem.1.i.i = urem i32 14745600, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %rem.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.i.i.if.end5_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end5_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %rem.2.i.i = urem i32 19200000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %rem.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.1.i.i.if.end5_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.end5_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %rem.3.i.i = urem i32 29491200, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %rem.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond.2.i.i.if.end5_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.end5_crit_edge:                 ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %rem.4.i.i = urem i32 32000000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %rem.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.cond.3.i.i.if.end5_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.if.end5_crit_edge:                 ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %rem.5.i.i = urem i32 48000000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %rem.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.cond.4.i.i.if.end5_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.if.end5_crit_edge:                 ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %rem.6.i.i = urem i32 51200000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %rem.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.cond.5.i.i.if.end5_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.if.end5_crit_edge:                 ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %rem.7.i.i = urem i32 64000000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %rem.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.cond.6.i.i.if.end5_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.if.end5_crit_edge:                 ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %rem.8.i.i = urem i32 80000000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.8.i.i)
  %tobool.not.8.i.i = icmp eq i32 %rem.8.i.i, 0
  br i1 %tobool.not.8.i.i, label %for.cond.7.i.i.if.end5_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.if.end5_crit_edge:                 ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %rem.9.i.i = urem i32 96000000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.9.i.i)
  %tobool.not.9.i.i = icmp eq i32 %rem.9.i.i, 0
  br i1 %tobool.not.9.i.i, label %for.cond.8.i.i.if.end5_crit_edge, label %for.cond.9.i.i

for.cond.8.i.i.if.end5_crit_edge:                 ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  %rem.10.i.i = urem i32 100000000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.10.i.i)
  %tobool.not.10.i.i = icmp eq i32 %rem.10.i.i, 0
  br i1 %tobool.not.10.i.i, label %for.cond.9.i.i.if.end5_crit_edge, label %for.cond.10.i.i

for.cond.9.i.i.if.end5_crit_edge:                 ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.10.i.i:                                  ; preds = %for.cond.9.i.i
  %rem.11.i.i = urem i32 102400000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.11.i.i)
  %tobool.not.11.i.i = icmp eq i32 %rem.11.i.i, 0
  br i1 %tobool.not.11.i.i, label %for.cond.10.i.i.if.end5_crit_edge, label %for.cond.11.i.i

for.cond.10.i.i.if.end5_crit_edge:                ; preds = %for.cond.10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.11.i.i:                                  ; preds = %for.cond.10.i.i
  %rem.12.i.i = urem i32 112000000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.12.i.i)
  %tobool.not.12.i.i = icmp eq i32 %rem.12.i.i, 0
  br i1 %tobool.not.12.i.i, label %for.cond.11.i.i.if.end5_crit_edge, label %for.cond.12.i.i

for.cond.11.i.i.if.end5_crit_edge:                ; preds = %for.cond.11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.12.i.i:                                  ; preds = %for.cond.11.i.i
  %rem.13.i.i = urem i32 120000000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.13.i.i)
  %tobool.not.13.i.i = icmp eq i32 %rem.13.i.i, 0
  br i1 %tobool.not.13.i.i, label %for.cond.12.i.i.if.end5_crit_edge, label %for.cond.13.i.i

for.cond.12.i.i.if.end5_crit_edge:                ; preds = %for.cond.12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.13.i.i:                                  ; preds = %for.cond.12.i.i
  %rem.14.i.i = urem i32 128000000, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.14.i.i)
  %tobool.not.14.i.i = icmp eq i32 %rem.14.i.i, 0
  br i1 %tobool.not.14.i.i, label %for.cond.13.i.i.if.end5_crit_edge, label %get_clk_div_rate.exit.thread

for.cond.13.i.i.if.end5_crit_edge:                ; preds = %for.cond.13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

get_clk_div_rate.exit.thread:                     ; preds = %for.cond.13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %call) #10
  br label %out_restart_rx

if.end5:                                          ; preds = %for.cond.13.i.i.if.end5_crit_edge, %for.cond.12.i.i.if.end5_crit_edge, %for.cond.11.i.i.if.end5_crit_edge, %for.cond.10.i.i.if.end5_crit_edge, %for.cond.9.i.i.if.end5_crit_edge, %for.cond.8.i.i.if.end5_crit_edge, %for.cond.7.i.i.if.end5_crit_edge, %for.cond.6.i.i.if.end5_crit_edge, %for.cond.5.i.i.if.end5_crit_edge, %for.cond.4.i.i.if.end5_crit_edge, %for.cond.3.i.i.if.end5_crit_edge, %for.cond.2.i.i.if.end5_crit_edge, %for.cond.1.i.i.if.end5_crit_edge, %for.cond.i.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %retval.0.i.ph.i = phi i32 [ 120000000, %for.cond.12.i.i.if.end5_crit_edge ], [ 112000000, %for.cond.11.i.i.if.end5_crit_edge ], [ 102400000, %for.cond.10.i.i.if.end5_crit_edge ], [ 100000000, %for.cond.9.i.i.if.end5_crit_edge ], [ 96000000, %for.cond.8.i.i.if.end5_crit_edge ], [ 80000000, %for.cond.7.i.i.if.end5_crit_edge ], [ 64000000, %for.cond.6.i.i.if.end5_crit_edge ], [ 51200000, %for.cond.5.i.i.if.end5_crit_edge ], [ 48000000, %for.cond.4.i.i.if.end5_crit_edge ], [ 32000000, %for.cond.3.i.i.if.end5_crit_edge ], [ 29491200, %for.cond.2.i.i.if.end5_crit_edge ], [ 19200000, %for.cond.1.i.i.if.end5_crit_edge ], [ 14745600, %for.cond.i.i.if.end5_crit_edge ], [ 7372800, %entry.if.end5_crit_edge ], [ 128000000, %for.cond.13.i.i.if.end5_crit_edge ]
  %div.i = udiv i32 %retval.0.i.ph.i, %mul.i
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 22
  %1 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %retval.0.i.ph.i, ptr %uartclk, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call6 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %3, i32 noundef %retval.0.i.ph.i) #7
  %shl = shl nuw nsw i32 %div.i, 4
  %or = or i32 %shl, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %call)
  %cmp7 = icmp ugt i32 %call, 115200
  %cond = select i1 %cmp7, i32 2, i32 1
  %avg_bw = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1, i32 6, i32 0, i32 1
  %4 = ptrtoint ptr %avg_bw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %avg_bw, align 4
  %div9 = udiv i32 %call, 1000
  %avg_bw13 = getelementptr %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1, i32 6, i32 1, i32 1
  %5 = ptrtoint ptr %avg_bw13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div9, ptr %avg_bw13, align 4
  %call15 = tail call i32 @geni_icc_set_bw(ptr noundef %se) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %7, i32 604
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !116
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 676
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !116
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr30 = getelementptr i8, ptr %15, i32 640
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #7, !srcloc !116
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 680
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #7, !srcloc !116
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %22 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_cflag, align 4
  %and = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.else64, label %if.then42

if.then42:                                        ; preds = %if.end5
  %or43 = or i32 %9, 1
  %or44 = or i32 %17, 8
  %or45 = or i32 %13, 1
  %or46 = or i32 %21, 1
  %24 = and i32 %23, 1073742336
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %24)
  %.not = icmp eq i32 %24, 1073741824
  br i1 %.not, label %if.then56, label %if.then42.if.end69_crit_edge

if.then42.if.end69_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then56:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %or57 = or i32 %13, 17
  %or58 = or i32 %21, 17
  br label %if.end69

if.else64:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %and65 = and i32 %9, -2
  %and66 = and i32 %17, -9
  %and67 = and i32 %13, -2
  %and68 = and i32 %21, -2
  br label %if.end69

if.end69:                                         ; preds = %if.else64, %if.then56, %if.then42.if.end69_crit_edge
  %rx_parity_cfg.0 = phi i32 [ %or58, %if.then56 ], [ %and68, %if.else64 ], [ %or46, %if.then42.if.end69_crit_edge ]
  %rx_trans_cfg.0 = phi i32 [ %or44, %if.then56 ], [ %and66, %if.else64 ], [ %or44, %if.then42.if.end69_crit_edge ]
  %tx_parity_cfg.0 = phi i32 [ %or57, %if.then56 ], [ %and67, %if.else64 ], [ %or45, %if.then42.if.end69_crit_edge ]
  %tx_trans_cfg.0 = phi i32 [ %or43, %if.then56 ], [ %and65, %if.else64 ], [ %or43, %if.then42.if.end69_crit_edge ]
  %call71 = tail call zeroext i8 @tty_get_char_size(i32 noundef %23) #7
  %conv = zext i8 %call71 to i32
  %25 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c_cflag, align 4
  %and73 = shl i32 %26, 19
  %27 = and i32 %and73, 33554432
  %and82 = and i32 %tx_trans_cfg.0, -3
  %28 = lshr i32 %26, 30
  %29 = and i32 %28, 2
  %30 = or i32 %29, %and82
  %tx_trans_cfg.1 = xor i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool86.not = icmp eq i32 %call, 0
  br i1 %tobool86.not, label %if.end69.if.end89_crit_edge, label %if.then87

if.end69.if.end89_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then87:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @uart_update_timeout(ptr noundef %uport, i32 noundef %26, i32 noundef %call) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end69.if.end89_crit_edge
  %cons = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 32
  %31 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cons, align 4
  %tobool90.not = icmp eq ptr %32, null
  br i1 %tobool90.not, label %if.end89.do.body_crit_edge, label %land.lhs.true

if.end89.do.body_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %if.end89
  %index = getelementptr inbounds %struct.console, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %index, align 2
  %conv92 = sext i16 %34 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 41
  %35 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv92)
  %cmp93 = icmp eq i32 %36, %conv92
  br i1 %cmp93, label %land.lhs.true.do.body99_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.do.body99_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end89.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  %loopback = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 10
  %37 = ptrtoint ptr %loopback to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %loopback, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase, align 4
  %add.ptr97 = getelementptr i8, ptr %41, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %39) #7, !srcloc !118
  br label %do.body99

do.body99:                                        ; preds = %do.body, %land.lhs.true.do.body99_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %tx_trans_cfg.1)
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr103 = getelementptr i8, ptr %44, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %42) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %tx_parity_cfg.0)
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %add.ptr108 = getelementptr i8, ptr %47, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %45) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %rx_trans_cfg.0)
  %49 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase, align 4
  %add.ptr113 = getelementptr i8, ptr %50, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %48) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %rx_parity_cfg.0)
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  %add.ptr118 = getelementptr i8, ptr %53, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %51) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %54 = shl nuw i32 %conv, 24
  %55 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase, align 4
  %add.ptr123 = getelementptr i8, ptr %56, i32 616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %54) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase, align 4
  %add.ptr128 = getelementptr i8, ptr %58, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %54) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase, align 4
  %add.ptr133 = getelementptr i8, ptr %60, i32 620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 %27) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %or)
  %62 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase, align 4
  %add.ptr138 = getelementptr i8, ptr %63, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %61) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase, align 4
  %add.ptr143 = getelementptr i8, ptr %65, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %61) #7, !srcloc !118
  br label %out_restart_rx

out_restart_rx:                                   ; preds = %do.body99, %get_clk_div_rate.exit.thread
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %66 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %67, i32 64
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  %69 = and i32 %68, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i, label %out_restart_rx.qcom_geni_serial_start_rx.exit_crit_edge, label %if.then.i

out_restart_rx.qcom_geni_serial_start_rx.exit_crit_edge: ; preds = %out_restart_rx
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_start_rx.exit

if.then.i:                                        ; preds = %out_restart_rx
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @qcom_geni_serial_stop_rx(ptr noundef %uport) #7
  br label %qcom_geni_serial_start_rx.exit

qcom_geni_serial_start_rx.exit:                   ; preds = %if.then.i, %out_restart_rx.qcom_geni_serial_start_rx.exit_crit_edge
  %70 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %se, align 4
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 1584
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %se, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %74, i32 1584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 8) #7, !srcloc !118
  %75 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %76, i32 1604
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %78 = or i32 %77, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %79 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %80, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %78) #7, !srcloc !118
  %81 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %82, i32 1556
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %84 = or i32 %83, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %85 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %86, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %84) #7, !srcloc !118
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_pm(ptr noundef %uport, i32 noundef %new_state, i32 noundef %old_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %old_state)
  %cmp = icmp eq i32 %old_state, 4
  %spec.store.select = select i1 %cmp, i32 3, i32 %old_state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_state)
  %cmp1 = icmp eq i32 %new_state, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select)
  %cmp2 = icmp eq i32 %spec.store.select, 3
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %se = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1
  %call = tail call i32 @geni_icc_enable(ptr noundef %se) #7
  %call5 = tail call i32 @geni_se_resources_on(ptr noundef %se) #7
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state)
  %cmp6 = icmp eq i32 %new_state, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp8 = icmp eq i32 %spec.store.select, 0
  %or.cond22 = and i1 %cmp6, %cmp8
  br i1 %or.cond22, label %if.then9, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %se10 = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1
  %call11 = tail call i32 @geni_se_resources_off(ptr noundef %se10) #7
  %call13 = tail call i32 @geni_icc_disable(ptr noundef %se10) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.else.if.end15_crit_edge, %if.then3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @qcom_geni_serial_get_type(ptr nocapture noundef readnone %uport) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_request_port(ptr nocapture noundef %uport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %se = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1
  %4 = ptrtoint ptr %se to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %se, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_config_port(ptr nocapture noundef %uport, i32 noundef %cfg_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cfg_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 88, ptr %type, align 4
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 45
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -16
  %call.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr.i, i32 noundef 0) #7
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %membase.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %se.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1
  %4 = ptrtoint ptr %se.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %se.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_poll_put_char(ptr nocapture noundef readonly %uport, i8 noundef zeroext %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  tail call void @arm_heavy_mb() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %5, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 8) #7, !srcloc !118
  %private_data1.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 59
  %6 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.while.body.i.preheader_crit_edge, label %if.end6.i

entry.while.body.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i:                                        ; preds = %entry
  %baud2.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 8
  %10 = ptrtoint ptr %baud2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baud2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 115200, i32 %11
  %tx_fifo_depth.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 3
  %12 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_fifo_depth.i, align 4
  %tx_fifo_width.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  %14 = ptrtoint ptr %tx_fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_fifo_width.i, align 4
  %mul.i = mul i32 %13, 1000000
  %mul5.i = mul i32 %mul.i, %15
  %div.i = udiv i32 %mul5.i, %spec.store.select.i
  %phi.bo33.i = add i32 %div.i, 509
  %16 = urem i32 %phi.bo33.i, 10
  %phi.bo34.i = sub i32 %phi.bo33.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i)
  %tobool10.not35.i = icmp eq i32 %phi.bo34.i, 0
  br i1 %tobool10.not35.i, label %if.end6.i.do.end10_crit_edge, label %if.end6.i.while.body.i.preheader_crit_edge, !prof !200

if.end6.i.while.body.i.preheader_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i.do.end10_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

while.body.i.preheader:                           ; preds = %if.end6.i.while.body.i.preheader_crit_edge, %entry.while.body.i.preheader_crit_edge
  %timeout_us.136.i.ph = phi i32 [ 20000, %entry.while.body.i.preheader_crit_edge ], [ %phi.bo34.i, %if.end6.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.i.preheader
  %timeout_us.136.i = phi i32 [ %sub20.i, %if.end19.i.while.body.i_crit_edge ], [ %timeout_us.136.i.ph, %while.body.i.preheader ]
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr11.i = getelementptr i8, ptr %18, i32 1552
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.i.not = icmp eq i32 %20, 0
  br i1 %tobool14.i.not, label %if.end19.i, label %while.body.i.if.end_crit_edge

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end19.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #7
  %sub20.i = add i32 %timeout_us.136.i, -10
  %tobool10.not.i = icmp eq i32 %sub20.i, 0
  br i1 %tobool10.not.i, label %if.end19.i.do.end10_crit_edge, label %if.end19.i.while.body.i_crit_edge, !prof !200

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end19.i.do.end10_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end10:                                         ; preds = %if.end19.i.do.end10_crit_edge, %if.end6.i.do.end10_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end10, %while.body.i.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %conv = zext i8 %c to i32
  %22 = shl nuw i32 %conv, 24
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr26 = getelementptr i8, ptr %24, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %22) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr31 = getelementptr i8, ptr %26, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 64) #7, !srcloc !118
  tail call fastcc void @qcom_geni_serial_poll_tx_done(ptr noundef %uport)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_geni_serial_port_setup(ptr noundef %uport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %se = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 1
  %0 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !116
  %3 = lshr i32 %2, 16
  %and.i = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %and.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @qcom_geni_serial_stop_rx(ptr noundef %uport)
  %6 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 3620
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !116
  %9 = lshr i32 %8, 8
  %shr.i.i = and i32 %9, 63
  %tx_fifo_depth.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 3
  %10 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr.i.i, ptr %tx_fifo_depth.i, align 4
  %11 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %12, i32 3620
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #7, !srcloc !116
  %and.i.i = and i32 %13, 63
  %tx_fifo_width.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 4
  %14 = ptrtoint ptr %tx_fifo_width.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i.i, ptr %tx_fifo_width.i, align 4
  %15 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %se, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %16, i32 3624
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #7, !srcloc !116
  %18 = lshr i32 %17, 8
  %shr.i19.i = and i32 %18, 63
  %rx_fifo_depth.i = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 5
  %19 = ptrtoint ptr %rx_fifo_depth.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i19.i, ptr %rx_fifo_depth.i, align 4
  %20 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_fifo_depth.i, align 4
  %22 = ptrtoint ptr %tx_fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_fifo_width.i, align 4
  %mul.i = mul i32 %23, %21
  %div16.i = lshr i32 %mul.i, 3
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 23
  %24 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div16.i, ptr %fifosize.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 2
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %26, i32 660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1610612736) #7, !srcloc !118
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr6 = getelementptr i8, ptr %28, i32 576
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  %rx_tx_swap = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 14
  %30 = ptrtoint ptr %rx_tx_swap to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rx_tx_swap, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  %cts_rts_swap = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 15
  %32 = ptrtoint ptr %cts_rts_swap to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cts_rts_swap, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool12.not = icmp eq i8 %33, 0
  %34 = select i1 %tobool.not, i1 %tobool12.not, i1 false
  br i1 %34, label %if.end.if.end27_crit_edge, label %do.body22

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %29)
  %and = and i32 %35, -65521
  %or = or i32 %and, 17984
  %pin_swap.0 = select i1 %tobool.not, i32 %35, i32 %or
  %and14 = and i32 %pin_swap.0, -16
  %or15 = or i32 %and14, 3
  %pin_swap.1 = select i1 %tobool12.not, i32 %pin_swap.0, i32 %or15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %pin_swap.1)
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  %add.ptr26 = getelementptr i8, ptr %38, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %36) #7, !srcloc !118
  br label %if.end27

if.end27:                                         ; preds = %do.body22, %if.end.if.end27_crit_edge
  %cons = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 32
  %39 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cons, align 4
  %tobool28.not = icmp eq ptr %40, null
  br i1 %tobool28.not, label %if.end27.if.end33_crit_edge, label %land.lhs.true

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end27
  %index = getelementptr inbounds %struct.console, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %index, align 2
  %conv = sext i16 %42 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %uport, i32 0, i32 41
  %43 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv)
  %cmp30 = icmp eq i32 %44, %conv
  br i1 %cmp30, label %if.then32, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @qcom_geni_serial_poll_tx_done(ptr noundef %uport)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %land.lhs.true.if.end33_crit_edge, %if.end27.if.end33_crit_edge
  tail call void @geni_se_config_packing(ptr noundef %se, i32 noundef 8, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %45 = ptrtoint ptr %rx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_fifo_depth.i, align 4
  %sub = add i32 %46, -2
  tail call void @geni_se_init(ptr noundef %se, i32 noundef 2, i32 noundef %sub) #7
  tail call void @geni_se_select_mode(ptr noundef %se, i32 noundef 1) #7
  %setup = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %uport, i32 0, i32 6
  %47 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %setup, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_get_qup_hw_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_resources_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_resources_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_sys_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data2 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 4
  %cons = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 2
  %conv = sext i16 %7 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %8 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp eq i32 %9, %conv
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %se = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %1, i32 0, i32 1
  tail call void @geni_icc_set_tag(ptr noundef %se, i32 noundef 3) #7
  %call6 = tail call i32 @geni_icc_set_bw(ptr noundef %se) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call7 = tail call i32 @uart_suspend_port(ptr noundef %11, ptr noundef %1) #7
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_serial_sys_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data2 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call3 = tail call i32 @uart_resume_port(ptr noundef %5, ptr noundef %1) #7
  %cons = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index, align 2
  %conv = sext i16 %9 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp = icmp eq i32 %11, %conv
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %se = getelementptr inbounds %struct.qcom_geni_serial_port, ptr %1, i32 0, i32 1
  tail call void @geni_icc_set_tag(ptr noundef %se, i32 noundef 7) #7
  %call7 = tail call i32 @geni_icc_set_bw(ptr noundef %se) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_icc_set_tag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_geni_serial_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp4.not = icmp eq i16 %1, 0
  br i1 %cmp4.not, label %entry.if.end_crit_edge, label %do.end, !prof !145

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 477, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp eq i16 %3, 0
  %retval.0.i = select i1 %4, ptr @qcom_geni_console_port, ptr inttoptr (i32 -6 to ptr)
  %not. = xor i1 %4, true
  %cmp.i = or i1 %not., icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @qcom_geni_console_port)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %5 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool30.not = icmp eq i32 %5, 0
  br i1 %tobool30.not, label %do.body96, label %do.body34

do.body34:                                        ; preds = %if.end28
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !206
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool48.not = icmp eq i32 %and.i, 0
  br i1 %tobool48.not, label %do.end52, label %do.end52.thread

do.end52:                                         ; preds = %do.body34
  tail call void @trace_hardirqs_off() #7
  %call55 = tail call i32 @_raw_spin_trylock(ptr noundef nonnull %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then66, label %do.end52.if.end109_crit_edge

do.end52.if.end109_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

do.end52.thread:                                  ; preds = %do.body34
  %call55229 = tail call i32 @_raw_spin_trylock(ptr noundef nonnull %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55229)
  %tobool56.not230 = icmp eq i32 %call55229, 0
  br i1 %tobool56.not230, label %do.end52.thread.do.body68_crit_edge, label %do.end52.thread.if.end109_crit_edge

do.end52.thread.if.end109_crit_edge:              ; preds = %do.end52.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

do.end52.thread.do.body68_crit_edge:              ; preds = %do.end52.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68

if.then66:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body68

do.body68:                                        ; preds = %if.then66, %do.end52.thread.do.body68_crit_edge
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !207
  %and.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool76.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool76.not, label %if.then85, label %do.body68.do.end88_crit_edge, !prof !208

do.body68.do.end88_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88

if.then85:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %do.body68.do.end88_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #7, !srcloc !209
  br label %if.end109

do.body96:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %retval.0.i) #7
  br label %if.end109

if.end109:                                        ; preds = %do.body96, %do.end88, %do.end52.thread.if.end109_crit_edge, %do.end52.if.end109_crit_edge
  %flags.0 = phi i32 [ %call104, %do.body96 ], [ %6, %do.end52.thread.if.end109_crit_edge ], [ %6, %do.end52.if.end109_crit_edge ], [ %6, %do.end88 ]
  %locked.0.off0 = phi i1 [ true, %do.body96 ], [ true, %do.end52.thread.if.end109_crit_edge ], [ true, %do.end52.if.end109_crit_edge ], [ false, %do.end88 ]
  %membase = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 0, i32 2), ptr inttoptr (i32 42 to ptr)
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  br i1 %locked.0.off0, label %if.else130, label %if.then114

if.then114:                                       ; preds = %if.end109
  %se = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 1), ptr inttoptr (i32 354 to ptr)
  %11 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #7, !srcloc !118
  %private_data1.i = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 0, i32 59), ptr inttoptr (i32 350 to ptr)
  %13 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data1.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then114.while.body.i.preheader_crit_edge, label %if.end6.i

if.then114.while.body.i.preheader_crit_edge:      ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i:                                        ; preds = %if.then114
  %baud2.i = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 8), ptr inttoptr (i32 426 to ptr)
  %17 = ptrtoint ptr %baud2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %baud2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not.i = icmp eq i32 %18, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 115200, i32 %18
  %tx_fifo_depth.i = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 3), ptr inttoptr (i32 406 to ptr)
  %19 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_fifo_depth.i, align 4
  %tx_fifo_width.i = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 4), ptr inttoptr (i32 410 to ptr)
  %21 = ptrtoint ptr %tx_fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_fifo_width.i, align 4
  %mul.i = mul i32 %20, 1000000
  %mul5.i = mul i32 %mul.i, %22
  %div.i = udiv i32 %mul5.i, %spec.store.select.i
  %phi.bo33.i = add i32 %div.i, 509
  %23 = urem i32 %phi.bo33.i, 10
  %phi.bo34.i = sub i32 %phi.bo33.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i)
  %tobool10.not35.i = icmp eq i32 %phi.bo34.i, 0
  br i1 %tobool10.not35.i, label %if.end6.i.if.then116_crit_edge, label %if.end6.i.while.body.i.preheader_crit_edge

if.end6.i.while.body.i.preheader_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end6.i.if.then116_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

while.body.i.preheader:                           ; preds = %if.end6.i.while.body.i.preheader_crit_edge, %if.then114.while.body.i.preheader_crit_edge
  %timeout_us.136.i.ph = phi i32 [ 20000, %if.then114.while.body.i.preheader_crit_edge ], [ %phi.bo34.i, %if.end6.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.i.preheader
  %timeout_us.136.i = phi i32 [ %sub20.i, %if.end19.i.while.body.i_crit_edge ], [ %timeout_us.136.i.ph, %while.body.i.preheader ]
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr11.i = getelementptr i8, ptr %25, i32 1552
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %27 = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool14.i.not = icmp eq i32 %27, 0
  br i1 %tobool14.i.not, label %if.end19.i, label %while.body.i.do.body125_crit_edge

while.body.i.do.body125_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body125

if.end19.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #7
  %sub20.i = add i32 %timeout_us.136.i, -10
  %tobool10.not.i = icmp eq i32 %sub20.i, 0
  br i1 %tobool10.not.i, label %if.end19.i.if.then116_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end19.i.if.then116_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.then116:                                       ; preds = %if.end19.i.if.then116_crit_edge, %if.end6.i.if.then116_crit_edge
  %29 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %se, align 4
  %add.ptr.i198 = getelementptr i8, ptr %30, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 33554432) #7, !srcloc !118
  %31 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data1.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool.not.i200 = icmp eq ptr %34, null
  br i1 %tobool.not.i200, label %if.then116.while.body.i221.preheader_crit_edge, label %if.end6.i212

if.then116.while.body.i221.preheader_crit_edge:   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i221.preheader

if.end6.i212:                                     ; preds = %if.then116
  %baud2.i201 = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 8), ptr inttoptr (i32 426 to ptr)
  %35 = ptrtoint ptr %baud2.i201 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %baud2.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool3.not.i202 = icmp eq i32 %36, 0
  %spec.store.select.i203 = select i1 %tobool3.not.i202, i32 115200, i32 %36
  %tx_fifo_depth.i204 = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 3), ptr inttoptr (i32 406 to ptr)
  %37 = ptrtoint ptr %tx_fifo_depth.i204 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_fifo_depth.i204, align 4
  %tx_fifo_width.i205 = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 4), ptr inttoptr (i32 410 to ptr)
  %39 = ptrtoint ptr %tx_fifo_width.i205 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_fifo_width.i205, align 4
  %mul.i206 = mul i32 %38, 1000000
  %mul5.i207 = mul i32 %mul.i206, %40
  %div.i208 = udiv i32 %mul5.i207, %spec.store.select.i203
  %phi.bo33.i209 = add i32 %div.i208, 509
  %41 = urem i32 %phi.bo33.i209, 10
  %phi.bo34.i210 = sub i32 %phi.bo33.i209, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo34.i210)
  %tobool10.not35.i211 = icmp eq i32 %phi.bo34.i210, 0
  br i1 %tobool10.not35.i211, label %if.end6.i212.qcom_geni_serial_poll_bit.exit226_crit_edge, label %if.end6.i212.while.body.i221.preheader_crit_edge

if.end6.i212.while.body.i221.preheader_crit_edge: ; preds = %if.end6.i212
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i221.preheader

if.end6.i212.qcom_geni_serial_poll_bit.exit226_crit_edge: ; preds = %if.end6.i212
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit226

while.body.i221.preheader:                        ; preds = %if.end6.i212.while.body.i221.preheader_crit_edge, %if.then116.while.body.i221.preheader_crit_edge
  %timeout_us.136.i216.ph = phi i32 [ 20000, %if.then116.while.body.i221.preheader_crit_edge ], [ %phi.bo34.i210, %if.end6.i212.while.body.i221.preheader_crit_edge ]
  br label %while.body.i221

while.body.i221:                                  ; preds = %if.end19.i224.while.body.i221_crit_edge, %while.body.i221.preheader
  %timeout_us.136.i216 = phi i32 [ %sub20.i222, %if.end19.i224.while.body.i221_crit_edge ], [ %timeout_us.136.i216.ph, %while.body.i221.preheader ]
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  %add.ptr11.i217 = getelementptr i8, ptr %43, i32 1552
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i217) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %45 = and i32 %44, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool14.i219.not = icmp eq i32 %45, 0
  br i1 %tobool14.i219.not, label %if.end19.i224, label %while.body.i221.qcom_geni_serial_poll_bit.exit226_crit_edge

while.body.i221.qcom_geni_serial_poll_bit.exit226_crit_edge: ; preds = %while.body.i221
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit226

if.end19.i224:                                    ; preds = %while.body.i221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #7
  %sub20.i222 = add i32 %timeout_us.136.i216, -10
  %tobool10.not.i223 = icmp eq i32 %sub20.i222, 0
  br i1 %tobool10.not.i223, label %if.end19.i224.qcom_geni_serial_poll_bit.exit226_crit_edge, label %if.end19.i224.while.body.i221_crit_edge

if.end19.i224.while.body.i221_crit_edge:          ; preds = %if.end19.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i221

if.end19.i224.qcom_geni_serial_poll_bit.exit226_crit_edge: ; preds = %if.end19.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_geni_serial_poll_bit.exit226

qcom_geni_serial_poll_bit.exit226:                ; preds = %if.end19.i224.qcom_geni_serial_poll_bit.exit226_crit_edge, %while.body.i221.qcom_geni_serial_poll_bit.exit226_crit_edge, %if.end6.i212.qcom_geni_serial_poll_bit.exit226_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr123 = getelementptr i8, ptr %48, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 536870912) #7, !srcloc !118
  br label %do.body125

do.body125:                                       ; preds = %qcom_geni_serial_poll_bit.exit226, %while.body.i.do.body125_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase, align 4
  %add.ptr129 = getelementptr i8, ptr %50, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 268435456) #7, !srcloc !118
  br label %if.end153

if.else130:                                       ; preds = %if.end109
  %51 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool131.not = icmp eq i32 %51, 0
  br i1 %tobool131.not, label %if.else130.if.end153_crit_edge, label %land.lhs.true

if.else130.if.end153_crit_edge:                   ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

land.lhs.true:                                    ; preds = %if.else130
  %tx_remaining = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 12), ptr inttoptr (i32 442 to ptr)
  %52 = ptrtoint ptr %tx_remaining to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_remaining, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool132.not = icmp eq i32 %53, 0
  br i1 %tobool132.not, label %if.then133, label %land.lhs.true.if.end153_crit_edge

land.lhs.true.if.end153_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then133:                                       ; preds = %land.lhs.true
  tail call fastcc void @qcom_geni_serial_poll_tx_done(ptr noundef nonnull %retval.0.i)
  %state = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 0, i32 30), ptr inttoptr (i32 142 to ptr)
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %55, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %55, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tail, align 4
  %sub = sub i32 %57, %59
  %and136 = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.then133.if.end153_crit_edge, label %if.then138

if.then133.if.end153_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then138:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase, align 4
  %add.ptr142 = getelementptr i8, ptr %61, i32 1556
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  tail call void @arm_heavy_mb() #7
  %63 = or i32 %62, 64
  %64 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase, align 4
  %add.ptr150 = getelementptr i8, ptr %65, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %63) #7, !srcloc !118
  br label %if.end153

if.end153:                                        ; preds = %if.then138, %if.then133.if.end153_crit_edge, %land.lhs.true.if.end153_crit_edge, %if.else130.if.end153_crit_edge, %do.body125
  tail call fastcc void @__qcom_geni_serial_console_write(ptr noundef nonnull %retval.0.i, ptr noundef %s, i32 noundef %count)
  %tx_remaining154 = select i1 %4, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 12), ptr inttoptr (i32 442 to ptr)
  %66 = ptrtoint ptr %tx_remaining154 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_remaining154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool155.not = icmp eq i32 %67, 0
  br i1 %tobool155.not, label %if.end153.if.end158_crit_edge, label %if.then156

if.end153.if.end158_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

if.then156:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #7
  %69 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase, align 4
  %add.ptr.i228 = getelementptr i8, ptr %70, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 %68) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %72, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 8) #7, !srcloc !118
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end153.if.end158_crit_edge
  br i1 %locked.0.off0, label %if.then160, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then160:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %retval.0.i, i32 noundef %flags.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then160, %if.end158.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_geni_console_setup(ptr noundef %co, ptr noundef %options) #3 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #7
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 115200, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #7
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #7
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #7
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %.not = icmp eq i16 %5, 0
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @qcom_geni_console_port), label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef 0) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %6 = load ptr, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 0, i32 2), align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end20, !prof !208

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %7 = load i8, ptr getelementptr inbounds (%struct.qcom_geni_serial_port, ptr @qcom_geni_console_port, i32 0, i32 6), align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool21.not = icmp eq i8 %7, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  %call23 = tail call fastcc i32 @qcom_geni_serial_port_setup(ptr noundef nonnull @qcom_geni_console_port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end27_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %options, null
  br i1 %tobool28.not, label %if.end27.if.end30_crit_edge, label %if.then29

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27.if.end30_crit_edge
  %8 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baud, align 4
  %10 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parity, align 4
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits, align 4
  %14 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flow, align 4
  %call31 = call i32 @uart_set_options(ptr noundef nonnull @qcom_geni_console_port, ptr noundef %co, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then22.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ ptrtoint (ptr @qcom_geni_console_port to i32), %do.end ], [ %call31, %if.end30 ], [ -6, %entry.cleanup_crit_edge ], [ -6, %if.end14.cleanup_crit_edge ], [ %call23, %if.then22.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__UNIQUE_ID___earlycon_qcom_geni236, !1, !"__UNIQUE_ID___earlycon_qcom_geni236", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1221, i32 1}
!2 = !{ptr @__initcall__kmod_qcom_geni_serial__237_1553_qcom_geni_serial_init6, !3, !"__initcall__kmod_qcom_geni_serial__237_1553_qcom_geni_serial_init6", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1553, i32 1}
!4 = !{ptr @__exitcall_qcom_geni_serial_exit, !5, !"__exitcall_qcom_geni_serial_exit", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1561, i32 1}
!6 = !{ptr @__UNIQUE_ID_description238, !7, !"__UNIQUE_ID_description238", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1563, i32 1}
!8 = !{ptr @__UNIQUE_ID_file239, !9, !"__UNIQUE_ID_file239", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1564, i32 1}
!10 = !{ptr @__UNIQUE_ID_license240, !9, !"__UNIQUE_ID_license240", i1 false, i1 false}
!11 = !{ptr @earlycon_private_data, !12, !"earlycon_private_data", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1166, i32 38}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1526, i32 11}
!15 = !{ptr @qcom_geni_serial_platform_driver, !16, !"qcom_geni_serial_platform_driver", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1522, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1335, i32 49}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1340, i32 45}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1345, i32 46}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1350, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qcom_geni_serial_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @qcom_geni_serial_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1362, i32 42}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1365, i32 3}
!35 = !{ptr @qcom_geni_serial_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @qcom_geni_serial_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1397, i32 4}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1398, i32 26}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1398, i32 38}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1411, i32 47}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1414, i32 47}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1423, i32 3}
!49 = !{ptr @qcom_geni_serial_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @qcom_geni_serial_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1440, i32 3}
!53 = !{ptr @qcom_geni_serial_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @qcom_geni_serial_probe._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @qcom_geni_console_port, !56, !"qcom_geni_console_port", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 188, i32 37}
!57 = !{ptr @qcom_geni_console_pops, !58, !"qcom_geni_console_pops", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1288, i32 30}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 896, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @qcom_geni_serial_port_setup._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @qcom_geni_serial_port_setup._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 969, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @get_clk_div_rate._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @get_clk_div_rate._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"root_freq", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 152, i32 28}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 252, i32 9}
!73 = !{ptr @qcom_geni_uart_ports, !74, !"qcom_geni_uart_ports", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 161, i32 37}
!75 = !{ptr @qcom_geni_uart_pops, !76, !"qcom_geni_uart_pops", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1308, i32 30}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 586, i32 3}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @handle_rx_uart._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @handle_rx_uart._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 588, i32 3}
!84 = !{ptr @qcom_geni_serial_match_table, !85, !"qcom_geni_serial_match_table", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1515, i32 34}
!86 = !{ptr @qcom_geni_serial_pm_ops, !87, !"qcom_geni_serial_pm_ops", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1510, i32 32}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1246, i32 17}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1247, i32 14}
!92 = !{ptr @qcom_geni_console_driver, !93, !"qcom_geni_console_driver", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1244, i32 27}
!94 = !{ptr @cons_ops, !95, !"cons_ops", i1 false, i1 false}
!95 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1234, i32 23}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1107, i32 3}
!98 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @qcom_geni_console_setup._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @qcom_geni_console_setup._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1264, i32 17}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1265, i32 14}
!105 = !{ptr @qcom_geni_uart_driver, !106, !"qcom_geni_uart_driver", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/qcom_geni_serial.c", i32 1262, i32 27}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2077689}
!117 = !{i64 2154374946}
!118 = !{i64 2077271}
!119 = !{i64 2154375388}
!120 = !{i64 2154375832}
!121 = !{i64 2154376274}
!122 = !{i64 2154376719}
!123 = !{i64 2154377164}
!124 = !{i64 2154377608}
!125 = !{i64 2153148017}
!126 = !{i64 2154290459}
!127 = !{i64 2154292351}
!128 = !{i64 2154293004}
!129 = !{i64 2154293697}
!130 = !{i64 2154294268}
!131 = !{i64 2154294795}
!132 = !{i64 2154302205}
!133 = !{i64 2154291232}
!134 = !{i64 2154291664}
!135 = !{i64 2154304584}
!136 = !{i64 2154305097}
!137 = !{i64 2154301713}
!138 = !{i64 2154295558}
!139 = !{i64 2154295786}
!140 = !{i64 2154296487}
!141 = !{i64 2154296715}
!142 = !{i64 2154297416}
!143 = !{i64 2154299403}
!144 = !{i8 0, i8 2}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2154349872}
!147 = !{i64 2154350384}
!148 = !{i64 2154350891}
!149 = !{i64 2154351403}
!150 = !{i64 2154351637}
!151 = !{i64 2154352078}
!152 = !{i64 2154340761}
!153 = !{i64 2154343506}
!154 = !{i64 2154343933}
!155 = !{i64 2154346313}
!156 = !{i64 2154347080}
!157 = !{i64 2154347509}
!158 = !{i64 2154337440}
!159 = !{i64 2154372666}
!160 = !{i64 2154284251}
!161 = !{i64 2154282136}
!162 = !{i64 2154322698}
!163 = !{i64 2154323087}
!164 = !{i64 2154323489}
!165 = !{i64 2154324185}
!166 = !{i64 2154324774}
!167 = !{i64 2154325357}
!168 = !{i64 2154319267}
!169 = !{i64 2154319861}
!170 = !{i64 2154320252}
!171 = !{i64 2154320654}
!172 = !{i64 2154331596}
!173 = !{i64 2154331992}
!174 = !{i64 2154332693}
!175 = !{i64 2154333089}
!176 = !{i64 2154333785}
!177 = !{i64 2154334469}
!178 = !{i64 2154334787}
!179 = !{i64 2154335501}
!180 = !{i64 2154365222}
!181 = !{i64 2154365734}
!182 = !{i64 2154366246}
!183 = !{i64 2154366758}
!184 = !{i64 2154367970}
!185 = !{i64 2154368417}
!186 = !{i64 2154368859}
!187 = !{i64 2154369303}
!188 = !{i64 2154369745}
!189 = !{i64 2154370190}
!190 = !{i64 2154370635}
!191 = !{i64 2154371079}
!192 = !{i64 2154371517}
!193 = !{i64 2154371951}
!194 = !{i64 2154327459}
!195 = !{i64 2154328059}
!196 = !{i64 2154328455}
!197 = !{i64 2154329156}
!198 = !{i64 2154329552}
!199 = !{i64 2154299628}
!200 = !{!"branch_weights", i32 1073205, i32 2146410443}
!201 = !{i64 2154300694}
!202 = !{i64 2154301202}
!203 = !{i64 2154357163}
!204 = !{i64 2154357867}
!205 = !{i64 2154359465}
!206 = !{i64 673529, i64 673590}
!207 = !{i64 676261}
!208 = !{!"branch_weights", i32 1, i32 2000}
!209 = !{i64 676546}
!210 = !{i64 2154308567}
!211 = !{i64 2154309074}
!212 = !{i64 2154309657}
!213 = !{i64 2154310779}
!214 = !{i64 2154311122}
