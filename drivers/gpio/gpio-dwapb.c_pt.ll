; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-dwapb.c_pt.bc'
source_filename = "../drivers/gpio/gpio-dwapb.c"
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.dwapb_platform_data = type { ptr, i32 }
%struct.dwapb_port_property = type { ptr, i32, i32, i32, [32 x i32] }
%struct.dwapb_gpio = type { ptr, ptr, ptr, i32, i32, ptr, [2 x %struct.clk_bulk_data] }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.dwapb_gpio_port = type { %struct.gpio_chip, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.dwapb_gpio_port_irqchip = type { %struct.irq_chip, i32, [32 x i32] }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.dwapb_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_gpio_dwapb__227_834_dwapb_gpio_driver_init6 = internal global ptr @dwapb_gpio_driver_init, section ".initcall6.init", align 4
@dwapb_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwapb_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwapb_of_match, ptr @dwapb_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwapb_gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwapb_gpio_driver_exit = internal global ptr @dwapb_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [40 x i8] c"gpio_dwapb.file=drivers/gpio/gpio-dwapb\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [23 x i8] c"gpio_dwapb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [29 x i8] c"gpio_dwapb.author=Jamie Iles\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [59 x i8] c"gpio_dwapb.description=Synopsys DesignWare APB GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"gpio_dwapb.alias=platform:gpio-dwapb\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio-dwapb\00", [21 x i8] zeroinitializer }, align 32
@dwapb_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-gpio-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dwapb_acpi_match = internal constant { [4 x %struct.acpi_device_id], [32 x i8] } { [4 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"HISI0181\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"APMC0D07\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"APMC0D81\00", i32 1, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dwapb_gpio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dwapb_gpio_suspend, ptr @dwapb_gpio_resume, ptr @dwapb_gpio_suspend, ptr @dwapb_gpio_resume, ptr @dwapb_gpio_suspend, ptr @dwapb_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@dwapb_gpio_get_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 584, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing/invalid port index for port%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwapb_gpio_get_pdata\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpio/gpio-dwapb.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwapb_gpio_get_pdata._entry_ptr = internal global ptr @dwapb_gpio_get_pdata._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snps,nr-gpios\00", [18 x i8] zeroinitializer }, align 32
@dwapb_gpio_get_pdata._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 593, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to get number of gpios for port%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dwapb_gpio_get_pdata._entry_ptr.12 = internal global ptr @dwapb_gpio_get_pdata._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-base\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot get reset descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@dwapb_get_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 632, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot deassert reset lane\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwapb_get_reset\00", [16 x i8] zeroinitializer }, align 32
@dwapb_get_reset._entry_ptr = internal global ptr @dwapb_get_reset._entry, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"db\00", [29 x i8] zeroinitializer }, align 32
@dwapb_get_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 656, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot get APB/Debounce clocks\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwapb_get_clks\00", [17 x i8] zeroinitializer }, align 32
@dwapb_get_clks._entry_ptr = internal global ptr @dwapb_get_clks._entry, section ".printk_index", align 4
@dwapb_get_clks._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 662, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot enable APB/Debounce clocks\0A\00", [61 x i8] zeroinitializer }, align 32
@dwapb_get_clks._entry_ptr.23 = internal global ptr @dwapb_get_clks._entry.21, section ".printk_index", align 4
@dwapb_gpio_add_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 513, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to init gpio chip for port%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwapb_gpio_add_port\00", [44 x i8] zeroinitializer }, align 32
@dwapb_gpio_add_port._entry_ptr = internal global ptr @dwapb_gpio_add_port._entry, section ".printk_index", align 4
@dwapb_gpio_add_port.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dwapb_gpio_add_port.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dwapb_gpio_add_port._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 532, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to register gpiochip for port%d\0A\00", [56 x i8] zeroinitializer }, align 32
@dwapb_gpio_add_port._entry_ptr.28 = internal global ptr @dwapb_gpio_add_port._entry.26, section ".printk_index", align 4
@dwapb_configure_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 433, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no IRQ for port%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwapb_configure_irqs\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dwapb_configure_irqs._entry_ptr = internal global ptr @dwapb_configure_irqs._entry, section ".printk_index", align 4
@dwapb_configure_irqs._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.4, i32 468, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error requesting IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@dwapb_configure_irqs._entry_ptr.34 = internal global ptr @dwapb_configure_irqs._entry.32, section ".printk_index", align 4
@dwapb_gpio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 784, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot reenable APB/Debounce clocks\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwapb_gpio_resume\00", [46 x i8] zeroinitializer }, align 32
@dwapb_gpio_resume._entry_ptr = internal global ptr @dwapb_gpio_resume._entry, section ".printk_index", align 4
@switch.table.dwapb_gpio_suspend = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 68, i32 52, i32 56, i32 60, i32 68, i32 68, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.dwapb_gpio_suspend.37 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 68, i32 52, i32 56, i32 60, i32 68, i32 68, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.dwapb_gpio_suspend.38 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 68, i32 52, i32 56, i32 60, i32 68, i32 68, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.dwapb_gpio_resume = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 68, i32 52, i32 56, i32 60, i32 68, i32 68, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.dwapb_gpio_resume.39 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 68, i32 52, i32 56, i32 60, i32 68, i32 68, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.dwapb_gpio_resume.40 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 68, i32 52, i32 56, i32 60, i32 68, i32 68, i32 64], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"dwapb_gpio_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 824, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 826, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"dwapb_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 669, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"dwapb_acpi_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 676, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"dwapb_gpio_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 821, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 581, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 583, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 589, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 590, i32 40 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 591, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 601, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 628, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 632, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 651, i32 21 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 652, i32 21 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 656, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 662, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 512, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 529, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 531, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 433, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 468, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [29 x i8] c"../drivers/gpio/gpio-dwapb.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 784, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [32 x i8] c"switch.table.dwapb_gpio_suspend\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [35 x i8] c"switch.table.dwapb_gpio_suspend.37\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [35 x i8] c"switch.table.dwapb_gpio_suspend.38\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [31 x i8] c"switch.table.dwapb_gpio_resume\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [34 x i8] c"switch.table.dwapb_gpio_resume.39\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [34 x i8] c"switch.table.dwapb_gpio_resume.40\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_dwapb_gpio_driver_exit, ptr @__initcall__kmod_gpio_dwapb__227_834_dwapb_gpio_driver_init6, ptr @dwapb_configure_irqs._entry, ptr @dwapb_configure_irqs._entry.32, ptr @dwapb_configure_irqs._entry_ptr, ptr @dwapb_configure_irqs._entry_ptr.34, ptr @dwapb_get_clks._entry, ptr @dwapb_get_clks._entry.21, ptr @dwapb_get_clks._entry_ptr, ptr @dwapb_get_clks._entry_ptr.23, ptr @dwapb_get_reset._entry, ptr @dwapb_get_reset._entry_ptr, ptr @dwapb_gpio_add_port._entry, ptr @dwapb_gpio_add_port._entry.26, ptr @dwapb_gpio_add_port._entry_ptr, ptr @dwapb_gpio_add_port._entry_ptr.28, ptr @dwapb_gpio_driver_exit, ptr @dwapb_gpio_get_pdata._entry, ptr @dwapb_gpio_get_pdata._entry.9, ptr @dwapb_gpio_get_pdata._entry_ptr, ptr @dwapb_gpio_get_pdata._entry_ptr.12, ptr @dwapb_gpio_resume._entry, ptr @dwapb_gpio_resume._entry_ptr, ptr @dwapb_gpio_driver, ptr @.str, ptr @dwapb_of_match, ptr @dwapb_acpi_match, ptr @dwapb_gpio_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @dwapb_gpio_add_port.lock_key, ptr @dwapb_gpio_add_port.request_key, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @switch.table.dwapb_gpio_suspend, ptr @switch.table.dwapb_gpio_suspend.37, ptr @switch.table.dwapb_gpio_suspend.38, ptr @switch.table.dwapb_gpio_resume, ptr @switch.table.dwapb_gpio_resume.39, ptr @switch.table.dwapb_gpio_resume.40], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_acpi_match to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_gpio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_gpio_get_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_gpio_get_pdata._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_get_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_get_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_get_clks._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_gpio_add_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_gpio_add_port.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_gpio_add_port.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_gpio_add_port._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_configure_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_configure_irqs._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwapb_gpio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwapb_gpio_suspend to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwapb_gpio_suspend.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwapb_gpio_suspend.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwapb_gpio_resume to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwapb_gpio_resume.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwapb_gpio_resume.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwapb_gpio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwapb_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwapb_gpio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @device_get_child_node_count(ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then_crit_edge, label %if.end5.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 144) #7
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !99

devm_kcalloc.exit.thread.i:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %call.i.i, align 4
  br label %if.then

devm_kcalloc.exit.i:                              ; preds = %if.end5.i
  %3 = extractvalue { i32, i1 } %0, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %3, i32 noundef 3520) #7
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i.i.i, ptr %call.i.i, align 4
  %tobool8.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool8.not.i, label %devm_kcalloc.exit.i.if.then_crit_edge, label %if.end11.i

devm_kcalloc.exit.i.if.then_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end11.i:                                       ; preds = %devm_kcalloc.exit.i
  %nports12.i = getelementptr inbounds %struct.dwapb_platform_data, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %nports12.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %nports12.i, align 4
  %call13.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #7
  %tobool14.not90.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not90.i, label %if.end11.i.dwapb_gpio_get_pdata.exit_crit_edge, label %for.body.lr.ph.i

if.end11.i.dwapb_gpio_get_pdata.exit_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_gpio_get_pdata.exit

for.body.lr.ph.i:                                 ; preds = %if.end11.i
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.093.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %fwnode.091.i = phi ptr [ %call13.i, %for.body.lr.ph.i ], [ %call44.i, %for.inc.i.for.body.i_crit_edge ]
  %inc.i = add i32 %i.093.i, 1
  %arrayidx.i = getelementptr %struct.dwapb_port_property, ptr %7, i32 %i.093.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fwnode.091.i, ptr %arrayidx.i, align 4
  %idx.i = getelementptr %struct.dwapb_port_property, ptr %7, i32 %i.093.i, i32 1
  %call.i83.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode.091.i, ptr noundef nonnull @.str.1, ptr noundef %idx.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool18.not.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %9 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp20.i = icmp ugt i32 %10, 3
  br i1 %cmp20.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end23.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %inc.i) #10
  tail call void @fwnode_handle_put(ptr noundef nonnull %fwnode.091.i) #7
  br label %if.then

if.end23.i:                                       ; preds = %lor.lhs.false.i
  %ngpio.i = getelementptr %struct.dwapb_port_property, ptr %7, i32 %i.093.i, i32 2
  %call.i84.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode.091.i, ptr noundef nonnull @.str.7, ptr noundef %ngpio.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %tobool25.not.i = icmp eq i32 %call.i84.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end34.i_crit_edge, label %land.lhs.true.i

if.end23.i.if.end34.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.end23.i
  %call.i85.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode.091.i, ptr noundef nonnull @.str.8, ptr noundef %ngpio.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool28.not.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.end34.i_crit_edge, label %do.end32.i

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end32.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %inc.i) #10
  %11 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %ngpio.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end32.i, %land.lhs.true.i.if.end34.i_crit_edge, %if.end23.i.if.end34.i_crit_edge
  %gpio_base.i = getelementptr %struct.dwapb_port_property, ptr %7, i32 %i.093.i, i32 3
  %12 = ptrtoint ptr %gpio_base.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %gpio_base.i, align 4
  %call35.i = tail call zeroext i1 @is_software_node(ptr noundef nonnull %fwnode.091.i) #7
  br i1 %call35.i, label %if.then36.i, label %if.end34.i.if.end39.i_crit_edge

if.end34.i.if.end39.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i86.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode.091.i, ptr noundef nonnull @.str.13, ptr noundef %gpio_base.i, i32 noundef 1) #7
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %if.end34.i.if.end39.i_crit_edge
  %13 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp41.i = icmp eq i32 %14, 0
  br i1 %cmp41.i, label %if.then42.i, label %if.end39.i.for.inc.i_crit_edge

if.end39.i.for.inc.i_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then42.i:                                      ; preds = %if.end39.i
  %15 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ngpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.not.i.i = icmp eq i32 %16, 0
  br i1 %cmp1.not.i.i, label %if.then42.i.for.inc.i_crit_edge, label %if.then42.i.for.body.i.i_crit_edge

if.then42.i.for.body.i.i_crit_edge:               ; preds = %if.then42.i
  br label %for.body.i.i

if.then42.i.for.inc.i_crit_edge:                  ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then42.i.for.body.i.i_crit_edge
  %j.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then42.i.for.body.i.i_crit_edge ]
  %call2.i.i = tail call i32 @fwnode_irq_get(ptr noundef nonnull %fwnode.091.i, i32 noundef %j.02.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp sgt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.then4.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then4.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.dwapb_port_property, ptr %7, i32 %i.093.i, i32 4, i32 %j.02.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2.i.i, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then4.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %j.02.i.i, 1
  %18 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ngpio.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %19
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.inc.i_crit_edge

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i:                                        ; preds = %for.inc.i.i.for.inc.i_crit_edge, %if.then42.i.for.inc.i_crit_edge, %if.end39.i.for.inc.i_crit_edge
  %call44.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %fwnode.091.i) #7
  %tobool14.not.i = icmp eq ptr %call44.i, null
  br i1 %tobool14.not.i, label %for.inc.i.dwapb_gpio_get_pdata.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dwapb_gpio_get_pdata.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_gpio_get_pdata.exit

dwapb_gpio_get_pdata.exit:                        ; preds = %for.inc.i.dwapb_gpio_get_pdata.exit_crit_edge, %if.end11.i.dwapb_gpio_get_pdata.exit_crit_edge
  %cmp.i73 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %dwapb_gpio_get_pdata.exit.if.then_crit_edge, label %if.end

dwapb_gpio_get_pdata.exit.if.then_crit_edge:      ; preds = %dwapb_gpio_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %dwapb_gpio_get_pdata.exit.if.then_crit_edge, %do.end.i, %devm_kcalloc.exit.i.if.then_crit_edge, %devm_kcalloc.exit.thread.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i107 = phi ptr [ %call.i.i, %dwapb_gpio_get_pdata.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  %20 = ptrtoint ptr %retval.0.i107 to i32
  br label %cleanup

if.end:                                           ; preds = %dwapb_gpio_get_pdata.exit
  %call.i74 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i74, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %21 = ptrtoint ptr %call.i74 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev1, ptr %call.i74, align 4
  %22 = ptrtoint ptr %nports12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nports12.i, align 4
  %nr_ports = getelementptr inbounds %struct.dwapb_gpio, ptr %call.i74, i32 0, i32 3
  %24 = ptrtoint ptr %nr_ports to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nr_ports, align 4
  %call.i.i75 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %rst.i = getelementptr inbounds %struct.dwapb_gpio, ptr %call.i74, i32 0, i32 5
  %25 = ptrtoint ptr %rst.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i75, ptr %rst.i, align 4
  %cmp.i.i76 = icmp ugt ptr %call.i.i75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i76, label %dwapb_get_reset.exit, label %if.end.i78

if.end.i78:                                       ; preds = %if.end7
  %call8.i = tail call i32 @reset_control_deassert(ptr noundef %call.i.i75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i77 = icmp eq i32 %call8.i, 0
  %26 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i74, align 4
  br i1 %tobool.not.i77, label %if.end11.i80, label %do.end.i79

do.end.i79:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end11.i80:                                     ; preds = %if.end.i78
  %call.i23.i = tail call i32 @devm_add_action(ptr noundef %27, ptr noundef nonnull @dwapb_assert_reset, ptr noundef nonnull %call.i74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool.not.i.i, label %if.end11.i80.if.end13_crit_edge, label %if.then.i.i

if.end11.i80.if.end13_crit_edge:                  ; preds = %if.end11.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then.i.i:                                      ; preds = %if.end11.i80
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rst.i, align 4
  %call.i24.i = tail call i32 @reset_control_assert(ptr noundef %29) #7
  br label %cleanup

dwapb_get_reset.exit:                             ; preds = %if.end7
  %30 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i74, align 4
  %32 = ptrtoint ptr %call.i.i75 to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %31, i32 noundef %32, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool11.not = icmp eq i32 %call6.i, 0
  br i1 %tobool11.not, label %dwapb_get_reset.exit.if.end13_crit_edge, label %dwapb_get_reset.exit.cleanup_crit_edge

dwapb_get_reset.exit.cleanup_crit_edge:           ; preds = %dwapb_get_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dwapb_get_reset.exit.if.end13_crit_edge:          ; preds = %dwapb_get_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %dwapb_get_reset.exit.if.end13_crit_edge, %if.end11.i80.if.end13_crit_edge
  %33 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_ports, align 4
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 364) #7
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !99

devm_kcalloc.exit.thread:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %ports114 = getelementptr inbounds %struct.dwapb_gpio, ptr %call.i74, i32 0, i32 2
  %37 = ptrtoint ptr %ports114 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %ports114, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end13
  %38 = extractvalue { i32, i1 } %35, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %38, i32 noundef 3520) #7
  %ports = getelementptr inbounds %struct.dwapb_gpio, ptr %call.i74, i32 0, i32 2
  %39 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call5.i.i, ptr %ports, align 4
  %tobool18.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool18.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end20

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %devm_kcalloc.exit
  %call21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.dwapb_gpio, ptr %call.i74, i32 0, i32 1
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call21, ptr %regs, align 4
  %cmp.i82 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %clks.i = getelementptr inbounds %struct.dwapb_gpio, ptr %call.i74, i32 0, i32 6
  %42 = ptrtoint ptr %clks.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.17, ptr %clks.i, align 4
  %arrayidx2.i = getelementptr %struct.dwapb_gpio, ptr %call.i74, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.18, ptr %arrayidx2.i, align 4
  %44 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i74, align 4
  %call.i83 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %45, i32 noundef 2, ptr noundef %clks.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.end.i88, label %do.end.i85

do.end.i85:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end.i88:                                       ; preds = %if.end27
  %call.i.i86 = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86)
  %tobool.not.i.i87 = icmp eq i32 %call.i.i86, 0
  br i1 %tobool.not.i.i87, label %if.end.i.i89, label %if.end.i88.do.end13.i_crit_edge

if.end.i88.do.end13.i_crit_edge:                  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

if.end.i.i89:                                     ; preds = %if.end.i88
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end15.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks.i) #7
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then3.i.i, %if.end.i88.do.end13.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i86, %if.end.i88.do.end13.i_crit_edge ]
  %48 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i.i89
  %50 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i74, align 4
  %call.i29.i = tail call i32 @devm_add_action(ptr noundef %51, ptr noundef nonnull @dwapb_disable_clks, ptr noundef nonnull %call.i74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool.not.i30.i, label %if.end31, label %if.then.i.i90

if.then.i.i90:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks.i) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks.i) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end15.i
  %call32 = tail call ptr @device_get_match_data(ptr noundef %dev1) #7
  %52 = ptrtoint ptr %call32 to i32
  %flags = getelementptr inbounds %struct.dwapb_gpio, ptr %call.i74, i32 0, i32 4
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %flags, align 4
  %54 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp123.not = icmp eq i32 %55, 0
  br i1 %cmp123.not, label %if.end31.for.end_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %if.end37.i
  %inc = add nuw i32 %i.0124, 1
  %56 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_ports, align 4
  %cmp = icmp ult i32 %inc, %57
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end31.for.body_crit_edge
  %i.0124 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end31.for.body_crit_edge ]
  %58 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i.i, align 4
  %arrayidx = getelementptr %struct.dwapb_port_property, ptr %59, i32 %i.0124
  %60 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ports, align 4
  %arrayidx.i92 = getelementptr %struct.dwapb_gpio_port, ptr %61, i32 %i.0124
  %gpio1.i = getelementptr %struct.dwapb_gpio_port, ptr %61, i32 %i.0124, i32 2
  %62 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i74, ptr %gpio1.i, align 4
  %idx.i93 = getelementptr %struct.dwapb_port_property, ptr %59, i32 %i.0124, i32 1
  %63 = ptrtoint ptr %idx.i93 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %idx.i93, align 4
  %idx2.i = getelementptr %struct.dwapb_gpio_port, ptr %61, i32 %i.0124, i32 4
  %65 = ptrtoint ptr %idx2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %idx2.i, align 4
  %66 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i74, align 4
  %call.i.i94 = tail call noalias ptr @devm_kmalloc(ptr noundef %67, i32 noundef 36, i32 noundef 3520) #7
  %ctx.i = getelementptr %struct.dwapb_gpio_port, ptr %61, i32 %i.0124, i32 3
  %68 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i.i94, ptr %ctx.i, align 4
  %tobool.not.i95 = icmp eq ptr %call.i.i94, null
  br i1 %tobool.not.i95, label %for.body.cleanup_crit_edge, label %if.end.i97

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i97:                                       ; preds = %for.body
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %70, i32 80
  %71 = ptrtoint ptr %idx.i93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idx.i93, align 4
  %mul.i = shl i32 %72, 2
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %mul9.i = mul i32 %72, 12
  %add.ptr10.i = getelementptr i8, ptr %70, i32 %mul9.i
  %add.ptr12.i = getelementptr i8, ptr %70, i32 4
  %add.ptr15.i = getelementptr i8, ptr %add.ptr12.i, i32 %mul9.i
  %73 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i74, align 4
  %call17.i = tail call i32 @bgpio_init(ptr noundef %arrayidx.i92, ptr noundef %74, i32 noundef 4, ptr noundef %add.ptr5.i, ptr noundef %add.ptr10.i, ptr noundef null, ptr noundef %add.ptr15.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i96 = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i96, label %if.end22.i, label %if.end.i97.cleanup.sink.split.i_crit_edge

if.end.i97.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end22.i:                                       ; preds = %if.end.i97
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx, align 4
  %fwnode24.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 3
  %77 = ptrtoint ptr %fwnode24.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %fwnode24.i, align 4
  %ngpio.i98 = getelementptr %struct.dwapb_port_property, ptr %59, i32 %i.0124, i32 2
  %78 = ptrtoint ptr %ngpio.i98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ngpio.i98, align 4
  %conv.i = trunc i32 %79 to i16
  %ngpio26.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 20
  %80 = ptrtoint ptr %ngpio26.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i, ptr %ngpio26.i, align 4
  %gpio_base.i99 = getelementptr %struct.dwapb_port_property, ptr %59, i32 %i.0124, i32 3
  %81 = ptrtoint ptr %gpio_base.i99 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %gpio_base.i99, align 4
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 19
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %base.i, align 4
  %84 = ptrtoint ptr %idx.i93 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %idx.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i100 = icmp eq i32 %85, 0
  br i1 %cmp.i100, label %if.end32.i, label %if.end22.i.if.end37.i_crit_edge

if.end22.i.if.end37.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.end32.i:                                       ; preds = %if.end22.i
  %set_config.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 14
  %86 = ptrtoint ptr %set_config.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @dwapb_gpio_set_config, ptr %set_config.i, align 4
  %87 = ptrtoint ptr %idx.i93 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr.i = load i32, ptr %idx.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp34.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp34.i, label %if.then36.i102, label %if.end32.i.if.end37.i_crit_edge

if.end32.i.if.end37.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then36.i102:                                   ; preds = %if.end32.i
  %88 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i74, align 4
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %89, i32 noundef 268, i32 noundef 3520) #7
  %tobool.not.i.i101 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i101, label %if.then36.i102.if.end37.i_crit_edge, label %if.end.i.i103

if.then36.i102.if.end37.i_crit_edge:              ; preds = %if.then36.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.end.i.i103:                                    ; preds = %if.then36.i102
  %90 = ptrtoint ptr %ngpio.i98 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ngpio.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp15.not.i.i.i = icmp eq i32 %91, 0
  br i1 %cmp15.not.i.i.i, label %if.end.i.i103.dwapb_convert_irqs.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i103.dwapb_convert_irqs.exit.i.i_crit_edge: ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_convert_irqs.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i103
  %nr_irqs.i.i.i = getelementptr inbounds %struct.dwapb_gpio_port_irqchip, ptr %call.i.i.i, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.016.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc5.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.dwapb_port_property, ptr %59, i32 %i.0124, i32 4, i32 %i.016.i.i.i
  %92 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %nr_irqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nr_irqs.i.i.i, align 4
  %inc.i.i.i = add i32 %95, 1
  store i32 %inc.i.i.i, ptr %nr_irqs.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr %struct.dwapb_gpio_port_irqchip, ptr %call.i.i.i, i32 0, i32 2, i32 %95
  %96 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %93, ptr %arrayidx4.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc5.i.i.i = add nuw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc5.i.i.i, %91
  br i1 %exitcond.not.i.i, label %for.inc.i.i.i.dwapb_convert_irqs.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.dwapb_convert_irqs.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_convert_irqs.exit.i.i

dwapb_convert_irqs.exit.i.i:                      ; preds = %for.inc.i.i.i.dwapb_convert_irqs.exit.i.i_crit_edge, %if.end.i.i103.dwapb_convert_irqs.exit.i.i_crit_edge
  %nr_irqs6.i.i.i = getelementptr inbounds %struct.dwapb_gpio_port_irqchip, ptr %call.i.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %nr_irqs6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr_irqs6.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool7.not.i.not.i.i = icmp eq i32 %98, 0
  br i1 %tobool7.not.i.not.i.i, label %do.end.i.i, label %if.end6.i.i

do.end.i.i:                                       ; preds = %dwapb_convert_irqs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i74, align 4
  %101 = ptrtoint ptr %idx.i93 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %idx.i93, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.29, i32 noundef %102) #10
  %103 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call.i74, align 4
  tail call void @devm_kfree(ptr noundef %104, ptr noundef nonnull %call.i.i.i) #7
  br label %if.end37.i

if.end6.i.i:                                      ; preds = %dwapb_convert_irqs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 37
  %handler.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 37, i32 9
  %105 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @handle_bad_irq, ptr %handler.i.i, align 4
  %default_type.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 37, i32 10
  %106 = ptrtoint ptr %default_type.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %default_type.i.i, align 4
  %pirq7.i.i = getelementptr %struct.dwapb_gpio_port, ptr %61, i32 %i.0124, i32 1
  %107 = ptrtoint ptr %pirq7.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i.i.i, ptr %pirq7.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.irq_chip, ptr %call.i.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str, ptr %name.i.i, align 4
  %irq_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %call.i.i.i, i32 0, i32 6
  %109 = ptrtoint ptr %irq_ack.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @dwapb_irq_ack, ptr %irq_ack.i.i, align 4
  %irq_mask.i.i = getelementptr inbounds %struct.irq_chip, ptr %call.i.i.i, i32 0, i32 7
  %110 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @dwapb_irq_mask, ptr %irq_mask.i.i, align 4
  %irq_unmask.i.i = getelementptr inbounds %struct.irq_chip, ptr %call.i.i.i, i32 0, i32 9
  %111 = ptrtoint ptr %irq_unmask.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @dwapb_irq_unmask, ptr %irq_unmask.i.i, align 4
  %irq_set_type.i.i = getelementptr inbounds %struct.irq_chip, ptr %call.i.i.i, i32 0, i32 13
  %112 = ptrtoint ptr %irq_set_type.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @dwapb_irq_set_type, ptr %irq_set_type.i.i, align 4
  %irq_enable.i.i = getelementptr inbounds %struct.irq_chip, ptr %call.i.i.i, i32 0, i32 4
  %113 = ptrtoint ptr %irq_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @dwapb_irq_enable, ptr %irq_enable.i.i, align 4
  %irq_disable.i.i = getelementptr inbounds %struct.irq_chip, ptr %call.i.i.i, i32 0, i32 5
  %114 = ptrtoint ptr %irq_disable.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @dwapb_irq_disable, ptr %irq_disable.i.i, align 4
  %irq_set_wake.i.i = getelementptr inbounds %struct.irq_chip, ptr %call.i.i.i, i32 0, i32 14
  %115 = ptrtoint ptr %irq_set_wake.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @dwapb_irq_set_wake, ptr %irq_set_wake.i.i, align 4
  %num_parents28.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 37, i32 15
  %116 = ptrtoint ptr %num_parents28.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %98, ptr %num_parents28.i.i, align 4
  %irq29.i.i = getelementptr inbounds %struct.dwapb_gpio_port_irqchip, ptr %call.i.i.i, i32 0, i32 2
  %parents30.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 37, i32 16
  %117 = ptrtoint ptr %parents30.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %irq29.i.i, ptr %parents30.i.i, align 4
  %118 = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 37, i32 14
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i74, ptr %118, align 4
  %parent_handler31.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i92, i32 0, i32 37, i32 13
  %120 = ptrtoint ptr %parent_handler31.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @dwapb_irq_handler, ptr %parent_handler31.i.i, align 4
  %121 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i.i, ptr %irq.i.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end6.i.i, %do.end.i.i, %if.then36.i102.if.end37.i_crit_edge, %if.end32.i.if.end37.i_crit_edge, %if.end22.i.if.end37.i_crit_edge
  %122 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call.i74, align 4
  %call40.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %123, ptr noundef %arrayidx.i92, ptr noundef %arrayidx.i92, ptr noundef nonnull @dwapb_gpio_add_port.lock_key, ptr noundef nonnull @dwapb_gpio_add_port.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %for.cond, label %if.end37.i.cleanup.sink.split.i_crit_edge

if.end37.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end37.i.cleanup.sink.split.i_crit_edge, %if.end.i97.cleanup.sink.split.i_crit_edge
  %.str.27.sink.i = phi ptr [ @.str.24, %if.end.i97.cleanup.sink.split.i_crit_edge ], [ @.str.27, %if.end37.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call17.i, %if.end.i97.cleanup.sink.split.i_crit_edge ], [ %call40.i, %if.end37.i.cleanup.sink.split.i_crit_edge ]
  %124 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call.i74, align 4
  %126 = ptrtoint ptr %idx2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %idx2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull %.str.27.sink.i, i32 noundef %127) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end31.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %128 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call.i74, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %cleanup.sink.split.i, %for.body.cleanup_crit_edge, %if.then.i.i90, %do.end13.i, %do.end.i85, %if.then24, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %dwapb_get_reset.exit.cleanup_crit_edge, %if.then.i.i, %do.end.i79, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %20, %if.then ], [ %41, %if.then24 ], [ 0, %for.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call6.i, %dwapb_get_reset.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call.i23.i, %if.then.i.i ], [ %call8.i, %do.end.i79 ], [ %call.i29.i, %if.then.i.i90 ], [ %retval.0.i.ph.i, %do.end13.i ], [ %call.i83, %do.end.i85 ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_software_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwapb_assert_reset(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rst = getelementptr inbounds %struct.dwapb_gpio, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwapb_disable_clks(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clks = getelementptr inbounds %struct.dwapb_gpio, ptr %data, i32 0, i32 6
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_set_config(ptr noundef %gc, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %gpio1.i = getelementptr inbounds %struct.dwapb_gpio_port, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio1.i, align 4
  %shl.i = shl nuw i32 1, %offset
  %bgpio_lock.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #7
  %ports.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %read_reg.i.i = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 72
  %call2.i.i = tail call i32 %7(ptr noundef %add.ptr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %tobool.not.i = icmp ult i32 %config, 256
  %or.i = or i32 %call2.i.i, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i4 = and i32 %call2.i.i, %neg.i
  %val_deb.0.i = select i1 %tobool.not.i, i32 %and.i4, i32 %or.i
  %8 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports.i.i, align 4
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 25
  %12 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 72
  tail call void %13(ptr noundef %add.ptr.i7.i, i32 noundef %val_deb.0.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call4.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwapb_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %gpio1 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %5
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #7
  %ports.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %regs.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %7, i32 0, i32 25
  %10 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %cmp.not.i.i, i32 76, i32 64
  %add.ptr.i = getelementptr i8, ptr %9, i32 %spec.select
  tail call void %11(ptr noundef %add.ptr.i, i32 noundef %shl) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwapb_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %gpio1 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 4
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #7
  %ports.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %regs.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %cmp.not.i.i, i32 52, i32 68
  %add.ptr.i = getelementptr i8, ptr %7, i32 %spec.select
  %call2.i = tail call i32 %9(ptr noundef %add.ptr.i) #7
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %12 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %13
  %or = or i32 %shl, %call2.i
  %14 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %15, i32 0, i32 25
  %18 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i, align 4
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %and.i.i18 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %cmp.not.i.i19 = icmp eq i32 %and.i.i18, 0
  %retval.0.i.i21 = select i1 %cmp.not.i.i19, i32 52, i32 68
  %add.ptr.i22 = getelementptr i8, ptr %17, i32 %retval.0.i.i21
  tail call void %19(ptr noundef %add.ptr.i22, i32 noundef %or) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwapb_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %gpio1 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 4
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #7
  %ports.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %regs.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %cmp.not.i.i, i32 52, i32 68
  %add.ptr.i = getelementptr i8, ptr %7, i32 %spec.select
  %call2.i = tail call i32 %9(ptr noundef %add.ptr.i) #7
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %12 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %13
  %neg = xor i32 %shl, -1
  %and = and i32 %call2.i, %neg
  %14 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %15, i32 0, i32 25
  %18 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i, align 4
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %and.i.i18 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %cmp.not.i.i19 = icmp eq i32 %and.i.i18, 0
  %retval.0.i.i21 = select i1 %cmp.not.i.i19, i32 52, i32 68
  %add.ptr.i22 = getelementptr i8, ptr %17, i32 %retval.0.i.i21
  tail call void %19(ptr noundef %add.ptr.i22, i32 noundef %and) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwapb_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %gpio1 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #7
  %ports.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %regs.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %7, i32 0, i32 24
  %10 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %cmp.not.i.i, i32 56, i32 52
  %add.ptr.i = getelementptr i8, ptr %9, i32 %spec.select
  %call2.i = tail call i32 %11(ptr noundef %add.ptr.i) #7
  %14 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %read_reg.i75 = getelementptr inbounds %struct.gpio_chip, ptr %15, i32 0, i32 24
  %18 = ptrtoint ptr %read_reg.i75 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg.i75, align 4
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %and.i.i77 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77)
  %cmp.not.i.i78 = icmp eq i32 %and.i.i77, 0
  %retval.0.i.i80 = select i1 %cmp.not.i.i78, i32 60, i32 56
  %add.ptr.i81 = getelementptr i8, ptr %17, i32 %retval.0.i.i80
  %call2.i82 = tail call i32 %19(ptr noundef %add.ptr.i81) #7
  %22 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb16
    i32 4, label %sw.bb20
    i32 8, label %sw.bb26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %shl = shl nuw i32 1, %5
  %or = or i32 %call2.i, %shl
  %nr_ports.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %nr_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp9.not.i.i, label %sw.bb.if.end37.sink.split_crit_edge, label %for.body.lr.ph.i.i

sw.bb.if.end37.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.sink.split

for.body.lr.ph.i.i:                               ; preds = %sw.bb
  %25 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ports.i, align 4
  %div7.i.i = lshr i32 %5, 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %idx.i.i = getelementptr %struct.dwapb_gpio_port, ptr %26, i32 %i.010.i.i, i32 4
  %27 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div7.i.i)
  %cmp1.i.i = icmp eq i32 %28, %div7.i.i
  br i1 %cmp1.i.i, label %dwapb_offs_to_port.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %24
  br i1 %exitcond.not.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

dwapb_offs_to_port.exit.i:                        ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.dwapb_gpio_port, ptr %26, i32 %i.010.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %dwapb_offs_to_port.exit.i.sw.epilog_crit_edge, label %if.end.i

dwapb_offs_to_port.exit.i.sw.epilog_crit_edge:    ; preds = %dwapb_offs_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %dwapb_offs_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %read_reg.i.i = getelementptr inbounds %struct.gpio_chip, ptr %26, i32 0, i32 24
  %31 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_reg.i.i, align 4
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 4
  %and.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i = select i1 %cmp.not.i.i.i, i32 60, i32 56
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %spec.select.i
  %call2.i.i = tail call i32 %32(ptr noundef %add.ptr.i.i) #7
  %get.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get.i, align 4
  %rem.i = and i32 %5, 31
  %call3.i = tail call i32 %36(ptr noundef nonnull %arrayidx.i.i, i32 noundef %rem.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %call2.i.i, %neg.i
  %or.i = or i32 %call2.i.i, %shl
  %pol.0.i = select i1 %tobool4.not.i, i32 %or.i, i32 %and.i
  %37 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ports.i, align 4
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.gpio_chip, ptr %38, i32 0, i32 25
  %41 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg.i.i, align 4
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i, align 4
  %and.i.i24.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i24.i)
  %cmp.not.i.i25.i = icmp eq i32 %and.i.i24.i, 0
  %spec.select31.i = select i1 %cmp.not.i.i25.i, i32 60, i32 56
  %add.ptr.i28.i = getelementptr i8, ptr %40, i32 %spec.select31.i
  tail call void %42(ptr noundef %add.ptr.i28.i, i32 noundef %pol.0.i) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl12 = shl nuw i32 1, %5
  %or13 = or i32 %call2.i, %shl12
  %or15 = or i32 %call2.i82, %shl12
  br label %if.end37.sink.split

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl17 = shl nuw i32 1, %5
  %or18 = or i32 %call2.i, %shl17
  %neg = xor i32 %shl17, -1
  %and = and i32 %call2.i82, %neg
  br label %if.end37.sink.split

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl21 = shl nuw i32 1, %5
  %neg22 = xor i32 %shl21, -1
  %and23 = and i32 %call2.i, %neg22
  %or25 = or i32 %call2.i82, %shl21
  br label %if.end37.sink.split

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl27 = shl nuw i32 1, %5
  %neg28 = xor i32 %shl27, -1
  %and29 = and i32 %call2.i, %neg28
  %and32 = and i32 %call2.i82, %neg28
  br label %if.end37.sink.split

sw.epilog:                                        ; preds = %if.end.i, %dwapb_offs_to_port.exit.i.sw.epilog_crit_edge, %for.inc.i.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %level.0 = phi i32 [ %call2.i, %entry.sw.epilog_crit_edge ], [ %or, %dwapb_offs_to_port.exit.i.sw.epilog_crit_edge ], [ %or, %if.end.i ], [ %or, %for.inc.i.i.sw.epilog_crit_edge ]
  %and33 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool.not = icmp eq i32 %and33, 0
  br i1 %tobool.not, label %if.else, label %sw.epilog.if.end37.sink.split_crit_edge

sw.epilog.if.end37.sink.split_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.sink.split

if.else:                                          ; preds = %sw.epilog
  %and34 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else.if.end37_crit_edge, label %if.else.if.end37.sink.split_crit_edge

if.else.if.end37.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.sink.split

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37.sink.split:                              ; preds = %if.else.if.end37.sink.split_crit_edge, %sw.epilog.if.end37.sink.split_crit_edge, %sw.bb26, %sw.bb20, %sw.bb16, %sw.bb11, %sw.bb.if.end37.sink.split_crit_edge
  %handle_edge_irq.sink = phi ptr [ @handle_level_irq, %sw.bb20 ], [ @handle_level_irq, %sw.bb26 ], [ @handle_level_irq, %sw.epilog.if.end37.sink.split_crit_edge ], [ @handle_edge_irq, %sw.bb.if.end37.sink.split_crit_edge ], [ @handle_edge_irq, %sw.bb16 ], [ @handle_edge_irq, %sw.bb11 ], [ @handle_edge_irq, %if.else.if.end37.sink.split_crit_edge ]
  %polarity.0110.ph = phi i32 [ %or25, %sw.bb20 ], [ %and32, %sw.bb26 ], [ %call2.i82, %sw.epilog.if.end37.sink.split_crit_edge ], [ %call2.i82, %sw.bb.if.end37.sink.split_crit_edge ], [ %and, %sw.bb16 ], [ %or15, %sw.bb11 ], [ %call2.i82, %if.else.if.end37.sink.split_crit_edge ]
  %level.0108.ph = phi i32 [ %and23, %sw.bb20 ], [ %and29, %sw.bb26 ], [ %level.0, %sw.epilog.if.end37.sink.split_crit_edge ], [ %or, %sw.bb.if.end37.sink.split_crit_edge ], [ %or18, %sw.bb16 ], [ %or13, %sw.bb11 ], [ %level.0, %if.else.if.end37.sink.split_crit_edge ]
  %common.i.i84 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %45 = ptrtoint ptr %common.i.i84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %common.i.i84, align 4
  %handle_irq.i85 = getelementptr inbounds %struct.irq_desc, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %handle_irq.i85 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %handle_edge_irq.sink, ptr %handle_irq.i85, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else.if.end37_crit_edge
  %polarity.0110 = phi i32 [ %call2.i82, %if.else.if.end37_crit_edge ], [ %polarity.0110.ph, %if.end37.sink.split ]
  %level.0108 = phi i32 [ %level.0, %if.else.if.end37_crit_edge ], [ %level.0108.ph, %if.end37.sink.split ]
  %48 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ports.i, align 4
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 25
  %52 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg.i, align 4
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i89 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i89)
  %cmp.not.i.i90 = icmp eq i32 %and.i.i89, 0
  %spec.select128 = select i1 %cmp.not.i.i90, i32 56, i32 52
  %add.ptr.i93 = getelementptr i8, ptr %51, i32 %spec.select128
  tail call void %53(ptr noundef %add.ptr.i93, i32 noundef %level.0108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp38.not = icmp eq i32 %type, 3
  br i1 %cmp38.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ports.i, align 4
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %write_reg.i96 = getelementptr inbounds %struct.gpio_chip, ptr %57, i32 0, i32 25
  %60 = ptrtoint ptr %write_reg.i96 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg.i96, align 4
  %62 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i, align 4
  %and.i.i98 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i98)
  %cmp.not.i.i99 = icmp eq i32 %and.i.i98, 0
  %spec.select129 = select i1 %cmp.not.i.i99, i32 60, i32 56
  %add.ptr.i102 = getelementptr i8, ptr %59, i32 %spec.select129
  tail call void %61(ptr noundef %add.ptr.i102, i32 noundef %polarity.0110) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwapb_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %gpio1 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 4
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #7
  %ports.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %regs.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 48
  %call2.i = tail call i32 %9(ptr noundef %add.ptr.i) #7
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %11
  %or = or i32 %shl, %call2.i
  %12 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports.i, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %13, i32 0, i32 25
  %16 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 48
  tail call void %17(ptr noundef %add.ptr.i22, i32 noundef %or) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwapb_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %gpio1 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 4
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #7
  %ports.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %regs.i = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 48
  %call2.i = tail call i32 %9(ptr noundef %add.ptr.i) #7
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %11
  %neg = xor i32 %shl, -1
  %and = and i32 %call2.i, %neg
  %12 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports.i, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %13, i32 0, i32 25
  %16 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 48
  tail call void %17(ptr noundef %add.ptr.i22, i32 noundef %and) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwapb_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %enable) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %gpio1 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio1, align 4
  %ports = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %ctx2 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx2, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %shl4 = shl nuw i32 1, %9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wake_en = getelementptr inbounds %struct.dwapb_context, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %wake_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wake_en, align 4
  %or = or i32 %11, %shl4
  store i32 %or, ptr %wake_en, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl4, -1
  %wake_en5 = getelementptr inbounds %struct.dwapb_context, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %wake_en5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wake_en5, align 4
  %and = and i32 %13, %neg
  store i32 %and, ptr %wake_en5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwapb_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  %irq_status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %ports.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_status.i) #7
  %regs.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %read_reg.i.i = getelementptr inbounds %struct.gpio_chip, ptr %13, i32 0, i32 24
  %16 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i = select i1 %cmp.not.i.i.i, i32 64, i32 60
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %spec.select.i
  %call2.i.i = tail call i32 %17(ptr noundef %add.ptr.i.i) #7
  %20 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i.i, ptr %irq_status.i, align 4
  %call2.i = call i32 @_find_next_bit_be(ptr noundef nonnull %irq_status.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2.i)
  %cmp10.i = icmp ult i32 %call2.i, 32
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %chained_irq_enter.exit.dwapb_do_irq.exit_crit_edge

chained_irq_enter.exit.dwapb_do_irq.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_do_irq.exit

for.body.lr.ph.i:                                 ; preds = %chained_irq_enter.exit
  %domain.i = getelementptr inbounds %struct.gpio_chip, ptr %13, i32 0, i32 37, i32 1
  %nr_ports.i.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i7.for.body.i_crit_edge, %for.body.lr.ph.i
  %hwirq.011.i = phi i32 [ %call2.i, %for.body.lr.ph.i ], [ %call7.i, %if.end.i7.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domain.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #7
  %23 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !100
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %22, i32 noundef %hwirq.011.i, ptr noundef nonnull %irq.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.irq_find_mapping.exit.i_crit_edge, label %if.then.i.i

for.body.i.irq_find_mapping.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i.i, align 4
  br label %irq_find_mapping.exit.i

irq_find_mapping.exit.i:                          ; preds = %if.then.i.i, %for.body.i.irq_find_mapping.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %25, %if.then.i.i ], [ 0, %for.body.i.irq_find_mapping.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #7
  %call.i1.i = call ptr @irq_get_irq_data(i32 noundef %retval.0.i.i) #7
  %tobool.not.i2.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not.i2.i, label %irq_get_trigger_type.exit.thread.i, label %irq_get_trigger_type.exit.i

irq_get_trigger_type.exit.thread.i:               ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call56.i = call i32 @generic_handle_irq(i32 noundef %retval.0.i.i) #7
  br label %if.end.i7

irq_get_trigger_type.exit.i:                      ; preds = %irq_find_mapping.exit.i
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i1.i, i32 0, i32 3
  %26 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %common.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %and.i.i3.i = and i32 %29, 15
  %call5.i = call i32 @generic_handle_irq(i32 noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i3.i)
  %cmp6.i = icmp eq i32 %and.i.i3.i, 3
  br i1 %cmp6.i, label %if.then.i, label %irq_get_trigger_type.exit.i.if.end.i7_crit_edge

irq_get_trigger_type.exit.i.if.end.i7_crit_edge:  ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i7

if.then.i:                                        ; preds = %irq_get_trigger_type.exit.i
  %30 = ptrtoint ptr %nr_ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_ports.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp9.not.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp9.not.i.i.i, label %if.then.i.if.end.i7_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i.if.end.i7_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i7

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i
  %32 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports.i, align 4
  %div7.i.i.i = lshr i32 %hwirq.011.i, 5
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.010.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %idx.i.i.i = getelementptr %struct.dwapb_gpio_port, ptr %33, i32 %i.010.i.i.i, i32 4
  %34 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %div7.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %35, %div7.i.i.i
  br i1 %cmp1.i.i.i, label %dwapb_offs_to_port.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %31
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end.i7_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.if.end.i7_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i7

dwapb_offs_to_port.exit.i.i:                      ; preds = %for.body.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.dwapb_gpio_port, ptr %33, i32 %i.010.i.i.i
  %tobool.not.i4.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i4.i, label %dwapb_offs_to_port.exit.i.i.if.end.i7_crit_edge, label %if.end.i.i

dwapb_offs_to_port.exit.i.i.if.end.i7_crit_edge:  ; preds = %dwapb_offs_to_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i7

if.end.i.i:                                       ; preds = %dwapb_offs_to_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %read_reg.i.i.i = getelementptr inbounds %struct.gpio_chip, ptr %33, i32 0, i32 24
  %38 = ptrtoint ptr %read_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_reg.i.i.i, align 4
  %40 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %spec.select.i.i = select i1 %cmp.not.i.i.i.i, i32 60, i32 56
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 %spec.select.i.i
  %call2.i.i.i = call i32 %39(ptr noundef %add.ptr.i.i.i) #7
  %get.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %get.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get.i.i, align 4
  %rem.i.i = and i32 %hwirq.011.i, 31
  %call3.i.i = call i32 %43(ptr noundef nonnull %arrayidx.i.i.i, i32 noundef %rem.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  %shl6.i.i = shl nuw i32 1, %hwirq.011.i
  %neg.i.i = xor i32 %shl6.i.i, -1
  %and.i.i = and i32 %call2.i.i.i, %neg.i.i
  %or.i.i = or i32 %call2.i.i.i, %shl6.i.i
  %pol.0.i.i = select i1 %tobool4.not.i.i, i32 %or.i.i, i32 %and.i.i
  %44 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ports.i, align 4
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 4
  %write_reg.i.i.i = getelementptr inbounds %struct.gpio_chip, ptr %45, i32 0, i32 25
  %48 = ptrtoint ptr %write_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg.i.i.i, align 4
  %50 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i24.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i24.i.i)
  %cmp.not.i.i25.i.i = icmp eq i32 %and.i.i24.i.i, 0
  %spec.select31.i.i = select i1 %cmp.not.i.i25.i.i, i32 60, i32 56
  %add.ptr.i28.i.i = getelementptr i8, ptr %47, i32 %spec.select31.i.i
  call void %49(ptr noundef %add.ptr.i28.i.i, i32 noundef %pol.0.i.i) #7
  br label %if.end.i7

if.end.i7:                                        ; preds = %if.end.i.i, %dwapb_offs_to_port.exit.i.i.if.end.i7_crit_edge, %for.inc.i.i.i.if.end.i7_crit_edge, %if.then.i.if.end.i7_crit_edge, %irq_get_trigger_type.exit.i.if.end.i7_crit_edge, %irq_get_trigger_type.exit.thread.i
  %add.i = add i32 %hwirq.011.i, 1
  %call7.i = call i32 @_find_next_bit_be(ptr noundef nonnull %irq_status.i, i32 noundef 32, i32 noundef %add.i) #7
  %cmp.i = icmp ult i32 %call7.i, 32
  br i1 %cmp.i, label %if.end.i7.for.body.i_crit_edge, label %if.end.i7.dwapb_do_irq.exit_crit_edge

if.end.i7.dwapb_do_irq.exit_crit_edge:            ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_do_irq.exit

if.end.i7.for.body.i_crit_edge:                   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

dwapb_do_irq.exit:                                ; preds = %if.end.i7.dwapb_do_irq.exit_crit_edge, %chained_irq_enter.exit.dwapb_do_irq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_status.i) #7
  %52 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i9 = icmp eq ptr %53, null
  br i1 %tobool.not.i9, label %if.else.i10, label %dwapb_do_irq.exit.chained_irq_exit.exit_crit_edge

dwapb_do_irq.exit.chained_irq_exit.exit_crit_edge: ; preds = %dwapb_do_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i10:                                      ; preds = %dwapb_do_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %54 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i10, %dwapb_do_irq.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %55, %if.else.i10 ], [ %53, %dwapb_do_irq.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ports = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 34
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #7
  %nr_ports = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7159.not = icmp eq i32 %5, 0
  br i1 %cmp7159.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %idx11 = getelementptr %struct.dwapb_gpio_port, ptr %7, i32 %i.0160, i32 4
  %8 = ptrtoint ptr %idx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx11, align 4
  %ctx14 = getelementptr %struct.dwapb_gpio_port, ptr %7, i32 %i.0160, i32 3
  %10 = ptrtoint ptr %ctx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx14, align 4
  %mul = mul i32 %9, 12
  %add = add i32 %mul, 4
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %7, i32 0, i32 24
  %14 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg.i, align 4
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %for.body.dwapb_read.exit_crit_edge, label %if.then.i.i

for.body.dwapb_read.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_read.exit

if.then.i.i:                                      ; preds = %for.body
  %18 = add i32 %mul, -48
  %19 = lshr exact i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %18)
  %20 = icmp ult i32 %18, 28
  br i1 %20, label %switch.hole_check, label %if.then.i.i.dwapb_read.exit_crit_edge

if.then.i.i.dwapb_read.exit_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_read.exit

switch.hole_check:                                ; preds = %if.then.i.i
  %switch.maskindex = trunc i32 %19 to i8
  %switch.shifted = lshr i8 79, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.dwapb_read.exit_crit_edge, label %switch.lookup

switch.hole_check.dwapb_read.exit_crit_edge:      ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_read.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_suspend, i32 0, i32 %19
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dwapb_read.exit

dwapb_read.exit:                                  ; preds = %switch.lookup, %switch.hole_check.dwapb_read.exit_crit_edge, %if.then.i.i.dwapb_read.exit_crit_edge, %for.body.dwapb_read.exit_crit_edge
  %retval.0.i.i = phi i32 [ %add, %for.body.dwapb_read.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ %add, %switch.hole_check.dwapb_read.exit_crit_edge ], [ %add, %if.then.i.i.dwapb_read.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %13, i32 %retval.0.i.i
  %call2.i = tail call i32 %15(ptr noundef %add.ptr.i) #7
  %dir = getelementptr inbounds %struct.dwapb_context, ptr %11, i32 0, i32 1
  %23 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2.i, ptr %dir, align 4
  %24 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ports, align 4
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %read_reg.i62 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 24
  %28 = ptrtoint ptr %read_reg.i62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_reg.i62, align 4
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i.i, align 4
  %and.i.i64 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %cmp.not.i.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %cmp.not.i.i65, label %dwapb_read.exit.dwapb_read.exit75_crit_edge, label %if.then.i.i66

dwapb_read.exit.dwapb_read.exit75_crit_edge:      ; preds = %dwapb_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_read.exit75

if.then.i.i66:                                    ; preds = %dwapb_read.exit
  %32 = add i32 %mul, -52
  %33 = lshr exact i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %32)
  %34 = icmp ult i32 %32, 28
  br i1 %34, label %switch.hole_check162, label %if.then.i.i66.dwapb_read.exit75_crit_edge

if.then.i.i66.dwapb_read.exit75_crit_edge:        ; preds = %if.then.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_read.exit75

switch.hole_check162:                             ; preds = %if.then.i.i66
  %switch.maskindex164 = trunc i32 %33 to i8
  %switch.shifted165 = lshr i8 79, %switch.maskindex164
  %35 = and i8 %switch.shifted165, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %switch.lobit166.not = icmp eq i8 %35, 0
  br i1 %switch.lobit166.not, label %switch.hole_check162.dwapb_read.exit75_crit_edge, label %switch.lookup163

switch.hole_check162.dwapb_read.exit75_crit_edge: ; preds = %switch.hole_check162
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_read.exit75

switch.lookup163:                                 ; preds = %switch.hole_check162
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep167 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_suspend.37, i32 0, i32 %33
  %36 = ptrtoint ptr %switch.gep167 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load168 = load i32, ptr %switch.gep167, align 4
  br label %dwapb_read.exit75

dwapb_read.exit75:                                ; preds = %switch.lookup163, %switch.hole_check162.dwapb_read.exit75_crit_edge, %if.then.i.i66.dwapb_read.exit75_crit_edge, %dwapb_read.exit.dwapb_read.exit75_crit_edge
  %retval.0.i.i72 = phi i32 [ %mul, %dwapb_read.exit.dwapb_read.exit75_crit_edge ], [ %switch.load168, %switch.lookup163 ], [ %mul, %switch.hole_check162.dwapb_read.exit75_crit_edge ], [ %mul, %if.then.i.i66.dwapb_read.exit75_crit_edge ]
  %add.ptr.i73 = getelementptr i8, ptr %27, i32 %retval.0.i.i72
  %call2.i74 = tail call i32 %29(ptr noundef %add.ptr.i73) #7
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call2.i74, ptr %11, align 4
  %mul19 = shl i32 %9, 2
  %add20 = add i32 %mul19, 80
  %38 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ports, align 4
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %read_reg.i78 = getelementptr inbounds %struct.gpio_chip, ptr %39, i32 0, i32 24
  %42 = ptrtoint ptr %read_reg.i78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_reg.i78, align 4
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i.i, align 4
  %and.i.i80 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i80)
  %cmp.not.i.i81 = icmp eq i32 %and.i.i80, 0
  br i1 %cmp.not.i.i81, label %dwapb_read.exit75.dwapb_read.exit91_crit_edge, label %if.then.i.i82

dwapb_read.exit75.dwapb_read.exit91_crit_edge:    ; preds = %dwapb_read.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_read.exit91

if.then.i.i82:                                    ; preds = %dwapb_read.exit75
  %46 = add i32 %mul19, 28
  %47 = lshr exact i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -29, i32 %mul19)
  %48 = icmp ugt i32 %mul19, -29
  br i1 %48, label %switch.hole_check170, label %if.then.i.i82.dwapb_read.exit91_crit_edge

if.then.i.i82.dwapb_read.exit91_crit_edge:        ; preds = %if.then.i.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_read.exit91

switch.hole_check170:                             ; preds = %if.then.i.i82
  %switch.maskindex172 = trunc i32 %47 to i8
  %switch.shifted173 = lshr i8 79, %switch.maskindex172
  %49 = and i8 %switch.shifted173, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %switch.lobit174.not = icmp eq i8 %49, 0
  br i1 %switch.lobit174.not, label %switch.hole_check170.dwapb_read.exit91_crit_edge, label %switch.lookup171

switch.hole_check170.dwapb_read.exit91_crit_edge: ; preds = %switch.hole_check170
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_read.exit91

switch.lookup171:                                 ; preds = %switch.hole_check170
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep175 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_suspend.38, i32 0, i32 %47
  %50 = ptrtoint ptr %switch.gep175 to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load176 = load i32, ptr %switch.gep175, align 4
  br label %dwapb_read.exit91

dwapb_read.exit91:                                ; preds = %switch.lookup171, %switch.hole_check170.dwapb_read.exit91_crit_edge, %if.then.i.i82.dwapb_read.exit91_crit_edge, %dwapb_read.exit75.dwapb_read.exit91_crit_edge
  %retval.0.i.i88 = phi i32 [ %add20, %dwapb_read.exit75.dwapb_read.exit91_crit_edge ], [ %switch.load176, %switch.lookup171 ], [ %add20, %switch.hole_check170.dwapb_read.exit91_crit_edge ], [ %add20, %if.then.i.i82.dwapb_read.exit91_crit_edge ]
  %add.ptr.i89 = getelementptr i8, ptr %41, i32 %retval.0.i.i88
  %call2.i90 = tail call i32 %43(ptr noundef %add.ptr.i89) #7
  %ext = getelementptr inbounds %struct.dwapb_context, ptr %11, i32 0, i32 2
  %51 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call2.i90, ptr %ext, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp22 = icmp eq i32 %9, 0
  br i1 %cmp22, label %if.then, label %dwapb_read.exit91.if.end_crit_edge

dwapb_read.exit91.if.end_crit_edge:               ; preds = %dwapb_read.exit91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %dwapb_read.exit91
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ports, align 4
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %read_reg.i94 = getelementptr inbounds %struct.gpio_chip, ptr %53, i32 0, i32 24
  %56 = ptrtoint ptr %read_reg.i94 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_reg.i94, align 4
  %58 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i.i, align 4
  %and.i.i96 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96)
  %cmp.not.i.i97 = icmp eq i32 %and.i.i96, 0
  %spec.select = select i1 %cmp.not.i.i97, i32 52, i32 68
  %add.ptr.i100 = getelementptr i8, ptr %55, i32 %spec.select
  %call2.i101 = tail call i32 %57(ptr noundef %add.ptr.i100) #7
  %int_mask = getelementptr inbounds %struct.dwapb_context, ptr %11, i32 0, i32 4
  %60 = ptrtoint ptr %int_mask to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call2.i101, ptr %int_mask, align 4
  %61 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ports, align 4
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %read_reg.i105 = getelementptr inbounds %struct.gpio_chip, ptr %62, i32 0, i32 24
  %65 = ptrtoint ptr %read_reg.i105 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_reg.i105, align 4
  %add.ptr.i112 = getelementptr i8, ptr %64, i32 48
  %call2.i113 = tail call i32 %66(ptr noundef %add.ptr.i112) #7
  %int_en = getelementptr inbounds %struct.dwapb_context, ptr %11, i32 0, i32 3
  %67 = ptrtoint ptr %int_en to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call2.i113, ptr %int_en, align 4
  %68 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ports, align 4
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %read_reg.i117 = getelementptr inbounds %struct.gpio_chip, ptr %69, i32 0, i32 24
  %72 = ptrtoint ptr %read_reg.i117 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_reg.i117, align 4
  %74 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i.i, align 4
  %and.i.i119 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i119)
  %cmp.not.i.i120 = icmp eq i32 %and.i.i119, 0
  %retval.0.i.i123 = select i1 %cmp.not.i.i120, i32 60, i32 56
  %add.ptr.i124 = getelementptr i8, ptr %71, i32 %retval.0.i.i123
  %call2.i125 = tail call i32 %73(ptr noundef %add.ptr.i124) #7
  %int_pol = getelementptr inbounds %struct.dwapb_context, ptr %11, i32 0, i32 6
  %76 = ptrtoint ptr %int_pol to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call2.i125, ptr %int_pol, align 4
  %77 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ports, align 4
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %read_reg.i129 = getelementptr inbounds %struct.gpio_chip, ptr %78, i32 0, i32 24
  %81 = ptrtoint ptr %read_reg.i129 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read_reg.i129, align 4
  %83 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i.i, align 4
  %and.i.i131 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i131)
  %cmp.not.i.i132 = icmp eq i32 %and.i.i131, 0
  %retval.0.i.i135 = select i1 %cmp.not.i.i132, i32 56, i32 52
  %add.ptr.i136 = getelementptr i8, ptr %80, i32 %retval.0.i.i135
  %call2.i137 = tail call i32 %82(ptr noundef %add.ptr.i136) #7
  %int_type = getelementptr inbounds %struct.dwapb_context, ptr %11, i32 0, i32 5
  %85 = ptrtoint ptr %int_type to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call2.i137, ptr %int_type, align 4
  %86 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ports, align 4
  %88 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i, align 4
  %read_reg.i141 = getelementptr inbounds %struct.gpio_chip, ptr %87, i32 0, i32 24
  %90 = ptrtoint ptr %read_reg.i141 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read_reg.i141, align 4
  %add.ptr.i148 = getelementptr i8, ptr %89, i32 72
  %call2.i149 = tail call i32 %91(ptr noundef %add.ptr.i148) #7
  %int_deb = getelementptr inbounds %struct.dwapb_context, ptr %11, i32 0, i32 7
  %92 = ptrtoint ptr %int_deb to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call2.i149, ptr %int_deb, align 4
  %wake_en = getelementptr inbounds %struct.dwapb_context, ptr %11, i32 0, i32 8
  %93 = ptrtoint ptr %wake_en to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wake_en, align 4
  %neg = xor i32 %94, -1
  %95 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ports, align 4
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %96, i32 0, i32 25
  %99 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_reg.i, align 4
  %101 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i.i, align 4
  %and.i.i154 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i154)
  %cmp.not.i.i155 = icmp eq i32 %and.i.i154, 0
  %retval.0.i.i157 = select i1 %cmp.not.i.i155, i32 52, i32 68
  %add.ptr.i158 = getelementptr i8, ptr %98, i32 %retval.0.i.i157
  tail call void %100(ptr noundef %add.ptr.i158, i32 noundef %neg) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %dwapb_read.exit91.if.end_crit_edge
  %inc = add nuw i32 %i.0160, 1
  %103 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nr_ports, align 4
  %cmp7 = icmp ult i32 %inc, %104
  br i1 %cmp7, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call4) #7
  %clks = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 6
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ports = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %clks = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35) #10
  br label %cleanup

do.body5:                                         ; preds = %if.end.i
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 34
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #7
  %nr_ports = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12162.not = icmp eq i32 %7, 0
  br i1 %cmp12162.not, label %do.body5.for.end_crit_edge, label %for.body.lr.ph

do.body5.for.end_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body5
  %regs.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.dwapb_gpio, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.lr.ph
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end27.for.body_crit_edge ]
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 4
  %idx16 = getelementptr %struct.dwapb_gpio_port, ptr %9, i32 %i.0163, i32 4
  %10 = ptrtoint ptr %idx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx16, align 4
  %ctx19 = getelementptr %struct.dwapb_gpio_port, ptr %9, i32 %i.0163, i32 3
  %12 = ptrtoint ptr %ctx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx19, align 4
  %mul = mul i32 %11, 12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 25
  %18 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i, align 4
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %for.body.dwapb_write.exit_crit_edge, label %if.then.i.i

for.body.dwapb_write.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_write.exit

if.then.i.i:                                      ; preds = %for.body
  %22 = add i32 %mul, -52
  %23 = lshr exact i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %22)
  %24 = icmp ult i32 %22, 28
  br i1 %24, label %switch.hole_check, label %if.then.i.i.dwapb_write.exit_crit_edge

if.then.i.i.dwapb_write.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_write.exit

switch.hole_check:                                ; preds = %if.then.i.i
  %switch.maskindex = trunc i32 %23 to i8
  %switch.shifted = lshr i8 79, %switch.maskindex
  %25 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %switch.lobit.not = icmp eq i8 %25, 0
  br i1 %switch.lobit.not, label %switch.hole_check.dwapb_write.exit_crit_edge, label %switch.lookup

switch.hole_check.dwapb_write.exit_crit_edge:     ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_write.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_resume, i32 0, i32 %23
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dwapb_write.exit

dwapb_write.exit:                                 ; preds = %switch.lookup, %switch.hole_check.dwapb_write.exit_crit_edge, %if.then.i.i.dwapb_write.exit_crit_edge, %for.body.dwapb_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ %mul, %for.body.dwapb_write.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ %mul, %switch.hole_check.dwapb_write.exit_crit_edge ], [ %mul, %if.then.i.i.dwapb_write.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %17, i32 %retval.0.i.i
  tail call void %19(ptr noundef %add.ptr.i, i32 noundef %15) #7
  %add21 = add i32 %mul, 4
  %dir = getelementptr inbounds %struct.dwapb_context, ptr %13, i32 0, i32 1
  %27 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dir, align 4
  %29 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ports, align 4
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %write_reg.i66 = getelementptr inbounds %struct.gpio_chip, ptr %30, i32 0, i32 25
  %33 = ptrtoint ptr %write_reg.i66 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg.i66, align 4
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 4
  %and.i.i68 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68)
  %cmp.not.i.i69 = icmp eq i32 %and.i.i68, 0
  br i1 %cmp.not.i.i69, label %dwapb_write.exit.dwapb_write.exit78_crit_edge, label %if.then.i.i70

dwapb_write.exit.dwapb_write.exit78_crit_edge:    ; preds = %dwapb_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_write.exit78

if.then.i.i70:                                    ; preds = %dwapb_write.exit
  %37 = add i32 %mul, -48
  %38 = lshr exact i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %37)
  %39 = icmp ult i32 %37, 28
  br i1 %39, label %switch.hole_check165, label %if.then.i.i70.dwapb_write.exit78_crit_edge

if.then.i.i70.dwapb_write.exit78_crit_edge:       ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_write.exit78

switch.hole_check165:                             ; preds = %if.then.i.i70
  %switch.maskindex167 = trunc i32 %38 to i8
  %switch.shifted168 = lshr i8 79, %switch.maskindex167
  %40 = and i8 %switch.shifted168, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.lobit169.not = icmp eq i8 %40, 0
  br i1 %switch.lobit169.not, label %switch.hole_check165.dwapb_write.exit78_crit_edge, label %switch.lookup166

switch.hole_check165.dwapb_write.exit78_crit_edge: ; preds = %switch.hole_check165
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_write.exit78

switch.lookup166:                                 ; preds = %switch.hole_check165
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep170 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_resume.39, i32 0, i32 %38
  %41 = ptrtoint ptr %switch.gep170 to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load171 = load i32, ptr %switch.gep170, align 4
  br label %dwapb_write.exit78

dwapb_write.exit78:                               ; preds = %switch.lookup166, %switch.hole_check165.dwapb_write.exit78_crit_edge, %if.then.i.i70.dwapb_write.exit78_crit_edge, %dwapb_write.exit.dwapb_write.exit78_crit_edge
  %retval.0.i.i76 = phi i32 [ %add21, %dwapb_write.exit.dwapb_write.exit78_crit_edge ], [ %switch.load171, %switch.lookup166 ], [ %add21, %switch.hole_check165.dwapb_write.exit78_crit_edge ], [ %add21, %if.then.i.i70.dwapb_write.exit78_crit_edge ]
  %add.ptr.i77 = getelementptr i8, ptr %32, i32 %retval.0.i.i76
  tail call void %34(ptr noundef %add.ptr.i77, i32 noundef %28) #7
  %mul22 = shl i32 %11, 2
  %add23 = add i32 %mul22, 80
  %ext = getelementptr inbounds %struct.dwapb_context, ptr %13, i32 0, i32 2
  %42 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ext, align 4
  %44 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ports, align 4
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %write_reg.i81 = getelementptr inbounds %struct.gpio_chip, ptr %45, i32 0, i32 25
  %48 = ptrtoint ptr %write_reg.i81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg.i81, align 4
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i, align 4
  %and.i.i83 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i83)
  %cmp.not.i.i84 = icmp eq i32 %and.i.i83, 0
  br i1 %cmp.not.i.i84, label %dwapb_write.exit78.dwapb_write.exit93_crit_edge, label %if.then.i.i85

dwapb_write.exit78.dwapb_write.exit93_crit_edge:  ; preds = %dwapb_write.exit78
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_write.exit93

if.then.i.i85:                                    ; preds = %dwapb_write.exit78
  %52 = add i32 %mul22, 28
  %53 = lshr exact i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -29, i32 %mul22)
  %54 = icmp ugt i32 %mul22, -29
  br i1 %54, label %switch.hole_check173, label %if.then.i.i85.dwapb_write.exit93_crit_edge

if.then.i.i85.dwapb_write.exit93_crit_edge:       ; preds = %if.then.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_write.exit93

switch.hole_check173:                             ; preds = %if.then.i.i85
  %switch.maskindex175 = trunc i32 %53 to i8
  %switch.shifted176 = lshr i8 79, %switch.maskindex175
  %55 = and i8 %switch.shifted176, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %switch.lobit177.not = icmp eq i8 %55, 0
  br i1 %switch.lobit177.not, label %switch.hole_check173.dwapb_write.exit93_crit_edge, label %switch.lookup174

switch.hole_check173.dwapb_write.exit93_crit_edge: ; preds = %switch.hole_check173
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwapb_write.exit93

switch.lookup174:                                 ; preds = %switch.hole_check173
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep178 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_resume.40, i32 0, i32 %53
  %56 = ptrtoint ptr %switch.gep178 to i32
  call void @__asan_load4_noabort(i32 %56)
  %switch.load179 = load i32, ptr %switch.gep178, align 4
  br label %dwapb_write.exit93

dwapb_write.exit93:                               ; preds = %switch.lookup174, %switch.hole_check173.dwapb_write.exit93_crit_edge, %if.then.i.i85.dwapb_write.exit93_crit_edge, %dwapb_write.exit78.dwapb_write.exit93_crit_edge
  %retval.0.i.i91 = phi i32 [ %add23, %dwapb_write.exit78.dwapb_write.exit93_crit_edge ], [ %switch.load179, %switch.lookup174 ], [ %add23, %switch.hole_check173.dwapb_write.exit93_crit_edge ], [ %add23, %if.then.i.i85.dwapb_write.exit93_crit_edge ]
  %add.ptr.i92 = getelementptr i8, ptr %47, i32 %retval.0.i.i91
  tail call void %49(ptr noundef %add.ptr.i92, i32 noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp24 = icmp eq i32 %11, 0
  br i1 %cmp24, label %if.then26, label %dwapb_write.exit93.if.end27_crit_edge

dwapb_write.exit93.if.end27_crit_edge:            ; preds = %dwapb_write.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %dwapb_write.exit93
  call void @__sanitizer_cov_trace_pc() #9
  %int_type = getelementptr inbounds %struct.dwapb_context, ptr %13, i32 0, i32 5
  %57 = ptrtoint ptr %int_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %int_type, align 4
  %59 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ports, align 4
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %write_reg.i96 = getelementptr inbounds %struct.gpio_chip, ptr %60, i32 0, i32 25
  %63 = ptrtoint ptr %write_reg.i96 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg.i96, align 4
  %65 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i.i, align 4
  %and.i.i98 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i98)
  %cmp.not.i.i99 = icmp eq i32 %and.i.i98, 0
  %spec.select = select i1 %cmp.not.i.i99, i32 56, i32 52
  %add.ptr.i103 = getelementptr i8, ptr %62, i32 %spec.select
  tail call void %64(ptr noundef %add.ptr.i103, i32 noundef %58) #7
  %int_pol = getelementptr inbounds %struct.dwapb_context, ptr %13, i32 0, i32 6
  %67 = ptrtoint ptr %int_pol to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %int_pol, align 4
  %69 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ports, align 4
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %write_reg.i107 = getelementptr inbounds %struct.gpio_chip, ptr %70, i32 0, i32 25
  %73 = ptrtoint ptr %write_reg.i107 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write_reg.i107, align 4
  %75 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i.i, align 4
  %and.i.i109 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i109)
  %cmp.not.i.i110 = icmp eq i32 %and.i.i109, 0
  %retval.0.i.i113 = select i1 %cmp.not.i.i110, i32 60, i32 56
  %add.ptr.i114 = getelementptr i8, ptr %72, i32 %retval.0.i.i113
  tail call void %74(ptr noundef %add.ptr.i114, i32 noundef %68) #7
  %int_deb = getelementptr inbounds %struct.dwapb_context, ptr %13, i32 0, i32 7
  %77 = ptrtoint ptr %int_deb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %int_deb, align 4
  %79 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ports, align 4
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %write_reg.i118 = getelementptr inbounds %struct.gpio_chip, ptr %80, i32 0, i32 25
  %83 = ptrtoint ptr %write_reg.i118 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write_reg.i118, align 4
  %add.ptr.i125 = getelementptr i8, ptr %82, i32 72
  tail call void %84(ptr noundef %add.ptr.i125, i32 noundef %78) #7
  %int_en = getelementptr inbounds %struct.dwapb_context, ptr %13, i32 0, i32 3
  %85 = ptrtoint ptr %int_en to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %int_en, align 4
  %87 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ports, align 4
  %89 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i, align 4
  %write_reg.i129 = getelementptr inbounds %struct.gpio_chip, ptr %88, i32 0, i32 25
  %91 = ptrtoint ptr %write_reg.i129 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_reg.i129, align 4
  %add.ptr.i136 = getelementptr i8, ptr %90, i32 48
  tail call void %92(ptr noundef %add.ptr.i136, i32 noundef %86) #7
  %int_mask = getelementptr inbounds %struct.dwapb_context, ptr %13, i32 0, i32 4
  %93 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %int_mask, align 4
  %95 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ports, align 4
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 4
  %write_reg.i140 = getelementptr inbounds %struct.gpio_chip, ptr %96, i32 0, i32 25
  %99 = ptrtoint ptr %write_reg.i140 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_reg.i140, align 4
  %101 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i.i, align 4
  %and.i.i142 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i142)
  %cmp.not.i.i143 = icmp eq i32 %and.i.i142, 0
  %retval.0.i.i145 = select i1 %cmp.not.i.i143, i32 52, i32 68
  %add.ptr.i146 = getelementptr i8, ptr %98, i32 %retval.0.i.i145
  tail call void %100(ptr noundef %add.ptr.i146, i32 noundef %94) #7
  %103 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ports, align 4
  %105 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i, align 4
  %write_reg.i150 = getelementptr inbounds %struct.gpio_chip, ptr %104, i32 0, i32 25
  %107 = ptrtoint ptr %write_reg.i150 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_reg.i150, align 4
  %109 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i.i, align 4
  %and.i.i152 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %cmp.not.i.i153 = icmp eq i32 %and.i.i152, 0
  %retval.0.i.i156 = select i1 %cmp.not.i.i153, i32 76, i32 64
  %add.ptr.i157 = getelementptr i8, ptr %106, i32 %retval.0.i.i156
  tail call void %108(ptr noundef %add.ptr.i157, i32 noundef -1) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %dwapb_write.exit93.if.end27_crit_edge
  %inc = add nuw i32 %i.0163, 1
  %111 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nr_ports, align 4
  %cmp12 = icmp ult i32 %inc, %112
  br i1 %cmp12, label %if.end27.for.body_crit_edge, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %do.body5.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !88, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_gpio_dwapb__227_834_dwapb_gpio_driver_init6, !1, !"__initcall__kmod_gpio_dwapb__227_834_dwapb_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-dwapb.c", i32 834, i32 1}
!2 = !{ptr @__exitcall_dwapb_gpio_driver_exit, !1, !"__exitcall_dwapb_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file228, !4, !"__UNIQUE_ID_file228", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-dwapb.c", i32 836, i32 1}
!5 = !{ptr @__UNIQUE_ID_license229, !4, !"__UNIQUE_ID_license229", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author230, !7, !"__UNIQUE_ID_author230", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-dwapb.c", i32 837, i32 1}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-dwapb.c", i32 838, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-dwapb.c", i32 839, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-dwapb.c", i32 826, i32 11}
!14 = !{ptr @dwapb_gpio_driver, !15, !"dwapb_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-dwapb.c", i32 824, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-dwapb.c", i32 581, i32 40}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-dwapb.c", i32 583, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dwapb_gpio_get_pdata._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @dwapb_gpio_get_pdata._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-dwapb.c", i32 589, i32 40}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-dwapb.c", i32 590, i32 40}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-dwapb.c", i32 591, i32 4}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dwapb_gpio_get_pdata._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @dwapb_gpio_get_pdata._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-dwapb.c", i32 601, i32 37}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-dwapb.c", i32 628, i32 10}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-dwapb.c", i32 632, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dwapb_get_reset._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @dwapb_get_reset._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-dwapb.c", i32 651, i32 21}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-dwapb.c", i32 652, i32 21}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-dwapb.c", i32 656, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dwapb_get_clks._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dwapb_get_clks._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-dwapb.c", i32 662, i32 3}
!55 = !{ptr @dwapb_get_clks._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @dwapb_get_clks._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-dwapb.c", i32 512, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dwapb_gpio_add_port._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @dwapb_gpio_add_port._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @dwapb_gpio_add_port.lock_key, !63, !"lock_key", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-dwapb.c", i32 529, i32 8}
!64 = !{ptr @dwapb_gpio_add_port.request_key, !63, !"request_key", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpio/gpio-dwapb.c", i32 531, i32 3}
!67 = !{ptr @dwapb_gpio_add_port._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @dwapb_gpio_add_port._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-dwapb.c", i32 433, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @dwapb_configure_irqs._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @dwapb_configure_irqs._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpio/gpio-dwapb.c", i32 468, i32 4}
!77 = !{ptr @dwapb_configure_irqs._entry.32, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @dwapb_configure_irqs._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @dwapb_of_match, !80, !"dwapb_of_match", i1 false, i1 false}
!80 = !{!"../drivers/gpio/gpio-dwapb.c", i32 669, i32 34}
!81 = !{ptr @dwapb_acpi_match, !82, !"dwapb_acpi_match", i1 false, i1 false}
!82 = !{!"../drivers/gpio/gpio-dwapb.c", i32 676, i32 36}
!83 = !{ptr @dwapb_gpio_pm_ops, !84, !"dwapb_gpio_pm_ops", i1 false, i1 false}
!84 = !{!"../drivers/gpio/gpio-dwapb.c", i32 821, i32 8}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpio/gpio-dwapb.c", i32 784, i32 3}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @dwapb_gpio_resume._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @dwapb_gpio_resume._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{!"auto-init"}
