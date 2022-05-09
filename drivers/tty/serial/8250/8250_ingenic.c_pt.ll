; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_ingenic.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_ingenic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ingenic_uart_config = type { i32, i32 }
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
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ingenic_uart_data = type { ptr, ptr, i32 }

@__UNIQUE_ID___earlycon_jz4740_uart234 = internal constant %struct.earlycon_id { [15 x i8] c"jz4740_uart\00\00\00\00", i8 0, [128 x i8] c"ingenic,jz4740-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_jz4770_uart235 = internal constant %struct.earlycon_id { [15 x i8] c"jz4770_uart\00\00\00\00", i8 0, [128 x i8] c"ingenic,jz4770-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_jz4775_uart236 = internal constant %struct.earlycon_id { [15 x i8] c"jz4775_uart\00\00\00\00", i8 0, [128 x i8] c"ingenic,jz4775-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_jz4780_uart237 = internal constant %struct.earlycon_id { [15 x i8] c"jz4780_uart\00\00\00\00", i8 0, [128 x i8] c"ingenic,jz4780-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_x1000_uart238 = internal constant %struct.earlycon_id { [15 x i8] c"x1000_uart\00\00\00\00\00", i8 0, [128 x i8] c"ingenic,x1000-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_early_console_setup }, section "__earlycon_table", align 4
@__initcall__kmod_8250_ingenic__239_349_ingenic_uart_platform_driver_init6 = internal global ptr @ingenic_uart_platform_driver_init, section ".initcall6.init", align 4
@ingenic_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_uart_probe, ptr @ingenic_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ingenic_uart_platform_driver_exit = internal global ptr @ingenic_uart_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [32 x i8] c"8250_ingenic.author=Paul Burton\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [55 x i8] c"8250_ingenic.file=drivers/tty/serial/8250/8250_ingenic\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [25 x i8] c"8250_ingenic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [49 x i8] c"8250_ingenic.description=Ingenic SoC UART driver\00", section ".modinfo", align 1
@early_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@initial_boot_params = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"/ext\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ingenic-uart\00", [19 x i8] zeroinitializer }, align 32
@of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_uart_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_uart_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_uart_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4775-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_uart_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4780_uart_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1000_uart_config }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@ingenic_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 217, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ingenic_uart_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/tty/serial/8250/8250_ingenic.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ingenic_uart_probe._entry_ptr = internal global ptr @ingenic_uart_probe._entry, section ".printk_index", align 4
@ingenic_uart_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 227, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no registers defined\0A\00", [42 x i8] zeroinitializer }, align 32
@ingenic_uart_probe._entry_ptr.10 = internal global ptr @ingenic_uart_probe._entry.8, section ".printk_index", align 4
@ingenic_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&uart.port.lock\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"module\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to get module clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"baud\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to get baud clock\0A\00", [38 x i8] zeroinitializer }, align 32
@ingenic_uart_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 271, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not enable module clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ingenic_uart_probe._entry_ptr.19 = internal global ptr @ingenic_uart_probe._entry.17, section ".printk_index", align 4
@ingenic_uart_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 277, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not enable baud clock: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ingenic_uart_probe._entry_ptr.22 = internal global ptr @ingenic_uart_probe._entry.20, section ".printk_index", align 4
@jz4740_uart_config = internal constant { %struct.ingenic_uart_config, [24 x i8] } { %struct.ingenic_uart_config { i32 8, i32 16 }, [24 x i8] zeroinitializer }, align 32
@jz4760_uart_config = internal constant { %struct.ingenic_uart_config, [24 x i8] } { %struct.ingenic_uart_config { i32 16, i32 32 }, [24 x i8] zeroinitializer }, align 32
@jz4780_uart_config = internal constant { %struct.ingenic_uart_config, [24 x i8] } { %struct.ingenic_uart_config { i32 32, i32 64 }, [24 x i8] zeroinitializer }, align 32
@x1000_uart_config = internal constant { %struct.ingenic_uart_config, [24 x i8] } { %struct.ingenic_uart_config { i32 32, i32 64 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.24 = private unnamed_addr constant [29 x i8] c"ingenic_uart_platform_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 340, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"early_device\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 43, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 79, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 83, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 342, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 329, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 217, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 227, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 235, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 250, i32 44 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 259, i32 46 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 262, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 264, i32 44 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 267, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 271, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 277, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"jz4740_uart_config\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 309, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"jz4760_uart_config\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 314, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"jz4780_uart_config\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 319, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"x1000_uart_config\00", align 1
@___asan_gen_.109 = private constant [42 x i8] c"../drivers/tty/serial/8250/8250_ingenic.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 324, i32 41 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID___earlycon_jz4740_uart234, ptr @__UNIQUE_ID___earlycon_jz4770_uart235, ptr @__UNIQUE_ID___earlycon_jz4775_uart236, ptr @__UNIQUE_ID___earlycon_jz4780_uart237, ptr @__UNIQUE_ID___earlycon_x1000_uart238, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_ingenic_uart_platform_driver_exit, ptr @__initcall__kmod_8250_ingenic__239_349_ingenic_uart_platform_driver_init6, ptr @ingenic_uart_platform_driver_exit, ptr @ingenic_uart_probe._entry, ptr @ingenic_uart_probe._entry.17, ptr @ingenic_uart_probe._entry.20, ptr @ingenic_uart_probe._entry.8, ptr @ingenic_uart_probe._entry_ptr, ptr @ingenic_uart_probe._entry_ptr.10, ptr @ingenic_uart_probe._entry_ptr.19, ptr @ingenic_uart_probe._entry_ptr.22, ptr @ingenic_uart_platform_driver, ptr @early_device, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @of_match, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @ingenic_uart_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @jz4740_uart_config, ptr @jz4760_uart_config, ptr @jz4780_uart_config, ptr @x1000_uart_config], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_uart_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_uart_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_uart_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_uart_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_uart_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_uart_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_uart_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_early_console_setup(ptr noundef %dev, ptr noundef %opt) #0 section ".init.text" align 64 {
entry:
  %baud = alloca i32, align 4
  %parity = alloca i32, align 4
  %bits = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #5
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 115200, ptr %baud, align 4
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %opt, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #5
  %3 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %parity, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #5
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bits, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #5
  %5 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %flow, align 4, !annotation !82
  call void @uart_parse_options(ptr noundef nonnull %opt, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call fastcc void @ingenic_early_console_setup_clock(ptr noundef %dev) #8
  %baud6 = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %baud6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %baud, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %uartclk = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 22
  %9 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uartclk, align 4
  %11 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %baud, align 4
  %mul = shl i32 %12, 4
  %div = sdiv i32 %mul, 2
  %add = add i32 %div, %10
  %div11 = udiv i32 %add, %mul
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr.i37 = getelementptr i8, ptr %16, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 -2097152000) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr.i40 = getelementptr i8, ptr %20, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr.i42 = getelementptr i8, ptr %22, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 50331648) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr.i44 = getelementptr i8, ptr %24, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 385875968) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr.i46 = getelementptr i8, ptr %26, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 50331648) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr.i48 = getelementptr i8, ptr %28, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 -2097152000) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %conv.i = shl i32 %div11, 24
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %conv.i) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %31 = shl i32 %div11, 16
  %conv.i50 = and i32 %31, -16777216
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  %add.ptr.i52 = getelementptr i8, ptr %33, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %conv.i50) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr.i54 = getelementptr i8, ptr %35, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 50331648) #5, !srcloc !84
  store ptr %dev, ptr @early_device, align 4
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %write = getelementptr inbounds %struct.console, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ingenic_early_console_write, ptr %write, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #5
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_uart_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ingenic_uart_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_uart_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ingenic_uart_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ingenic_early_console_setup_clock(ptr nocapture noundef writeonly %dev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initial_boot_params to i32))
  %0 = load ptr, ptr @initial_boot_params, align 4
  %call = tail call i32 @fdt_path_offset(ptr noundef %0, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @fdt_getprop(ptr noundef %0, i32 noundef %call, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call1, align 4
  %uartclk = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 22
  %3 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %uartclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_early_console_write(ptr nocapture noundef readnone %console, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @early_device, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @ingenic_early_console_putc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_early_console_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %3 = and i32 %2, 1073741824
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %conv.i4 = shl i32 %c, 24
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %conv.i4) #5, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_uart_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #5
  %0 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %do.body18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body18:                                        ; preds = %if.end12
  call void @__raw_spin_lock_init(ptr noundef nonnull %uart, ptr noundef nonnull @.str.11, ptr noundef nonnull @ingenic_uart_probe.__key, i16 noundef signext 3) #5
  %type = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 38
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %type, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2013265856, ptr %flags, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  %3 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %iotype, align 2
  %4 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call5, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 43
  %6 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mapbase, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 25
  %7 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %regshift, align 1
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 4
  %8 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ingenic_uart_serial_out, ptr %serial_out, align 4
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 3
  %9 = ptrtoint ptr %serial_in to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ingenic_uart_serial_in, ptr %serial_in, align 4
  %irq30 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %10 = ptrtoint ptr %irq30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2, ptr %irq30, align 4
  %dev33 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %11 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev33, align 4
  %fifosize = getelementptr inbounds %struct.ingenic_uart_config, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifosize, align 4
  %fifosize35 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 23
  %14 = ptrtoint ptr %fifosize35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fifosize35, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call, align 4
  %tx_loadsz36 = getelementptr inbounds %struct.uart_8250_port, ptr %uart, i32 0, i32 6
  %17 = ptrtoint ptr %tx_loadsz36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tx_loadsz36, align 4
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %uart, i32 0, i32 3
  %18 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8448, ptr %capabilities, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call38 = call i32 @of_alias_get_id(ptr noundef %20, ptr noundef nonnull @.str.12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call38)
  %cmp39 = icmp sgt i32 %call38, -1
  br i1 %cmp39, label %if.then40, label %do.body18.if.end43_crit_edge

do.body18.if.end43_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then40:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %line42 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 41
  %21 = ptrtoint ptr %line42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call38, ptr %line42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %do.body18.if.end43_crit_edge
  %22 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %23
  %add.i = add i32 %sub.i, %25
  %call47 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %23, i32 noundef %add.i) #5
  %membase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 2
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call47, ptr %membase, align 4
  %tobool51.not = icmp eq ptr %call47, null
  br i1 %tobool51.not, label %if.end43.cleanup_crit_edge, label %if.end53

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %if.end43
  %call55 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #5
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call55, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then58, label %if.end63

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call55 to i32
  %call62 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %28, ptr noundef nonnull @.str.14) #5
  br label %cleanup

if.end63:                                         ; preds = %if.end53
  %call65 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #5
  %clk_baud = getelementptr inbounds %struct.ingenic_uart_data, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %clk_baud to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call65, ptr %clk_baud, align 4
  %cmp.i152 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then68, label %if.end73

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call65 to i32
  %call72 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %30, ptr noundef nonnull @.str.16) #5
  br label %cleanup

if.end73:                                         ; preds = %if.end63
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %call.i153 = call i32 @clk_prepare(ptr noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool.not.i = icmp eq i32 %call.i153, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end73.do.end80_crit_edge

if.end73.do.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end80

if.end.i:                                         ; preds = %if.end73
  %call1.i = call i32 @clk_enable(ptr noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end82, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %32) #5
  br label %do.end80

do.end80:                                         ; preds = %if.then3.i, %if.end73.do.end80_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i153, %if.end73.do.end80_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end82:                                         ; preds = %if.end.i
  %33 = ptrtoint ptr %clk_baud to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk_baud, align 4
  %call.i154 = call i32 @clk_prepare(ptr noundef %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool.not.i155 = icmp eq i32 %call.i154, 0
  br i1 %tobool.not.i155, label %if.end.i158, label %if.end82.do.end89_crit_edge

if.end82.do.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end89

if.end.i158:                                      ; preds = %if.end82
  %call1.i156 = call i32 @clk_enable(ptr noundef %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156)
  %tobool2.not.i157 = icmp eq i32 %call1.i156, 0
  br i1 %tobool2.not.i157, label %if.end91, label %if.then3.i159

if.then3.i159:                                    ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %34) #5
  br label %do.end89

do.end89:                                         ; preds = %if.then3.i159, %if.end82.do.end89_crit_edge
  %retval.0.i160.ph = phi i32 [ %call1.i156, %if.then3.i159 ], [ %call.i154, %if.end82.do.end89_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i160.ph) #9
  br label %out_disable_moduleclk

if.end91:                                         ; preds = %if.end.i158
  %35 = ptrtoint ptr %clk_baud to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk_baud, align 4
  %call93 = call i32 @clk_get_rate(ptr noundef %36) #5
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %37 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call93, ptr %uartclk, align 4
  %call95 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart) #5
  %line96 = getelementptr inbounds %struct.ingenic_uart_data, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %line96 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call95, ptr %line96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp98 = icmp slt i32 %call95, 0
  br i1 %cmp98, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %clk_baud to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_baud, align 4
  call void @clk_disable(ptr noundef %40) #5
  call void @clk_unprepare(ptr noundef %40) #5
  br label %out_disable_moduleclk

if.end101:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_disable_moduleclk:                            ; preds = %if.then99, %do.end89
  %err.0 = phi i32 [ %retval.0.i160.ph, %do.end89 ], [ %call95, %if.then99 ]
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  call void @clk_disable(ptr noundef %43) #5
  call void @clk_unprepare(ptr noundef %43) #5
  br label %cleanup

cleanup:                                          ; preds = %out_disable_moduleclk, %if.end101, %do.end80, %if.then68, %if.then58, %if.end43.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call62, %if.then58 ], [ %call72, %if.then68 ], [ 0, %if.end101 ], [ -22, %do.end10 ], [ -19, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -12, %if.end43.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end80 ], [ %err.0, %out_disable_moduleclk ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_uart_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %line = getelementptr inbounds %struct.ingenic_uart_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %clk_baud = getelementptr inbounds %struct.ingenic_uart_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %clk_baud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_baud, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_uart_serial_out(ptr noundef %p, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %offset, label %entry.do.body_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 4, label %sw.bb3
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %value, 16
  br label %do.body

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = shl i32 %value, 2
  %shl = and i32 %and, 16
  %or2 = or i32 %shl, %value
  br label %do.body

sw.bb3:                                           ; preds = %entry
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serial_in, align 4
  %call = tail call i32 %2(ptr noundef %p, i32 noundef 1) #5
  %and4 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %or5 = or i32 %value, 192
  br label %do.body

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %and6 = and i32 %value, -193
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then, %sw.bb1, %sw.bb, %entry.do.body_crit_edge
  %value.addr.0 = phi i32 [ %value, %entry.do.body_crit_edge ], [ %or5, %if.then ], [ %and6, %if.else ], [ %or2, %sw.bb1 ], [ %or, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %value.addr.0 to i8
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %5 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regshift, align 1
  %conv7 = zext i8 %6 to i32
  %shl8 = shl i32 %offset, %conv7
  %add.ptr = getelementptr i8, ptr %4, i32 %shl8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #5, !srcloc !88
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_uart_serial_in(ptr nocapture noundef readonly %p, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %2 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %regshift, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %offset, %conv
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %conv2 = zext i8 %4 to i32
  %5 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %offset, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %conv2, 239
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and4 = and i32 %conv2, 63
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %value.0 = phi i32 [ %conv2, %entry.sw.epilog_crit_edge ], [ %and4, %sw.bb3 ], [ %and, %sw.bb ]
  ret i32 %value.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__UNIQUE_ID___earlycon_jz4740_uart234, !1, !"__UNIQUE_ID___earlycon_jz4740_uart234", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 132, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_jz4770_uart235, !3, !"__UNIQUE_ID___earlycon_jz4770_uart235", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 135, i32 1}
!4 = !{ptr @__UNIQUE_ID___earlycon_jz4775_uart236, !5, !"__UNIQUE_ID___earlycon_jz4775_uart236", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 138, i32 1}
!6 = !{ptr @__UNIQUE_ID___earlycon_jz4780_uart237, !7, !"__UNIQUE_ID___earlycon_jz4780_uart237", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 141, i32 1}
!8 = !{ptr @__UNIQUE_ID___earlycon_x1000_uart238, !9, !"__UNIQUE_ID___earlycon_x1000_uart238", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 144, i32 1}
!10 = !{ptr @__initcall__kmod_8250_ingenic__239_349_ingenic_uart_platform_driver_init6, !11, !"__initcall__kmod_8250_ingenic__239_349_ingenic_uart_platform_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 349, i32 1}
!12 = !{ptr @__exitcall_ingenic_uart_platform_driver_exit, !11, !"__exitcall_ingenic_uart_platform_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author240, !14, !"__UNIQUE_ID_author240", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 351, i32 1}
!15 = !{ptr @__UNIQUE_ID_file241, !16, !"__UNIQUE_ID_file241", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 352, i32 1}
!17 = !{ptr @__UNIQUE_ID_license242, !16, !"__UNIQUE_ID_license242", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description243, !19, !"__UNIQUE_ID_description243", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 353, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 79, i32 32}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 83, i32 34}
!24 = !{ptr @early_device, !25, !"early_device", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 43, i32 32}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 342, i32 12}
!28 = !{ptr @ingenic_uart_platform_driver, !29, !"ingenic_uart_platform_driver", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 340, i32 31}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 217, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ingenic_uart_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @ingenic_uart_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 227, i32 3}
!40 = !{ptr @ingenic_uart_probe._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ingenic_uart_probe._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @ingenic_uart_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 235, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 250, i32 44}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 259, i32 46}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 262, i32 10}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 264, i32 44}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 267, i32 10}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 271, i32 3}
!57 = !{ptr @ingenic_uart_probe._entry.17, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ingenic_uart_probe._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 277, i32 3}
!61 = !{ptr @ingenic_uart_probe._entry.20, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ingenic_uart_probe._entry_ptr.22, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @of_match, !64, !"of_match", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 329, i32 34}
!65 = !{ptr @jz4740_uart_config, !66, !"jz4740_uart_config", i1 false, i1 false}
!66 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 309, i32 41}
!67 = !{ptr @jz4760_uart_config, !68, !"jz4760_uart_config", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 314, i32 41}
!69 = !{ptr @jz4780_uart_config, !70, !"jz4780_uart_config", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 319, i32 41}
!71 = !{ptr @x1000_uart_config, !72, !"x1000_uart_config", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/8250/8250_ingenic.c", i32 324, i32 41}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i64 2154756500}
!84 = !{i64 2042932}
!85 = !{i64 2043350}
!86 = !{i64 2154756272}
!87 = !{i64 2154762773}
!88 = !{i64 2042735}
!89 = !{i64 2043130}
!90 = !{i64 2154763117}
