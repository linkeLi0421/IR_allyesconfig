; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_dw.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_dw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
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
%struct.dw8250_port_data = type { i32, %struct.uart_8250_dma, i8 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dw8250_data = type { %struct.dw8250_port_data, i8, i32, i32, ptr, ptr, %struct.notifier_block, %struct.work_struct, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_8250_dw__235_734_dw8250_platform_driver_init6 = internal global ptr @dw8250_platform_driver_init, section ".initcall6.init", align 4
@dw8250_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw8250_probe, ptr @dw8250_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw8250_of_match, ptr @dw8250_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw8250_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw8250_platform_driver_exit = internal global ptr @dw8250_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [26 x i8] c"8250_dw.author=Jamie Iles\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [45 x i8] c"8250_dw.file=drivers/tty/serial/8250/8250_dw\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [20 x i8] c"8250_dw.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [64 x i8] c"8250_dw.description=Synopsys DesignWare 8250 serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias240 = internal constant [35 x i8] c"8250_dw.alias=platform:dw-apb-uart\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dw-apb-uart\00", [20 x i8] zeroinitializer }, align 32
@dw8250_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,octeon-3860-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-38x-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzn1-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"starfive,jh7100-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@dw8250_acpi_match = internal constant { [13 x %struct.acpi_device_id], [72 x i8] } { [13 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT33C4\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INT33C5\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INT3434\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INT3435\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"80860F0A\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"8086228A\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"APMC0D08\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AMD0020\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AMDI0020\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AMDI0022\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"BRCM2032\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"HISI0031\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [72 x i8] zeroinitializer }, align 32
@dw8250_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dw8250_suspend, ptr @dw8250_resume, ptr @dw8250_suspend, ptr @dw8250_resume, ptr @dw8250_suspend, ptr @dw8250_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw8250_runtime_suspend, ptr @dw8250_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw8250_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no registers defined\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw8250_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/tty/serial/8250/8250_dw.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw8250_probe._entry_ptr = internal global ptr @dw8250_probe._entry, section ".printk_index", align 4
@dw8250_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&p->lock\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snps,uart-16550-compatible\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-shift\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dcd-override\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsr-override\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cts-override\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ri-override\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"baudclk\00", [24 x i8] zeroinitializer }, align 32
@dw8250_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&data->clk_work)\00", [61 x i8] zeroinitializer }, align 32
@dw8250_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 535, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not enable optional baudclk: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dw8250_probe._entry_ptr.21 = internal global ptr @dw8250_probe._entry.18, section ".printk_index", align 4
@dw8250_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clock rate not defined\0A\00", [40 x i8] zeroinitializer }, align 32
@dw8250_probe._entry_ptr.24 = internal global ptr @dw8250_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb_pclk\00", [23 x i8] zeroinitializer }, align 32
@dw8250_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not enable apb_pclk\0A\00", [37 x i8] zeroinitializer }, align 32
@dw8250_probe._entry_ptr.28 = internal global ptr @dw8250_probe._entry.26, section ".printk_index", align 4
@dw8250_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 596, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set the clock notifier\0A\00", [62 x i8] zeroinitializer }, align 32
@dw8250_probe._entry_ptr.31 = internal global ptr @dw8250_probe._entry.29, section ".printk_index", align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"marvell,armada-38x-uart\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"starfive,jh7100-uart\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lpss_priv\00", [22 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"dw8250_platform_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 723, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 725, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"dw8250_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 696, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"dw8250_acpi_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 706, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"dw8250_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 691, i32 32 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 448, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 456, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 483, i32 7 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 485, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 489, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 496, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 502, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 508, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 514, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 521, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 524, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 530, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 535, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 542, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 547, i32 42 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 555, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 596, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 395, i32 28 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 415, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 417, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [37 x i8] c"../drivers/tty/serial/8250/8250_dw.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 429, i32 23 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_dw8250_platform_driver_exit, ptr @__initcall__kmod_8250_dw__235_734_dw8250_platform_driver_init6, ptr @dw8250_platform_driver_exit, ptr @dw8250_probe._entry, ptr @dw8250_probe._entry.18, ptr @dw8250_probe._entry.22, ptr @dw8250_probe._entry.26, ptr @dw8250_probe._entry.29, ptr @dw8250_probe._entry_ptr, ptr @dw8250_probe._entry_ptr.21, ptr @dw8250_probe._entry_ptr.24, ptr @dw8250_probe._entry_ptr.28, ptr @dw8250_probe._entry_ptr.31, ptr @dw8250_platform_driver, ptr @.str, ptr @dw8250_of_match, ptr @dw8250_acpi_match, ptr @dw8250_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dw8250_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @dw8250_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_acpi_match to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw8250_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw8250_platform_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw8250_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #9
  %0 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !92
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %if.end
  call void @__raw_spin_lock_init(ptr noundef nonnull %uart, ptr noundef nonnull @.str.6, ptr noundef nonnull @dw8250_probe.__key, i16 noundef signext 3) #9
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 43
  %4 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mapbase, align 4
  %irq9 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %5 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %irq9, align 4
  %handle_irq = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 15
  %6 = ptrtoint ptr %handle_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dw8250_handle_irq, ptr %handle_irq, align 4
  %pm = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 16
  %7 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dw8250_do_pm, ptr %pm, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 38
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 553648128, ptr %flags, align 4
  %dev10 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %dev10, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  %11 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %iotype, align 2
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 3
  %12 = ptrtoint ptr %serial_in to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dw8250_serial_in, ptr %serial_in, align 4
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 4
  %13 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dw8250_serial_out, ptr %serial_out, align 4
  %set_ldisc = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 6
  %14 = ptrtoint ptr %set_ldisc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dw8250_set_ldisc, ptr %set_ldisc, align 4
  %set_termios = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 5
  %15 = ptrtoint ptr %set_termios to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dw8250_set_termios, ptr %set_termios, align 4
  %16 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %16
  %add.i = add i32 %sub.i, %18
  %call13 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %16, i32 noundef %add.i) #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 2
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13, ptr %membase, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.body5.cleanup_crit_edge, label %if.end17

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %do.body5
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #9
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %dma = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1
  %fn = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dw8250_fallback_dma_filter, ptr %fn, align 4
  %usr_reg = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %usr_reg to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 31, ptr %usr_reg, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 59
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %private_data, align 4
  %call.i319 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %uart_16550_compatible = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 9
  %23 = ptrtoint ptr %uart_16550_compatible to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %uart_16550_compatible, align 4
  %bf.shl = select i1 %call.i319, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %uart_16550_compatible, align 4
  %call.i320 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %val, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320)
  %tobool26.not = icmp eq i32 %call.i320, 0
  br i1 %tobool26.not, label %if.then27, label %if.end21.if.end29_crit_edge

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %conv28 = trunc i32 %25 to i8
  %regshift = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 25
  %26 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv28, ptr %regshift, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end21.if.end29_crit_edge
  %call.i321 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull %val, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %tobool31.not = icmp eq i32 %call.i321, 0
  br i1 %tobool31.not, label %land.lhs.true, label %if.end29.if.end38_crit_edge

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end29
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp32 = icmp eq i32 %28, 4
  br i1 %cmp32, label %if.then34, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %iotype, align 2
  %30 = ptrtoint ptr %serial_in to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dw8250_serial_in32, ptr %serial_in, align 4
  %31 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dw8250_serial_out32, ptr %serial_out, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.lhs.true.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %call.i322 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br i1 %call.i322, label %if.then40, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %msr_mask_on = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %msr_mask_on to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msr_mask_on, align 4
  %or = or i32 %33, 128
  store i32 %or, ptr %msr_mask_on, align 4
  %msr_mask_off = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %msr_mask_off to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msr_mask_off, align 4
  %or41 = or i32 %35, 8
  store i32 %or41, ptr %msr_mask_off, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38.if.end42_crit_edge
  %call.i323 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br i1 %call.i323, label %if.then44, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %msr_mask_on45 = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %msr_mask_on45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msr_mask_on45, align 4
  %or46 = or i32 %37, 32
  store i32 %or46, ptr %msr_mask_on45, align 4
  %msr_mask_off47 = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %msr_mask_off47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msr_mask_off47, align 4
  %or48 = or i32 %39, 2
  store i32 %or48, ptr %msr_mask_off47, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end42.if.end49_crit_edge
  %call.i324 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br i1 %call.i324, label %if.then51, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %msr_mask_on52 = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %msr_mask_on52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msr_mask_on52, align 4
  %or53 = or i32 %41, 16
  store i32 %or53, ptr %msr_mask_on52, align 4
  %msr_mask_off54 = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %msr_mask_off54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msr_mask_off54, align 4
  %or55 = or i32 %43, 1
  store i32 %or55, ptr %msr_mask_off54, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end49.if.end56_crit_edge
  %call.i325 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br i1 %call.i325, label %if.then58, label %if.end56.if.end63_crit_edge

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %msr_mask_off59 = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %msr_mask_off59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msr_mask_off59, align 4
  %or62 = or i32 %45, 68
  store i32 %or62, ptr %msr_mask_off59, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end56.if.end63_crit_edge
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %call.i326 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef %uartclk, i32 noundef 1) #9
  %call65 = call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  %clk = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call65, ptr %clk, align 4
  %cmp67 = icmp eq ptr %call65, null
  br i1 %cmp67, label %if.then69, label %if.end63.if.end72_crit_edge

if.end63.if.end72_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef null) #9
  %47 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call70, ptr %clk, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end63.if.end72_crit_edge
  %48 = phi ptr [ %call70, %if.then69 ], [ %call65, %if.end63.if.end72_crit_edge ]
  %cmp.i = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then75, label %do.body79

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

do.body79:                                        ; preds = %if.end72
  %clk_work = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 7
  call void @__init_work(ptr noundef %clk_work, i32 noundef 0) #9
  %50 = ptrtoint ptr %clk_work to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -64, ptr %clk_work, align 4
  %lockdep_map = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 7, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @dw8250_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry84 = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %entry84 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry84, ptr %entry84, align 4
  %prev.i = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry84, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 7, i32 2
  %53 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @dw8250_clk_work_cb, ptr %func, align 4
  %clk_notifier = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 6
  %54 = ptrtoint ptr %clk_notifier to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @dw8250_clk_notifier_cb, ptr %clk_notifier, align 4
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk, align 4
  %call.i327 = call i32 @clk_prepare(ptr noundef %56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool.not.i = icmp eq i32 %call.i327, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body79.do.end94_crit_edge

do.body79.do.end94_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

if.end.i:                                         ; preds = %do.body79
  %call1.i = call i32 @clk_enable(ptr noundef %56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end95_crit_edge, label %if.then3.i

if.end.i.if.end95_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %56) #9
  br label %do.end94

do.end94:                                         ; preds = %if.then3.i, %do.body79.do.end94_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i327, %do.body79.do.end94_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i.ph) #12
  br label %if.end95

if.end95:                                         ; preds = %do.end94, %if.end.i.if.end95_crit_edge
  %57 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk, align 4
  %tobool97.not = icmp eq ptr %58, null
  br i1 %tobool97.not, label %if.end102thread-pre-split, label %if.then98

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %call100 = call i32 @clk_get_rate(ptr noundef nonnull %58) #9
  %59 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call100, ptr %uartclk, align 4
  br label %if.end102

if.end102thread-pre-split:                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load i32, ptr %uartclk, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end102thread-pre-split, %if.then98
  %61 = phi i32 [ %.pr, %if.end102thread-pre-split ], [ %call100, %if.then98 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool104.not = icmp eq i32 %61, 0
  br i1 %tobool104.not, label %do.end108, label %if.end109

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #12
  br label %err_clk

if.end109:                                        ; preds = %if.end102
  %call110 = call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.25) #9
  %pclk = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call110, ptr %pclk, align 4
  %cmp.i328 = icmp ugt ptr %call110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %call110 to i32
  br label %err_clk

if.end116:                                        ; preds = %if.end109
  %call.i329 = call i32 @clk_prepare(ptr noundef %call110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool.not.i330 = icmp eq i32 %call.i329, 0
  br i1 %tobool.not.i330, label %if.end.i333, label %if.end116.do.end123_crit_edge

if.end116.do.end123_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end123

if.end.i333:                                      ; preds = %if.end116
  %call1.i331 = call i32 @clk_enable(ptr noundef %call110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i331)
  %tobool2.not.i332 = icmp eq i32 %call1.i331, 0
  br i1 %tobool2.not.i332, label %if.end124, label %if.then3.i334

if.then3.i334:                                    ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %call110) #9
  br label %do.end123

do.end123:                                        ; preds = %if.then3.i334, %if.end116.do.end123_crit_edge
  %retval.0.i335.ph = phi i32 [ %call1.i331, %if.then3.i334 ], [ %call.i329, %if.end116.do.end123_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #12
  br label %err_clk

if.end124:                                        ; preds = %if.end.i333
  %call.i337 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %rst = getelementptr inbounds %struct.dw8250_data, ptr %call.i, i32 0, i32 8
  %64 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i337, ptr %rst, align 4
  %cmp.i338 = icmp ugt ptr %call.i337, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i338, label %if.then128, label %if.end131

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %call.i337 to i32
  br label %err_pclk

if.end131:                                        ; preds = %if.end124
  %call133 = call i32 @reset_control_deassert(ptr noundef %call.i337) #9
  %66 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev10, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 27
  %68 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i339 = icmp eq ptr %69, null
  br i1 %tobool.not.i339, label %if.end131.if.end19.i_crit_edge, label %if.then.i

if.end131.if.end19.i_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then.i:                                        ; preds = %if.end131
  %call.i340 = call i32 @of_alias_get_id(ptr noundef nonnull %69, ptr noundef nonnull @.str.32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i340)
  %cmp.i341 = icmp sgt i32 %call.i340, -1
  br i1 %cmp.i341, label %if.then1.i, label %if.then.i.if.end.i342_crit_edge

if.then.i.if.end.i342_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i342

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %line.i = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 41
  %70 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call.i340, ptr %line.i, align 4
  br label %if.end.i342

if.end.i342:                                      ; preds = %if.then1.i, %if.then.i.if.end.i342_crit_edge
  %call2.i = call zeroext i1 @of_device_is_big_endian(ptr noundef nonnull %69) #9
  br i1 %call2.i, label %if.then3.i343, label %if.end.i342.if.end4.i_crit_edge

if.end.i342.if.end4.i_crit_edge:                  ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i343:                                    ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 6, ptr %iotype, align 2
  %72 = ptrtoint ptr %serial_in to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @dw8250_serial_in32be, ptr %serial_in, align 4
  %73 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @dw8250_serial_out32be, ptr %serial_out, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i343, %if.end.i342.if.end4.i_crit_edge
  %call5.i = call i32 @of_device_is_compatible(ptr noundef nonnull %69, ptr noundef nonnull @.str.33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then7.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @dw8250_serial_out38x, ptr %serial_out, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end9.i_crit_edge
  %call10.i = call i32 @of_device_is_compatible(ptr noundef nonnull %69, ptr noundef nonnull @.str.34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end19.i_crit_edge, label %if.then12.i

if.end9.i.if.end19.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %set_termios to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @dw8250_do_set_termios, ptr %set_termios, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end19.i_crit_edge, %if.end131.if.end19.i_crit_edge
  %76 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev10, align 4
  %add.ptr.i = getelementptr i8, ptr %77, i32 -16
  %call21.i = call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i, i32 noundef 512, ptr noundef nonnull @.str.36) #9
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end19.i.dw8250_quirks.exit_crit_edge, label %if.then23.i

if.end19.i.dw8250_quirks.exit_crit_edge:          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw8250_quirks.exit

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev10, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent.i, align 8
  %rx_param.i = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 3
  %82 = ptrtoint ptr %rx_param.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %rx_param.i, align 4
  %83 = load ptr, ptr %parent.i, align 8
  %tx_param.i = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 4
  %84 = ptrtoint ptr %tx_param.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %tx_param.i, align 4
  %85 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @dw8250_idma_filter, ptr %fn, align 4
  br label %dw8250_quirks.exit

dw8250_quirks.exit:                               ; preds = %if.then23.i, %if.end19.i.dw8250_quirks.exit_crit_edge
  %86 = ptrtoint ptr %uart_16550_compatible to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load135 = load i8, ptr %uart_16550_compatible, align 4
  %87 = and i8 %bf.load135, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool137.not = icmp eq i8 %87, 0
  br i1 %tobool137.not, label %dw8250_quirks.exit.if.end140_crit_edge, label %if.then138

dw8250_quirks.exit.if.end140_crit_edge:           ; preds = %dw8250_quirks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then138:                                       ; preds = %dw8250_quirks.exit
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %handle_irq to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %handle_irq, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %dw8250_quirks.exit.if.end140_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load135)
  %tobool144.not = icmp sgt i8 %bf.load135, -1
  br i1 %tobool144.not, label %if.then145, label %if.end140.if.end146_crit_edge

if.end140.if.end146_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.then145:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  call void @dw8250_setup_port(ptr noundef nonnull %uart) #9
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end140.if.end146_crit_edge
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 23
  %89 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool147.not = icmp eq i32 %90, 0
  br i1 %tobool147.not, label %if.end146.if.end159_crit_edge, label %if.then148

if.end146.if.end159_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then148:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  %div317 = lshr i32 %90, 2
  %src_maxburst = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 5, i32 5
  %91 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %div317, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 6, i32 6
  %92 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div317, ptr %dst_maxburst, align 4
  %dma158 = getelementptr inbounds %struct.uart_8250_port, ptr %uart, i32 0, i32 19
  %93 = ptrtoint ptr %dma158 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %dma, ptr %dma158, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then148, %if.end146.if.end159_crit_edge
  %call160 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart) #9
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call160, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp164 = icmp slt i32 %call160, 0
  br i1 %cmp164, label %if.then166, label %if.end169

if.then166:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rst, align 4
  %call188 = call i32 @reset_control_assert(ptr noundef %96) #9
  br label %err_pclk

if.end169:                                        ; preds = %if.end159
  %97 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %clk, align 4
  %tobool171.not = icmp eq ptr %98, null
  br i1 %tobool171.not, label %if.end169.if.end185_crit_edge, label %if.then172

if.end169.if.end185_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end185

if.then172:                                       ; preds = %if.end169
  %call175 = call i32 @clk_notifier_register(ptr noundef nonnull %98, ptr noundef %clk_notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.else, label %do.end180

do.end180:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.30) #12
  br label %if.end185

if.else:                                          ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %101 = load ptr, ptr @system_unbound_wq, align 4
  %call.i344 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %101, ptr noundef %clk_work) #9
  br label %if.end185

if.end185:                                        ; preds = %if.else, %do.end180, %if.end169.if.end185_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %102 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i345 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  br label %cleanup

err_pclk:                                         ; preds = %if.then166, %if.then128
  %err.0 = phi i32 [ %65, %if.then128 ], [ %call160, %if.then166 ]
  %103 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %104) #9
  call void @clk_unprepare(ptr noundef %104) #9
  br label %err_clk

err_clk:                                          ; preds = %err_pclk, %do.end123, %if.then113, %do.end108
  %err.1 = phi i32 [ %63, %if.then113 ], [ %retval.0.i335.ph, %do.end123 ], [ %err.0, %err_pclk ], [ -22, %do.end108 ]
  %105 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %106) #9
  call void @clk_unprepare(ptr noundef %106) #9
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end185, %if.then75, %if.end17.cleanup_crit_edge, %do.body5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %49, %if.then75 ], [ %err.1, %err_clk ], [ 0, %if.end185 ], [ -22, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %do.body5.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  %clk = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %clk_notifier = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @clk_notifier_unregister(ptr noundef nonnull %3, ptr noundef %clk_notifier) #9
  %clk_work = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 7
  %call5 = tail call zeroext i1 @flush_work(ptr noundef %clk_work) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void @serial8250_unregister_port(i32 noundef %5) #9
  %rst = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %call7 = tail call i32 @reset_control_assert(ptr noundef %7) #9
  %pclk = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_handle_irq(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_in, align 4
  %call2 = tail call i32 %3(ptr noundef %p, i32 noundef 2) #9
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %5, null
  %and = and i32 %call2, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and)
  %cmp = icmp eq i32 %and, 12
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body3, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body3:                                         ; preds = %entry
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %p) #9
  %6 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_in, align 4
  %call10 = tail call i32 %7(ptr noundef %p, i32 noundef 5) #9
  %and11 = and i32 %call10, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %do.body3.if.end_crit_edge

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then13:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_in, align 4
  %call15 = tail call i32 %9(ptr noundef %p, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then13, %do.body3.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %p, i32 noundef %call6) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry.if.end17_crit_edge
  %call18 = tail call i32 @serial8250_handle_irq(ptr noundef %p, i32 noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %and22 = and i32 %call2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 7
  br i1 %cmp23, label %if.then25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial_in, align 4
  %usr_reg = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %usr_reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %usr_reg, align 4
  %conv27 = zext i8 %13 to i32
  %call28 = tail call i32 %11(ptr noundef %p, i32 noundef %conv27) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then25 ], [ 1, %if.end17.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_do_pm(ptr noundef %port, i32 noundef %state, i32 noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.then, label %if.then2.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  tail call void @serial8250_do_pm(ptr noundef %port, i32 noundef 0, i32 noundef %old) #9
  br label %if.end5

if.then2.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @serial8250_do_pm(ptr noundef %port, i32 noundef %state, i32 noundef %old) #9
  %dev3 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %call.i10 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 4) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2.critedge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_serial_in(ptr nocapture noundef readonly %p, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %conv2 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %offset)
  %cmp.i = icmp eq i32 %offset, 6
  br i1 %cmp.i, label %if.then.i, label %entry.dw8250_modify_msr.exit_crit_edge

entry.dw8250_modify_msr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw8250_modify_msr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data.i, align 4
  %msr_mask_on.i = getelementptr inbounds %struct.dw8250_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %msr_mask_on.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msr_mask_on.i, align 4
  %or.i = or i32 %8, %conv2
  %msr_mask_off.i = getelementptr inbounds %struct.dw8250_data, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %msr_mask_off.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msr_mask_off.i, align 4
  %neg.i = xor i32 %10, -1
  %and.i = and i32 %or.i, %neg.i
  br label %dw8250_modify_msr.exit

dw8250_modify_msr.exit:                           ; preds = %if.then.i, %entry.dw8250_modify_msr.exit_crit_edge
  %value.addr.0.i = phi i32 [ %and.i, %if.then.i ], [ %conv2, %entry.dw8250_modify_msr.exit_crit_edge ]
  ret i32 %value.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_serial_out(ptr noundef %p, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %value to i8
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %4 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regshift, align 1
  %conv1 = zext i8 %5 to i32
  %shl = shl i32 %offset, %conv1
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #9, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp = icmp eq i32 %offset, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %uart_16550_compatible = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %uart_16550_compatible to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %uart_16550_compatible, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dw8250_check_lcr(ptr noundef %p, i32 noundef %value)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_set_ldisc(ptr noundef %p, ptr noundef %termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in, align 4
  %call1 = tail call i32 %1(ptr noundef %p, i32 noundef 4) #9
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %c_line = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 4
  %4 = ptrtoint ptr %c_line to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %c_line, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %5)
  %cmp = icmp eq i8 %5, 11
  %and4 = and i32 %call1, -65
  %masksel = select i1 %cmp, i32 64, i32 0
  %mcr.0 = or i32 %masksel, %and4
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %6 = ptrtoint ptr %serial_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_out, align 4
  tail call void %7(ptr noundef %p, i32 noundef 4, i32 noundef %mcr.0) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  tail call void @serial8250_do_set_ldisc(ptr noundef %p, ptr noundef %termios) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_set_termios(ptr noundef %p, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #9
  %mul = shl i32 %call, 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %clk = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_round_rate(ptr noundef %5, i32 noundef %mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call5 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 22
  %8 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3, ptr %uartclk, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.clk_prepare_enable.exit_crit_edge

if.end7.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end7.clk_prepare_enable.exit_crit_edge
  tail call void @dw8250_do_set_termios(ptr noundef %p, ptr noundef %termios, ptr noundef %old) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dw8250_fallback_dma_filter(ptr nocapture noundef readnone %chan, ptr nocapture noundef readnone %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_serial_in32(ptr nocapture noundef readonly %p, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !100
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %offset)
  %cmp.i = icmp eq i32 %offset, 6
  br i1 %cmp.i, label %if.then.i, label %entry.dw8250_modify_msr.exit_crit_edge

entry.dw8250_modify_msr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw8250_modify_msr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %msr_mask_on.i = getelementptr inbounds %struct.dw8250_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %msr_mask_on.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msr_mask_on.i, align 4
  %or.i = or i32 %9, %5
  %msr_mask_off.i = getelementptr inbounds %struct.dw8250_data, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %msr_mask_off.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msr_mask_off.i, align 4
  %neg.i = xor i32 %11, -1
  %and.i = and i32 %or.i, %neg.i
  br label %dw8250_modify_msr.exit

dw8250_modify_msr.exit:                           ; preds = %if.then.i, %entry.dw8250_modify_msr.exit_crit_edge
  %value.addr.0.i = phi i32 [ %and.i, %if.then.i ], [ %5, %entry.dw8250_modify_msr.exit_crit_edge ]
  ret i32 %value.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_serial_out32(ptr noundef %p, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %value)
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %5 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regshift, align 1
  %conv = zext i8 %6 to i32
  %shl = shl i32 %offset, %conv
  %add.ptr = getelementptr i8, ptr %4, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp = icmp eq i32 %offset, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %uart_16550_compatible = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %uart_16550_compatible to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %uart_16550_compatible, align 4
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dw8250_check_lcr(ptr noundef %p, i32 noundef %value)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_clk_work_cb(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %work, i32 -204
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %call2 = tail call ptr @serial8250_get_port(i32 noundef %3) #9
  tail call void @serial8250_update_uartclk(ptr noundef %call2, i32 noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_clk_notifier_cb(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %0 = load ptr, ptr @system_unbound_wq, align 4
  %clk_work = getelementptr i8, ptr %nb, i32 12
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %clk_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw8250_setup_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_handle_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_pm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw8250_check_lcr(ptr noundef %p, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %shl = shl i32 3, %conv
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %iotype = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 26
  %4 = tail call i32 @llvm.bswap.i32(i32 %value)
  %conv19 = trunc i32 %value to i8
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry
  %dec39 = phi i32 [ 999, %entry ], [ %dec, %while.cond.backedge.while.body_crit_edge ]
  %5 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial_in, align 4
  %call = tail call i32 %6(ptr noundef %p, i32 noundef 3) #9
  %7 = xor i32 %call, %value
  %8 = and i32 %7, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %while.body.cleanup22_crit_edge, label %if.end

while.body.cleanup22_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup22

if.end:                                           ; preds = %while.body
  tail call void @serial8250_clear_and_reinit_fifos(ptr noundef %p) #9
  %9 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial_in, align 4
  %call1.i = tail call i32 %10(ptr noundef %p, i32 noundef 0) #9
  %11 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %iotype, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %do.body16 [
    i8 3, label %do.body
    i8 6, label %do.body12
  ]

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !103
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body16, %do.body12, %do.body
  %dec = add nsw i32 %dec39, -1
  %tobool.not = icmp eq i32 %dec39, 0
  br i1 %tobool.not, label %while.cond.backedge.cleanup22_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.cleanup22_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup22

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %value) #9, !srcloc !103
  br label %while.cond.backedge

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv19) #9, !srcloc !99
  br label %while.cond.backedge

cleanup22:                                        ; preds = %while.cond.backedge.cleanup22_crit_edge, %while.body.cleanup22_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_clear_and_reinit_fifos(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_ldisc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_update_uartclk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_serial_in32be(ptr nocapture noundef readonly %p, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %offset)
  %cmp.i = icmp eq i32 %offset, 6
  br i1 %cmp.i, label %if.then.i, label %entry.dw8250_modify_msr.exit_crit_edge

entry.dw8250_modify_msr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw8250_modify_msr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data.i, align 4
  %msr_mask_on.i = getelementptr inbounds %struct.dw8250_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %msr_mask_on.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msr_mask_on.i, align 4
  %or.i = or i32 %8, %4
  %msr_mask_off.i = getelementptr inbounds %struct.dw8250_data, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %msr_mask_off.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msr_mask_off.i, align 4
  %neg.i = xor i32 %10, -1
  %and.i = and i32 %or.i, %neg.i
  br label %dw8250_modify_msr.exit

dw8250_modify_msr.exit:                           ; preds = %if.then.i, %entry.dw8250_modify_msr.exit_crit_edge
  %value.addr.0.i = phi i32 [ %and.i, %if.then.i ], [ %4, %entry.dw8250_modify_msr.exit_crit_edge ]
  ret i32 %value.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_serial_out32be(ptr noundef %p, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %4 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regshift, align 1
  %conv = zext i8 %5 to i32
  %shl = shl i32 %offset, %conv
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %value) #9, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp = icmp eq i32 %offset, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %uart_16550_compatible = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %uart_16550_compatible to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %uart_16550_compatible, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dw8250_check_lcr(ptr noundef %p, i32 noundef %value)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_serial_out38x(ptr noundef %p, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp = icmp eq i32 %offset, 3
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.then
  %dec10.i = phi i32 [ 19999, %if.then ], [ %dec.i, %if.end6.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %4 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regshift.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl i32 5, %conv.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i, label %if.end.i, label %while.body.i.do.body_crit_edge

while.body.i.do.body_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19000, i32 %dec10.i)
  %cmp.i = icmp ult i32 %dec10.i, 19000
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %dec.i = add nsw i32 %dec10.i, -1
  %tobool.not.i = icmp eq i32 %dec10.i, 0
  br i1 %tobool.not.i, label %if.end6.i.do.body_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end6.i.do.body_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %if.end6.i.do.body_crit_edge, %while.body.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %value to i8
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %11 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regshift, align 1
  %conv1 = zext i8 %12 to i32
  %shl = shl i32 %offset, %conv1
  %add.ptr = getelementptr i8, ptr %10, i32 %shl
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #9, !srcloc !99
  br i1 %cmp, label %land.lhs.true, label %do.body.if.end5_crit_edge

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %do.body
  %uart_16550_compatible = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %uart_16550_compatible to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %uart_16550_compatible, align 4
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dw8250_check_lcr(ptr noundef %p, i32 noundef %value)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %do.body.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dw8250_idma_filter(ptr nocapture noundef readonly %chan, ptr noundef readnone %param) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %cmp = icmp eq ptr %3, %param
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @serial8250_suspend_port(i32 noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @serial8250_resume_port(i32 noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %pclk = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw8250_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pclk = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %clk = getelementptr inbounds %struct.dw8250_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i4 = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %if.end.i8, label %clk_prepare_enable.exit.clk_prepare_enable.exit11_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit11_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit11

if.end.i8:                                        ; preds = %clk_prepare_enable.exit
  %call1.i6 = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool2.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool2.not.i7, label %if.end.i8.clk_prepare_enable.exit11_crit_edge, label %if.then3.i9

if.end.i8.clk_prepare_enable.exit11_crit_edge:    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit11

if.then3.i9:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %clk_prepare_enable.exit11

clk_prepare_enable.exit11:                        ; preds = %if.then3.i9, %if.end.i8.clk_prepare_enable.exit11_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_8250_dw__235_734_dw8250_platform_driver_init6, !1, !"__initcall__kmod_8250_dw__235_734_dw8250_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 734, i32 1}
!2 = !{ptr @__exitcall_dw8250_platform_driver_exit, !1, !"__exitcall_dw8250_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author236, !4, !"__UNIQUE_ID_author236", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 736, i32 1}
!5 = !{ptr @__UNIQUE_ID_file237, !6, !"__UNIQUE_ID_file237", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 737, i32 1}
!7 = !{ptr @__UNIQUE_ID_license238, !6, !"__UNIQUE_ID_license238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description239, !9, !"__UNIQUE_ID_description239", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 738, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias240, !11, !"__UNIQUE_ID_alias240", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 739, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 725, i32 12}
!14 = !{ptr @dw8250_platform_driver, !15, !"dw8250_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 723, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 448, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dw8250_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dw8250_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @dw8250_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 456, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 483, i32 7}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 485, i32 38}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 489, i32 38}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 496, i32 37}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 502, i32 37}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 508, i32 37}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 514, i32 37}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 521, i32 32}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 524, i32 41}
!45 = !{ptr @dw8250_probe.__key.16, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 530, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 535, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dw8250_probe._entry.18, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dw8250_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 542, i32 3}
!55 = !{ptr @dw8250_probe._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @dw8250_probe._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 547, i32 42}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 555, i32 3}
!61 = !{ptr @dw8250_probe._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @dw8250_probe._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 596, i32 4}
!65 = !{ptr @dw8250_probe._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @dw8250_probe._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 395, i32 28}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 415, i32 35}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 417, i32 35}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 420, i32 30}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 429, i32 23}
!77 = !{ptr @dw8250_of_match, !78, !"dw8250_of_match", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 696, i32 34}
!79 = !{ptr @dw8250_acpi_match, !80, !"dw8250_acpi_match", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 706, i32 36}
!81 = !{ptr @dw8250_pm_ops, !82, !"dw8250_pm_ops", i1 false, i1 false}
!82 = !{!"../drivers/tty/serial/8250/8250_dw.c", i32 691, i32 32}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i64 2148205374}
!94 = !{i64 690197, i64 690222, i64 690244, i64 690260, i64 690272, i64 690292, i64 690316, i64 690332, i64 690344}
!95 = !{i64 2148205562}
!96 = !{i64 4795651}
!97 = !{i64 2155261848}
!98 = !{i64 2155261502}
!99 = !{i64 4795256}
!100 = !{i64 4795871}
!101 = !{i64 2155262847}
!102 = !{i64 2155262083}
!103 = !{i64 4795453}
!104 = !{i64 2155259414}
!105 = !{i64 2155259838}
!106 = !{i64 2155260105}
!107 = !{i64 2155263511}
!108 = !{i64 2155263109}
!109 = !{i64 2155260413}
!110 = !{i64 2155261191}
