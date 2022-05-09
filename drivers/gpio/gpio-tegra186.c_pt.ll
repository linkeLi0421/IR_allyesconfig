; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-tegra186.c_pt.bc'
source_filename = "../drivers/gpio/gpio-tegra186.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.tegra_gpio_soc = type { ptr, i32, ptr, i32, i32, ptr, i32, ptr }
%struct.tegra_gpio_port = type { ptr, i32, i32, i32 }
%struct.tegra186_pin_range = type { i32, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_gpio = type { %struct.gpio_chip, %struct.irq_chip, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }

@__initcall__kmod_gpio_tegra186__228_1146_tegra186_gpio_driver_init6 = internal global ptr @tegra186_gpio_driver_init, section ".initcall6.init", align 4
@tegra186_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra186_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra186_gpio_of_match, ptr @tegra186_gpio_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra186_gpio_driver_exit = internal global ptr @tegra186_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [65 x i8] c"gpio_tegra186.description=NVIDIA Tegra186 GPIO controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [57 x i8] c"gpio_tegra186.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [46 x i8] c"gpio_tegra186.file=drivers/gpio/gpio-tegra186\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [29 x i8] c"gpio_tegra186.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra186-gpio\00", [18 x i8] zeroinitializer }, align 32
@tegra186_gpio_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_main_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-gpio-aon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_aon_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_main_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-gpio-aon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_aon_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra234-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra234_main_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra234-gpio-aon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra234_aon_soc }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@tegra186_gpio_acpi_match = internal constant { [7 x %struct.acpi_device_id], [56 x i8] } { [7 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"NVDA0108\00", i32 ptrtoint (ptr @tegra186_main_soc to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"NVDA0208\00", i32 ptrtoint (ptr @tegra186_aon_soc to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"NVDA0308\00", i32 ptrtoint (ptr @tegra194_main_soc to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"NVDA0408\00", i32 ptrtoint (ptr @tegra194_aon_soc to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"NVDA0508\00", i32 ptrtoint (ptr @tegra241_main_soc to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"NVDA0608\00", i32 ptrtoint (ptr @tegra241_aon_soc to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"security\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"P%s.%02x\00", [23 x i8] zeroinitializer }, align 32
@tegra186_pmc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra186_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra186_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra186_gpio_irqs_per_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 654, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid number of interrupts (%u) for %u banks\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra186_gpio_irqs_per_bank\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-tegra186.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra186_gpio_irqs_per_bank._entry_ptr = internal global ptr @tegra186_gpio_irqs_per_bank._entry, section ".printk_index", align 4
@tegra186_gpio_add_pin_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 301, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid port %u for %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra186_gpio_add_pin_ranges\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra186_gpio_add_pin_ranges._entry_ptr = internal global ptr @tegra186_gpio_add_pin_ranges._entry, section ".printk_index", align 4
@tegra186_gpio_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 333, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid port number: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra186_gpio_of_xlate\00", [41 x i8] zeroinitializer }, align 32
@tegra186_gpio_of_xlate._entry_ptr = internal global ptr @tegra186_gpio_of_xlate._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra186_gpio_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tegra186_gpio_irq = private unnamed_addr constant [18 x i8] c"tegra186_gpio_irq\00", align 1
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hwirq = %d\00", [21 x i8] zeroinitializer }, align 32
@tegra186_gpio_init_route_mapping.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.6, ptr @.str.18, i8 0, i8 -104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio_tegra186\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra186_gpio_init_route_mapping\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"programming default interrupt routing for port %s\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra186_main_soc = internal constant { %struct.tegra_gpio_soc, [32 x i8] } { %struct.tegra_gpio_soc { ptr @tegra186_main_ports, i32 23, ptr @.str, i32 0, i32 1, ptr null, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra186_aon_soc = internal constant { %struct.tegra_gpio_soc, [32 x i8] } { %struct.tegra_gpio_soc { ptr @tegra186_aon_ports, i32 8, ptr @.str.42, i32 1, i32 1, ptr null, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra194_main_soc = internal constant { %struct.tegra_gpio_soc, [32 x i8] } { %struct.tegra_gpio_soc { ptr @tegra194_main_ports, i32 28, ptr @.str.51, i32 0, i32 8, ptr @tegra194_main_pin_ranges, i32 2, ptr @.str.52 }, [32 x i8] zeroinitializer }, align 32
@tegra194_aon_soc = internal constant { %struct.tegra_gpio_soc, [32 x i8] } { %struct.tegra_gpio_soc { ptr @tegra194_aon_ports, i32 5, ptr @.str.56, i32 1, i32 8, ptr null, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra234_main_soc = internal constant { %struct.tegra_gpio_soc, [32 x i8] } { %struct.tegra_gpio_soc { ptr @tegra234_main_ports, i32 29, ptr @.str.58, i32 0, i32 8, ptr null, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra234_aon_soc = internal constant { %struct.tegra_gpio_soc, [32 x i8] } { %struct.tegra_gpio_soc { ptr @tegra234_aon_ports, i32 6, ptr @.str.64, i32 1, i32 8, ptr null, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra186_main_ports = internal constant { [23 x %struct.tegra_gpio_port], [80 x i8] } { [23 x %struct.tegra_gpio_port] [%struct.tegra_gpio_port { ptr @.str.19, i32 2, i32 0, i32 7 }, %struct.tegra_gpio_port { ptr @.str.20, i32 3, i32 0, i32 7 }, %struct.tegra_gpio_port { ptr @.str.21, i32 3, i32 1, i32 7 }, %struct.tegra_gpio_port { ptr @.str.22, i32 3, i32 2, i32 6 }, %struct.tegra_gpio_port { ptr @.str.23, i32 2, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.24, i32 2, i32 2, i32 6 }, %struct.tegra_gpio_port { ptr @.str.25, i32 4, i32 1, i32 6 }, %struct.tegra_gpio_port { ptr @.str.26, i32 1, i32 0, i32 7 }, %struct.tegra_gpio_port { ptr @.str.27, i32 0, i32 4, i32 8 }, %struct.tegra_gpio_port { ptr @.str.28, i32 5, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.29, i32 5, i32 1, i32 1 }, %struct.tegra_gpio_port { ptr @.str.30, i32 1, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.31, i32 5, i32 3, i32 6 }, %struct.tegra_gpio_port { ptr @.str.32, i32 0, i32 0, i32 7 }, %struct.tegra_gpio_port { ptr @.str.33, i32 0, i32 1, i32 4 }, %struct.tegra_gpio_port { ptr @.str.34, i32 4, i32 0, i32 7 }, %struct.tegra_gpio_port { ptr @.str.35, i32 0, i32 2, i32 6 }, %struct.tegra_gpio_port { ptr @.str.36, i32 0, i32 5, i32 6 }, %struct.tegra_gpio_port { ptr @.str.37, i32 0, i32 3, i32 4 }, %struct.tegra_gpio_port { ptr @.str.38, i32 1, i32 2, i32 8 }, %struct.tegra_gpio_port { ptr @.str.39, i32 1, i32 3, i32 7 }, %struct.tegra_gpio_port { ptr @.str.40, i32 2, i32 3, i32 2 }, %struct.tegra_gpio_port { ptr @.str.41, i32 5, i32 2, i32 4 }], [80 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"H\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"J\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"K\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"O\00", [30 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Q\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"X\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Y\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BB\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CC\00", [29 x i8] zeroinitializer }, align 32
@tegra186_aon_ports = internal constant { [8 x %struct.tegra_gpio_port], [32 x i8] } { [8 x %struct.tegra_gpio_port] [%struct.tegra_gpio_port { ptr @.str.43, i32 0, i32 1, i32 5 }, %struct.tegra_gpio_port { ptr @.str.44, i32 0, i32 2, i32 6 }, %struct.tegra_gpio_port { ptr @.str.45, i32 0, i32 4, i32 8 }, %struct.tegra_gpio_port { ptr @.str.46, i32 0, i32 5, i32 8 }, %struct.tegra_gpio_port { ptr @.str.47, i32 0, i32 7, i32 4 }, %struct.tegra_gpio_port { ptr @.str.48, i32 0, i32 6, i32 8 }, %struct.tegra_gpio_port { ptr @.str.49, i32 0, i32 3, i32 3 }, %struct.tegra_gpio_port { ptr @.str.50, i32 0, i32 0, i32 5 }], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra186-gpio-aon\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"V\00", [30 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"W\00", [30 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Z\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AA\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EE\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FF\00", [29 x i8] zeroinitializer }, align 32
@tegra194_main_ports = internal constant { [28 x %struct.tegra_gpio_port], [96 x i8] } { [28 x %struct.tegra_gpio_port] [%struct.tegra_gpio_port { ptr @.str.19, i32 1, i32 2, i32 8 }, %struct.tegra_gpio_port { ptr @.str.20, i32 4, i32 7, i32 2 }, %struct.tegra_gpio_port { ptr @.str.21, i32 4, i32 3, i32 8 }, %struct.tegra_gpio_port { ptr @.str.22, i32 4, i32 4, i32 4 }, %struct.tegra_gpio_port { ptr @.str.23, i32 4, i32 5, i32 8 }, %struct.tegra_gpio_port { ptr @.str.24, i32 4, i32 6, i32 6 }, %struct.tegra_gpio_port { ptr @.str.25, i32 4, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.26, i32 4, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.27, i32 4, i32 2, i32 5 }, %struct.tegra_gpio_port { ptr @.str.28, i32 5, i32 1, i32 6 }, %struct.tegra_gpio_port { ptr @.str.29, i32 3, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.30, i32 3, i32 1, i32 4 }, %struct.tegra_gpio_port { ptr @.str.31, i32 2, i32 3, i32 8 }, %struct.tegra_gpio_port { ptr @.str.32, i32 2, i32 4, i32 3 }, %struct.tegra_gpio_port { ptr @.str.33, i32 5, i32 0, i32 6 }, %struct.tegra_gpio_port { ptr @.str.34, i32 2, i32 5, i32 8 }, %struct.tegra_gpio_port { ptr @.str.35, i32 2, i32 6, i32 8 }, %struct.tegra_gpio_port { ptr @.str.36, i32 2, i32 7, i32 6 }, %struct.tegra_gpio_port { ptr @.str.43, i32 3, i32 3, i32 8 }, %struct.tegra_gpio_port { ptr @.str.37, i32 3, i32 4, i32 8 }, %struct.tegra_gpio_port { ptr @.str.44, i32 3, i32 5, i32 1 }, %struct.tegra_gpio_port { ptr @.str.45, i32 1, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.46, i32 1, i32 1, i32 2 }, %struct.tegra_gpio_port { ptr @.str.38, i32 2, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.39, i32 2, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.47, i32 2, i32 2, i32 8 }, %struct.tegra_gpio_port { ptr @.str.50, i32 3, i32 2, i32 2 }, %struct.tegra_gpio_port { ptr @.str.53, i32 0, i32 0, i32 2 }], [96 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra194-gpio\00", [18 x i8] zeroinitializer }, align 32
@tegra194_main_pin_ranges = internal constant { [2 x %struct.tegra186_pin_range], [16 x i8] } { [2 x %struct.tegra186_pin_range] [%struct.tegra186_pin_range { i32 216, ptr @.str.54 }, %struct.tegra186_pin_range { i32 217, ptr @.str.55 }], [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,tegra194-pinmux\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GG\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pex_l5_clkreq_n_pgg0\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pex_l5_rst_n_pgg1\00", [46 x i8] zeroinitializer }, align 32
@tegra194_aon_ports = internal constant { [5 x %struct.tegra_gpio_port], [48 x i8] } { [5 x %struct.tegra_gpio_port] [%struct.tegra_gpio_port { ptr @.str.48, i32 0, i32 3, i32 8 }, %struct.tegra_gpio_port { ptr @.str.40, i32 0, i32 4, i32 4 }, %struct.tegra_gpio_port { ptr @.str.41, i32 0, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.57, i32 0, i32 2, i32 3 }, %struct.tegra_gpio_port { ptr @.str.49, i32 0, i32 0, i32 7 }], [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra194-gpio-aon\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DD\00", [29 x i8] zeroinitializer }, align 32
@tegra234_main_ports = internal constant { [29 x %struct.tegra_gpio_port], [112 x i8] } { [29 x %struct.tegra_gpio_port] [%struct.tegra_gpio_port { ptr @.str.19, i32 0, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.20, i32 0, i32 3, i32 1 }, %struct.tegra_gpio_port { ptr @.str.21, i32 5, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.22, i32 5, i32 2, i32 4 }, %struct.tegra_gpio_port { ptr @.str.23, i32 5, i32 3, i32 8 }, %struct.tegra_gpio_port { ptr @.str.24, i32 5, i32 4, i32 6 }, %struct.tegra_gpio_port { ptr @.str.25, i32 4, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.26, i32 4, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.27, i32 4, i32 2, i32 7 }, %struct.tegra_gpio_port { ptr @.str.28, i32 5, i32 0, i32 6 }, %struct.tegra_gpio_port { ptr @.str.29, i32 3, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.30, i32 3, i32 1, i32 4 }, %struct.tegra_gpio_port { ptr @.str.31, i32 2, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.32, i32 2, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.34, i32 2, i32 2, i32 8 }, %struct.tegra_gpio_port { ptr @.str.35, i32 2, i32 3, i32 8 }, %struct.tegra_gpio_port { ptr @.str.36, i32 2, i32 4, i32 6 }, %struct.tegra_gpio_port zeroinitializer, %struct.tegra_gpio_port zeroinitializer, %struct.tegra_gpio_port zeroinitializer, %struct.tegra_gpio_port zeroinitializer, %struct.tegra_gpio_port { ptr @.str.38, i32 1, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.39, i32 1, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.47, i32 1, i32 2, i32 8 }, %struct.tegra_gpio_port { ptr @.str.59, i32 0, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.60, i32 0, i32 2, i32 4 }, %struct.tegra_gpio_port { ptr @.str.61, i32 3, i32 3, i32 2 }, %struct.tegra_gpio_port { ptr @.str.62, i32 3, i32 4, i32 4 }, %struct.tegra_gpio_port { ptr @.str.63, i32 3, i32 2, i32 8 }], [112 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra234-gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AC\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AD\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AE\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AF\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AG\00", [29 x i8] zeroinitializer }, align 32
@tegra234_aon_ports = internal constant { [6 x %struct.tegra_gpio_port], [32 x i8] } { [6 x %struct.tegra_gpio_port] [%struct.tegra_gpio_port { ptr @.str.48, i32 0, i32 4, i32 8 }, %struct.tegra_gpio_port { ptr @.str.40, i32 0, i32 5, i32 4 }, %struct.tegra_gpio_port { ptr @.str.41, i32 0, i32 2, i32 8 }, %struct.tegra_gpio_port { ptr @.str.57, i32 0, i32 3, i32 3 }, %struct.tegra_gpio_port { ptr @.str.49, i32 0, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.53, i32 0, i32 1, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra234-gpio-aon\00", [46 x i8] zeroinitializer }, align 32
@tegra241_main_soc = internal constant { %struct.tegra_gpio_soc, [32 x i8] } { %struct.tegra_gpio_soc { ptr @tegra241_main_ports, i32 12, ptr @.str.65, i32 0, i32 8, ptr null, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra241_aon_soc = internal constant { %struct.tegra_gpio_soc, [32 x i8] } { %struct.tegra_gpio_soc { ptr @tegra241_aon_ports, i32 2, ptr @.str.66, i32 1, i32 8, ptr null, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra241_main_ports = internal constant { [12 x %struct.tegra_gpio_port], [32 x i8] } { [12 x %struct.tegra_gpio_port] [%struct.tegra_gpio_port { ptr @.str.19, i32 0, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.20, i32 0, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.21, i32 0, i32 2, i32 2 }, %struct.tegra_gpio_port { ptr @.str.22, i32 0, i32 3, i32 6 }, %struct.tegra_gpio_port { ptr @.str.23, i32 0, i32 4, i32 8 }, %struct.tegra_gpio_port { ptr @.str.24, i32 1, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.25, i32 1, i32 1, i32 8 }, %struct.tegra_gpio_port { ptr @.str.26, i32 1, i32 2, i32 8 }, %struct.tegra_gpio_port zeroinitializer, %struct.tegra_gpio_port { ptr @.str.28, i32 1, i32 3, i32 8 }, %struct.tegra_gpio_port { ptr @.str.29, i32 1, i32 4, i32 4 }, %struct.tegra_gpio_port { ptr @.str.30, i32 1, i32 5, i32 6 }], [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra241-gpio\00", [18 x i8] zeroinitializer }, align 32
@tegra241_aon_ports = internal constant { [2 x %struct.tegra_gpio_port], [32 x i8] } { [2 x %struct.tegra_gpio_port] [%struct.tegra_gpio_port { ptr @.str.48, i32 0, i32 0, i32 8 }, %struct.tegra_gpio_port { ptr @.str.40, i32 0, i32 0, i32 4 }], [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra241-gpio-aon\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"tegra186_gpio_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1138, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1140, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"tegra186_gpio_of_match\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1102, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [25 x i8] c"tegra186_gpio_acpi_match\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1127, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 683, i32 61 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 690, i32 59 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 746, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"tegra186_pmc_of_match\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 577, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 831, i32 9 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 653, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 300, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 333, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 490, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 609, i32 5 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"tegra186_main_soc\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 868, i32 36 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"tegra186_aon_soc\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 895, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant [18 x i8] c"tegra194_main_soc\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 947, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"tegra194_aon_soc\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 974, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"tegra234_main_soc\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1018, i32 36 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"tegra234_aon_soc\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1043, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"tegra186_main_ports\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 842, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 843, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 844, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 845, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 846, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 847, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 848, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 849, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 850, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 851, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 852, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 853, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 854, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 855, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 856, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 857, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 858, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 859, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 860, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 861, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 862, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 863, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 864, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 865, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [19 x i8] c"tegra186_aon_ports\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 884, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 898, i32 10 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 885, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 886, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 887, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 888, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 889, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 890, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 891, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 892, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c"tegra194_main_ports\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 911, i32 37 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 950, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant [25 x i8] c"tegra194_main_pin_ranges\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 942, i32 40 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 955, i32 12 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 939, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 943, i32 31 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 944, i32 31 }
@___asan_gen_.295 = private unnamed_addr constant [19 x i8] c"tegra194_aon_ports\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 966, i32 37 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 977, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 970, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c"tegra234_main_ports\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 990, i32 37 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1021, i32 10 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1011, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1012, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1013, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1014, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1015, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [19 x i8] c"tegra234_aon_ports\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1034, i32 37 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1046, i32 10 }
@___asan_gen_.331 = private unnamed_addr constant [18 x i8] c"tegra241_main_soc\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1073, i32 36 }
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"tegra241_aon_soc\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1094, i32 36 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c"tegra241_main_ports\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1059, i32 37 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1076, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant [19 x i8] c"tegra241_aon_ports\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1089, i32 37 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [32 x i8] c"../drivers/gpio/gpio-tegra186.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1097, i32 10 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_tegra186_gpio_driver_exit, ptr @__initcall__kmod_gpio_tegra186__228_1146_tegra186_gpio_driver_init6, ptr @tegra186_gpio_add_pin_ranges._entry, ptr @tegra186_gpio_add_pin_ranges._entry_ptr, ptr @tegra186_gpio_driver_exit, ptr @tegra186_gpio_irqs_per_bank._entry, ptr @tegra186_gpio_irqs_per_bank._entry_ptr, ptr @tegra186_gpio_of_xlate._entry, ptr @tegra186_gpio_of_xlate._entry_ptr, ptr @tegra186_gpio_driver, ptr @.str, ptr @tegra186_gpio_of_match, ptr @tegra186_gpio_acpi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tegra186_pmc_of_match, ptr @tegra186_gpio_probe.lock_key, ptr @tegra186_gpio_probe.request_key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @tegra186_gpio_irq._rs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @tegra186_main_soc, ptr @tegra186_aon_soc, ptr @tegra194_main_soc, ptr @tegra194_aon_soc, ptr @tegra234_main_soc, ptr @tegra234_aon_soc, ptr @tegra186_main_ports, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @tegra186_aon_ports, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @tegra194_main_ports, ptr @.str.51, ptr @tegra194_main_pin_ranges, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @tegra194_aon_ports, ptr @.str.56, ptr @.str.57, ptr @tegra234_main_ports, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @tegra234_aon_ports, ptr @.str.64, ptr @tegra241_main_soc, ptr @tegra241_aon_soc, ptr @tegra241_main_ports, ptr @.str.65, ptr @tegra241_aon_ports, ptr @.str.66], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_gpio_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_gpio_acpi_match to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_pmc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_gpio_irqs_per_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_gpio_add_pin_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_gpio_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_gpio_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_main_soc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_aon_soc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_main_soc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_aon_soc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra234_main_soc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra234_aon_soc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_main_ports to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_aon_ports to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_main_ports to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_main_pin_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_aon_ports to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra234_main_ports to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra234_aon_ports to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra241_main_soc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra241_aon_soc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra241_main_ports to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra241_aon_ports to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra186_gpio_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra186_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra186_gpio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 512, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup244_crit_edge, label %if.end

entry.cleanup244_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %soc = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %soc, align 4
  %name = getelementptr inbounds %struct.tegra_gpio_soc, ptr %call2, i32 0, i32 2
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 4
  %num_ports446 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %num_ports446 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ports446, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp447.not = icmp eq i32 %6, 0
  br i1 %cmp447.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %num_banks = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %7 = phi ptr [ %call2, %for.body.lr.ph ], [ %16, %for.inc.for.body_crit_edge ]
  %i.0448 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %bank = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.0448, i32 1
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank, align 4
  %12 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_banks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp9 = icmp ugt i32 %11, %13
  br i1 %cmp9, label %if.then10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %num_banks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %num_banks, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0448, 1
  %15 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc, align 4
  %num_ports = getelementptr inbounds %struct.tegra_gpio_soc, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %num_banks17 = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %num_banks17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_banks17, align 4
  %inc18 = add i32 %20, 1
  store i32 %inc18, ptr %num_banks17, align 4
  %call19 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #8
  %secure = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %secure to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call19, ptr %secure, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %for.end.if.end31_crit_edge

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then22:                                        ; preds = %for.end
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %22 = ptrtoint ptr %secure to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call23, ptr %secure, align 4
  %cmp.i409 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i409, label %if.then27, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call23 to i32
  br label %cleanup244

if.end31:                                         ; preds = %if.then22.if.end31_crit_edge, %for.end.if.end31_crit_edge
  %call32 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #8
  %base = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call32, ptr %base, align 4
  %cmp.i410 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i410, label %if.then35, label %if.end31.if.end44_crit_edge

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then35:                                        ; preds = %if.end31
  %call36 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %25 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call36, ptr %base, align 4
  %cmp.i411 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i411, label %if.then40, label %if.then35.if.end44_crit_edge

if.then35.if.end44_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call36 to i32
  br label %cleanup244

if.end44:                                         ; preds = %if.then35.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %call45 = tail call i32 @platform_irq_count(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.cleanup244_crit_edge, label %if.end48

if.end44.cleanup244_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

if.end48:                                         ; preds = %if.end44
  %num_irq = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %num_irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call45, ptr %num_irq, align 4
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 4
  %30 = ptrtoint ptr %num_banks17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_banks17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call45, i32 %31)
  %cmp.i412 = icmp ugt i32 %call45, %31
  br i1 %cmp.i412, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.end48
  %rem.i = urem i32 %call45, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp4.not.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp4.not.not.i, label %if.then.i.if.end11.i_crit_edge, label %if.then.i.tegra186_gpio_irqs_per_bank.exit.thread_crit_edge

if.then.i.tegra186_gpio_irqs_per_bank.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra186_gpio_irqs_per_bank.exit.thread

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end6.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_cmp4(i32 %call45, i32 %31)
  %cmp9.old.i = icmp ult i32 %call45, %31
  br i1 %cmp9.old.i, label %if.end6.i.tegra186_gpio_irqs_per_bank.exit.thread_crit_edge, label %if.end6.i.if.end11.i_crit_edge

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end6.i.tegra186_gpio_irqs_per_bank.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra186_gpio_irqs_per_bank.exit.thread

if.end11.i:                                       ; preds = %if.end6.i.if.end11.i_crit_edge, %if.then.i.if.end11.i_crit_edge
  %div.i = udiv i32 %call45, %31
  %num_irqs_per_bank.i = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %num_irqs_per_bank.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div.i, ptr %num_irqs_per_bank.i, align 4
  %33 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soc, align 4
  %num_irqs_per_bank15.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %num_irqs_per_bank15.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_irqs_per_bank15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %36)
  %cmp16.i = icmp ugt i32 %div.i, %36
  br i1 %cmp16.i, label %if.end11.i.tegra186_gpio_irqs_per_bank.exit.thread_crit_edge, label %if.end52

if.end11.i.tegra186_gpio_irqs_per_bank.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra186_gpio_irqs_per_bank.exit.thread

tegra186_gpio_irqs_per_bank.exit.thread:          ; preds = %if.end11.i.tegra186_gpio_irqs_per_bank.exit.thread_crit_edge, %if.end6.i.tegra186_gpio_irqs_per_bank.exit.thread_crit_edge, %if.then.i.tegra186_gpio_irqs_per_bank.exit.thread_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.4, i32 noundef %call45, i32 noundef %31) #11
  br label %cleanup244

if.end52:                                         ; preds = %if.end11.i
  %37 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_irq, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 4) #8
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !197

devm_kcalloc.exit.thread:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %irq56431 = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %irq56431 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %irq56431, align 4
  br label %cleanup244

devm_kcalloc.exit:                                ; preds = %if.end52
  %42 = extractvalue { i32, i1 } %39, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %42, i32 noundef 3520) #8
  %irq56 = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %irq56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i, ptr %irq56, align 4
  %tobool58.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool58.not, label %devm_kcalloc.exit.cleanup244_crit_edge, label %for.cond61.preheader

devm_kcalloc.exit.cleanup244_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

for.cond61.preheader:                             ; preds = %devm_kcalloc.exit
  %44 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp63449.not = icmp eq i32 %45, 0
  br i1 %cmp63449.not, label %for.cond61.preheader.for.end73_crit_edge, label %for.cond61.preheader.for.body64_crit_edge

for.cond61.preheader.for.body64_crit_edge:        ; preds = %for.cond61.preheader
  br label %for.body64

for.cond61.preheader.for.end73_crit_edge:         ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end73

for.body64:                                       ; preds = %if.end68.for.body64_crit_edge, %for.cond61.preheader.for.body64_crit_edge
  %i.1450 = phi i32 [ %inc72, %if.end68.for.body64_crit_edge ], [ 0, %for.cond61.preheader.for.body64_crit_edge ]
  %call65 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.1450) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %for.body64.cleanup244_crit_edge, label %if.end68

for.body64.cleanup244_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

if.end68:                                         ; preds = %for.body64
  %46 = ptrtoint ptr %irq56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %irq56, align 4
  %arrayidx70 = getelementptr i32, ptr %47, i32 %i.1450
  %48 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call65, ptr %arrayidx70, align 4
  %inc72 = add nuw i32 %i.1450, 1
  %49 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_irq, align 4
  %cmp63 = icmp ult i32 %inc72, %50
  br i1 %cmp63, label %if.end68.for.body64_crit_edge, label %if.end68.for.end73_crit_edge

if.end68.for.end73_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end73

if.end68.for.body64_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body64

for.end73:                                        ; preds = %if.end68.for.end73_crit_edge, %for.cond61.preheader.for.end73_crit_edge
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %51 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %52 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %53 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @tegra186_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %54 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @tegra186_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %55 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @tegra186_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %56 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @tegra186_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %57 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @tegra186_gpio_set, ptr %set, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  %58 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @tegra186_gpio_set_config, ptr %set_config, align 4
  %add_pin_ranges = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 18
  %59 = ptrtoint ptr %add_pin_ranges to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @tegra186_gpio_add_pin_ranges, ptr %add_pin_ranges, align 4
  %base84 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %60 = ptrtoint ptr %base84 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %base84, align 4
  %61 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %soc, align 4
  %num_ports87451 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %num_ports87451 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_ports87451, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp88452.not = icmp eq i32 %64, 0
  br i1 %cmp88452.not, label %for.end73.for.end97_crit_edge, label %for.body89.lr.ph

for.end73.for.end97_crit_edge:                    ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end97

for.body89.lr.ph:                                 ; preds = %for.end73
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  br label %for.body89

for.body89:                                       ; preds = %for.body89.for.body89_crit_edge, %for.body89.lr.ph
  %65 = phi ptr [ %62, %for.body89.lr.ph ], [ %74, %for.body89.for.body89_crit_edge ]
  %i.2453 = phi i32 [ 0, %for.body89.lr.ph ], [ %inc96, %for.body89.for.body89_crit_edge ]
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %pins = getelementptr %struct.tegra_gpio_port, ptr %67, i32 %i.2453, i32 3
  %68 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pins, align 4
  %70 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ngpio, align 4
  %72 = trunc i32 %69 to i16
  %conv94 = add i16 %71, %72
  store i16 %conv94, ptr %ngpio, align 4
  %inc96 = add nuw i32 %i.2453, 1
  %73 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %soc, align 4
  %num_ports87 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %num_ports87 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_ports87, align 4
  %cmp88 = icmp ult i32 %inc96, %76
  br i1 %cmp88, label %for.body89.for.body89_crit_edge, label %for.body89.for.end97_crit_edge

for.body89.for.end97_crit_edge:                   ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end97

for.body89.for.body89_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body89

for.end97:                                        ; preds = %for.body89.for.end97_crit_edge, %for.end73.for.end97_crit_edge
  %ngpio101 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %77 = ptrtoint ptr %ngpio101 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ngpio101, align 4
  %conv102 = zext i16 %78 to i32
  %79 = shl nuw nsw i32 %conv102, 2
  %80 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent, align 4
  %call5.i.i413 = tail call noalias ptr @devm_kmalloc(ptr noundef %81, i32 noundef %79, i32 noundef 3520) #8
  %tobool104.not = icmp eq ptr %call5.i.i413, null
  br i1 %tobool104.not, label %for.end97.cleanup244_crit_edge, label %for.cond107.preheader

for.end97.cleanup244_crit_edge:                   ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

for.cond107.preheader:                            ; preds = %for.end97
  %82 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %soc, align 4
  %num_ports109456 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %num_ports109456 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_ports109456, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp110457.not = icmp eq i32 %85, 0
  br i1 %cmp110457.not, label %for.cond107.preheader.for.end139_crit_edge, label %for.cond107.preheader.for.body112_crit_edge

for.cond107.preheader.for.body112_crit_edge:      ; preds = %for.cond107.preheader
  br label %for.body112

for.cond107.preheader.for.end139_crit_edge:       ; preds = %for.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end139

for.body112:                                      ; preds = %for.inc137.for.body112_crit_edge, %for.cond107.preheader.for.body112_crit_edge
  %86 = phi ptr [ %99, %for.inc137.for.body112_crit_edge ], [ %83, %for.cond107.preheader.for.body112_crit_edge ]
  %offset.0459 = phi i32 [ %add135, %for.inc137.for.body112_crit_edge ], [ 0, %for.cond107.preheader.for.body112_crit_edge ]
  %i.3458 = phi i32 [ %inc138, %for.inc137.for.body112_crit_edge ], [ 0, %for.cond107.preheader.for.body112_crit_edge ]
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %arrayidx115 = getelementptr %struct.tegra_gpio_port, ptr %88, i32 %i.3458
  %pins118 = getelementptr %struct.tegra_gpio_port, ptr %88, i32 %i.3458, i32 3
  %89 = ptrtoint ptr %pins118 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pins118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp119454.not = icmp eq i32 %90, 0
  br i1 %cmp119454.not, label %for.body112.for.inc137_crit_edge, label %for.body112.for.body121_crit_edge

for.body112.for.body121_crit_edge:                ; preds = %for.body112
  br label %for.body121

for.body112.for.inc137_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc137

for.body121:                                      ; preds = %if.end128.for.body121_crit_edge, %for.body112.for.body121_crit_edge
  %j.0455 = phi i32 [ %inc132, %if.end128.for.body121_crit_edge ], [ 0, %for.body112.for.body121_crit_edge ]
  %91 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent, align 4
  %93 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx115, align 4
  %call125 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %92, i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %94, i32 noundef %j.0455) #8
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %for.body121.cleanup244_crit_edge, label %if.end128

for.body121.cleanup244_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

if.end128:                                        ; preds = %for.body121
  %add129 = add i32 %j.0455, %offset.0459
  %arrayidx130 = getelementptr ptr, ptr %call5.i.i413, i32 %add129
  %95 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call125, ptr %arrayidx130, align 4
  %inc132 = add nuw i32 %j.0455, 1
  %96 = ptrtoint ptr %pins118 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pins118, align 4
  %cmp119 = icmp ult i32 %inc132, %97
  br i1 %cmp119, label %if.end128.for.body121_crit_edge, label %if.end128.for.inc137_crit_edge

if.end128.for.inc137_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc137

if.end128.for.body121_crit_edge:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body121

for.inc137:                                       ; preds = %if.end128.for.inc137_crit_edge, %for.body112.for.inc137_crit_edge
  %.lcssa444 = phi i32 [ 0, %for.body112.for.inc137_crit_edge ], [ %97, %if.end128.for.inc137_crit_edge ]
  %add135 = add i32 %.lcssa444, %offset.0459
  %inc138 = add nuw i32 %i.3458, 1
  %98 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %soc, align 4
  %num_ports109 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %num_ports109 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_ports109, align 4
  %cmp110 = icmp ult i32 %inc138, %101
  br i1 %cmp110, label %for.inc137.for.body112_crit_edge, label %for.inc137.for.end139_crit_edge

for.inc137.for.end139_crit_edge:                  ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end139

for.inc137.for.body112_crit_edge:                 ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body112

for.end139:                                       ; preds = %for.inc137.for.end139_crit_edge, %for.cond107.preheader.for.end139_crit_edge
  %names141 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 22
  %102 = ptrtoint ptr %names141 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call5.i.i413, ptr %names141, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 40
  %103 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %of_xlate = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 41
  %104 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @tegra186_gpio_of_xlate, ptr %of_xlate, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %105 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %106, null
  br i1 %tobool.not.i, label %if.end.i, label %for.end139.dev_name.exit_crit_edge

for.end139.dev_name.exit_crit_edge:               ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.end139.dev_name.exit_crit_edge
  %retval.0.i417 = phi ptr [ %108, %if.end.i ], [ %106, %for.end139.dev_name.exit_crit_edge ]
  %intc = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 1
  %name146 = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %name146 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %retval.0.i417, ptr %name146, align 4
  %irq_ack = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 1, i32 6
  %110 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @tegra186_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 1, i32 7
  %111 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @tegra186_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 1, i32 9
  %112 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @tegra186_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 1, i32 13
  %113 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @tegra186_irq_set_type, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.tegra_gpio, ptr %call.i, i32 0, i32 1, i32 14
  %114 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @tegra186_irq_set_wake, ptr %irq_set_wake, align 4
  %irq153 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %115 = ptrtoint ptr %irq153 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %intc, ptr %irq153, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %116 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %of_node, align 8
  %tobool.not.i418 = icmp eq ptr %117, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %117, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i418, ptr null, ptr %fwnode.i
  %fwnode = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 3
  %118 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %spec.select.i, ptr %fwnode, align 4
  %child_to_parent_hwirq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 5
  %119 = ptrtoint ptr %child_to_parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @tegra186_gpio_child_to_parent_hwirq, ptr %child_to_parent_hwirq, align 4
  %populate_parent_alloc_arg = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 6
  %120 = ptrtoint ptr %populate_parent_alloc_arg to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @tegra186_gpio_populate_parent_fwspec, ptr %populate_parent_alloc_arg, align 4
  %child_offset_to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 7
  %121 = ptrtoint ptr %child_offset_to_irq to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @tegra186_gpio_child_offset_to_irq, ptr %child_offset_to_irq, align 4
  %translate = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 8, i32 9
  %122 = ptrtoint ptr %translate to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @tegra186_gpio_irq_domain_translate, ptr %translate, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %123 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @handle_simple_irq, ptr %handler, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %124 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %default_type, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %125 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @tegra186_gpio_irq, ptr %parent_handler, align 4
  %126 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 14
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i, ptr %126, align 4
  %128 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_irq, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %130 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %num_parents, align 4
  %131 = ptrtoint ptr %num_irqs_per_bank.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_irqs_per_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp158 = icmp ugt i32 %132, 1
  br i1 %cmp158, label %if.then160, label %if.else

if.then160:                                       ; preds = %dev_name.exit
  %133 = ptrtoint ptr %num_banks17 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_banks17, align 4
  %135 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %134, i32 4) #8
  %136 = extractvalue { i32, i1 } %135, 1
  br i1 %136, label %devm_kcalloc.exit422.thread, label %devm_kcalloc.exit422, !prof !197

devm_kcalloc.exit422.thread:                      ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #10
  %parents437 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %137 = ptrtoint ptr %parents437 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %parents437, align 4
  br label %cleanup244

devm_kcalloc.exit422:                             ; preds = %if.then160
  %138 = extractvalue { i32, i1 } %135, 0
  %call5.i.i419 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %138, i32 noundef 3520) #8
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %139 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call5.i.i419, ptr %parents, align 4
  %tobool165.not = icmp eq ptr %call5.i.i419, null
  br i1 %tobool165.not, label %devm_kcalloc.exit422.cleanup244_crit_edge, label %for.cond168.preheader

devm_kcalloc.exit422.cleanup244_crit_edge:        ; preds = %devm_kcalloc.exit422
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

for.cond168.preheader:                            ; preds = %devm_kcalloc.exit422
  %140 = ptrtoint ptr %num_banks17 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_banks17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp170460.not = icmp eq i32 %141, 0
  br i1 %cmp170460.not, label %for.cond168.preheader.for.end180_crit_edge, label %for.cond168.preheader.for.body172_crit_edge

for.cond168.preheader.for.body172_crit_edge:      ; preds = %for.cond168.preheader
  br label %for.body172

for.cond168.preheader.for.end180_crit_edge:       ; preds = %for.cond168.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end180

for.body172:                                      ; preds = %for.body172.for.body172_crit_edge, %for.cond168.preheader.for.body172_crit_edge
  %i.4461 = phi i32 [ %inc179, %for.body172.for.body172_crit_edge ], [ 0, %for.cond168.preheader.for.body172_crit_edge ]
  %142 = ptrtoint ptr %irq56 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %irq56, align 4
  %144 = ptrtoint ptr %num_irqs_per_bank.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %num_irqs_per_bank.i, align 4
  %mul = mul i32 %145, %i.4461
  %arrayidx175 = getelementptr i32, ptr %143, i32 %mul
  %146 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx175, align 4
  %148 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %parents, align 4
  %arrayidx177 = getelementptr i32, ptr %149, i32 %i.4461
  %150 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %147, ptr %arrayidx177, align 4
  %inc179 = add nuw i32 %i.4461, 1
  %151 = ptrtoint ptr %num_banks17 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %num_banks17, align 4
  %cmp170 = icmp ult i32 %inc179, %152
  br i1 %cmp170, label %for.body172.for.body172_crit_edge, label %for.body172.for.end180_crit_edge

for.body172.for.end180_crit_edge:                 ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end180

for.body172.for.body172_crit_edge:                ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body172

for.end180:                                       ; preds = %for.body172.for.end180_crit_edge, %for.cond168.preheader.for.end180_crit_edge
  %.lcssa443 = phi i32 [ 0, %for.cond168.preheader.for.end180_crit_edge ], [ %152, %for.body172.for.end180_crit_edge ]
  %153 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %.lcssa443, ptr %num_parents, align 4
  br label %if.end187

if.else:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %irq56 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %irq56, align 4
  %parents186 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %156 = ptrtoint ptr %parents186 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %parents186, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.else, %for.end180
  %157 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %soc, align 4
  %num_irqs_per_bank189 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %num_irqs_per_bank189 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_irqs_per_bank189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp190 = icmp ugt i32 %160, 1
  br i1 %cmp190, label %if.then192, label %if.end187.if.end193_crit_edge

if.end187.if.end193_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then192:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tegra186_gpio_init_route_mapping(ptr noundef %call.i)
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.end187.if.end193_crit_edge
  %call.i423 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra186_pmc_of_match, ptr noundef null) #8
  %tobool195.not = icmp eq ptr %call.i423, null
  br i1 %tobool195.not, label %if.end193.devm_kcalloc.exit427_crit_edge, label %if.then196

if.end193.devm_kcalloc.exit427_crit_edge:         ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit427

if.then196:                                       ; preds = %if.end193
  %call197 = tail call fastcc ptr @irq_find_host(ptr noundef nonnull %call.i423)
  %parent_domain = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 4
  %161 = ptrtoint ptr %parent_domain to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call197, ptr %parent_domain, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i423) #8
  %162 = ptrtoint ptr %parent_domain to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %parent_domain, align 4
  %tobool199.not = icmp eq ptr %163, null
  br i1 %tobool199.not, label %if.then196.cleanup244_crit_edge, label %if.then196.devm_kcalloc.exit427_crit_edge

if.then196.devm_kcalloc.exit427_crit_edge:        ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit427

if.then196.cleanup244_crit_edge:                  ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

devm_kcalloc.exit427:                             ; preds = %if.then196.devm_kcalloc.exit427_crit_edge, %if.end193.devm_kcalloc.exit427_crit_edge
  %164 = ptrtoint ptr %ngpio101 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %ngpio101, align 4
  %conv206 = zext i16 %165 to i32
  %166 = shl nuw nsw i32 %conv206, 2
  %call5.i.i424 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %166, i32 noundef 3520) #8
  %map = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 17
  %167 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call5.i.i424, ptr %map, align 4
  %tobool209.not = icmp eq ptr %call5.i.i424, null
  br i1 %tobool209.not, label %devm_kcalloc.exit427.cleanup244_crit_edge, label %for.cond212.preheader

devm_kcalloc.exit427.cleanup244_crit_edge:        ; preds = %devm_kcalloc.exit427
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

for.cond212.preheader:                            ; preds = %devm_kcalloc.exit427
  %168 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %soc, align 4
  %num_ports214466 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %num_ports214466 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_ports214466, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp215467.not = icmp eq i32 %171, 0
  br i1 %cmp215467.not, label %for.cond212.preheader.for.end240_crit_edge, label %for.body217.lr.ph

for.cond212.preheader.for.end240_crit_edge:       ; preds = %for.cond212.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end240

for.body217.lr.ph:                                ; preds = %for.cond212.preheader
  %parents227 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  br label %for.body217

for.body217:                                      ; preds = %for.end235.for.body217_crit_edge, %for.body217.lr.ph
  %172 = phi ptr [ %169, %for.body217.lr.ph ], [ %189, %for.end235.for.body217_crit_edge ]
  %offset.2470 = phi i32 [ 0, %for.body217.lr.ph ], [ %add237, %for.end235.for.body217_crit_edge ]
  %i.5468 = phi i32 [ 0, %for.body217.lr.ph ], [ %inc239, %for.end235.for.body217_crit_edge ]
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %pins223 = getelementptr %struct.tegra_gpio_port, ptr %174, i32 %i.5468, i32 3
  %175 = ptrtoint ptr %pins223 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %pins223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp224463.not = icmp eq i32 %176, 0
  br i1 %cmp224463.not, label %for.body217.for.end235_crit_edge, label %for.body226.lr.ph

for.body217.for.end235_crit_edge:                 ; preds = %for.body217
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end235

for.body226.lr.ph:                                ; preds = %for.body217
  %bank228 = getelementptr %struct.tegra_gpio_port, ptr %174, i32 %i.5468, i32 1
  br label %for.body226

for.body226:                                      ; preds = %for.body226.for.body226_crit_edge, %for.body226.lr.ph
  %j.1464 = phi i32 [ 0, %for.body226.lr.ph ], [ %inc234, %for.body226.for.body226_crit_edge ]
  %177 = ptrtoint ptr %parents227 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %parents227, align 4
  %179 = ptrtoint ptr %bank228 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %bank228, align 4
  %arrayidx229 = getelementptr i32, ptr %178, i32 %180
  %181 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx229, align 4
  %183 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %map, align 4
  %add231 = add i32 %j.1464, %offset.2470
  %arrayidx232 = getelementptr i32, ptr %184, i32 %add231
  %185 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %182, ptr %arrayidx232, align 4
  %inc234 = add nuw i32 %j.1464, 1
  %186 = ptrtoint ptr %pins223 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %pins223, align 4
  %cmp224 = icmp ult i32 %inc234, %187
  br i1 %cmp224, label %for.body226.for.body226_crit_edge, label %for.body226.for.end235_crit_edge

for.body226.for.end235_crit_edge:                 ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end235

for.body226.for.body226_crit_edge:                ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body226

for.end235:                                       ; preds = %for.body226.for.end235_crit_edge, %for.body217.for.end235_crit_edge
  %.lcssa = phi i32 [ 0, %for.body217.for.end235_crit_edge ], [ %187, %for.body226.for.end235_crit_edge ]
  %add237 = add i32 %.lcssa, %offset.2470
  %inc239 = add nuw i32 %i.5468, 1
  %188 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %soc, align 4
  %num_ports214 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %num_ports214 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %num_ports214, align 4
  %cmp215 = icmp ult i32 %inc239, %191
  br i1 %cmp215, label %for.end235.for.body217_crit_edge, label %for.end235.for.end240_crit_edge

for.end235.for.end240_crit_edge:                  ; preds = %for.end235
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end240

for.end235.for.body217_crit_edge:                 ; preds = %for.end235
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body217

for.end240:                                       ; preds = %for.end235.for.end240_crit_edge, %for.cond212.preheader.for.end240_crit_edge
  %call243 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @tegra186_gpio_probe.lock_key, ptr noundef nonnull @tegra186_gpio_probe.request_key) #8
  br label %cleanup244

cleanup244:                                       ; preds = %for.end240, %devm_kcalloc.exit427.cleanup244_crit_edge, %if.then196.cleanup244_crit_edge, %devm_kcalloc.exit422.cleanup244_crit_edge, %devm_kcalloc.exit422.thread, %for.body121.cleanup244_crit_edge, %for.end97.cleanup244_crit_edge, %for.body64.cleanup244_crit_edge, %devm_kcalloc.exit.cleanup244_crit_edge, %devm_kcalloc.exit.thread, %tegra186_gpio_irqs_per_bank.exit.thread, %if.end44.cleanup244_crit_edge, %if.then40, %if.then27, %entry.cleanup244_crit_edge
  %retval.2 = phi i32 [ %23, %if.then27 ], [ %26, %if.then40 ], [ %call243, %for.end240 ], [ -12, %entry.cleanup244_crit_edge ], [ %call45, %if.end44.cleanup244_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup244_crit_edge ], [ -12, %for.end97.cleanup244_crit_edge ], [ -12, %devm_kcalloc.exit422.cleanup244_crit_edge ], [ -517, %if.then196.cleanup244_crit_edge ], [ -12, %devm_kcalloc.exit427.cleanup244_crit_edge ], [ -22, %tegra186_gpio_irqs_per_bank.exit.thread ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit422.thread ], [ -12, %for.body121.cleanup244_crit_edge ], [ %call65, %for.body64.cleanup244_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i.i, i32 %offset)
  %cmp2.not.i.i = icmp ugt i32 %start.026.i.i, %offset
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %6 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %7, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %offset)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %offset
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %8 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %9, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.do.end_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.do.end_crit_edge:   ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %offset, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 1
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %11, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 2
  %12 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %13, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.do.end_crit_edge, label %if.end22, !prof !197

tegra186_gpio_get_base.exit.do.end_crit_edge:     ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra186_gpio_get_base.exit.do.end_crit_edge, %tegra186_gpio_get_port.exit.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 137, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr4.i) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  %17 = lshr i32 %16, 25
  %.lobit = and i32 %17, 1
  %18 = xor i32 %.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %18, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i.i, i32 %offset)
  %cmp2.not.i.i = icmp ugt i32 %start.026.i.i, %offset
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %6 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %7, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %offset)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %offset
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %8 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %9, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.do.end_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.do.end_crit_edge:   ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %offset, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 1
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %11, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 2
  %12 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %13, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.do.end_crit_edge, label %if.end22, !prof !197

tegra186_gpio_get_base.exit.do.end_crit_edge:     ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra186_gpio_get_base.exit.do.end_crit_edge, %tegra186_gpio_get_port.exit.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 155, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %add.ptr4.i, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  %17 = or i32 %16, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #8, !srcloc !202
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr4.i) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %19 = and i32 %18, -50331649
  %20 = or i32 %19, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr4.i, i32 %20) #8, !srcloc !202
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %set = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set, align 4
  tail call void %1(ptr noundef %chip, i32 noundef %offset, i32 noundef %level) #8
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp25.not.i.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i.i, i32 %offset)
  %cmp2.not.i.i = icmp ugt i32 %start.026.i.i, %offset
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %7, i32 %i.028.i.i, i32 3
  %8 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %9, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %offset)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %offset
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %7, i32 %i.028.i.i, i32 3
  %10 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %11, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %7, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.do.end_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.do.end_crit_edge:   ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %offset, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %7, i32 %i.028.i.i, i32 1
  %12 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %13, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %7, i32 %i.028.i.i, i32 2
  %14 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %15, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.do.end_crit_edge, label %if.end22, !prof !197

tegra186_gpio_get_base.exit.do.end_crit_edge:     ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra186_gpio_get_base.exit.do.end_crit_edge, %tegra186_gpio_get_port.exit.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 181, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %add.ptr4.i, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #8, !srcloc !202
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr4.i) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  %21 = or i32 %20, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr4.i, i32 %21) #8, !srcloc !202
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i.i, i32 %offset)
  %cmp2.not.i.i = icmp ugt i32 %start.026.i.i, %offset
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %6 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %7, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %offset)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %offset
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %8 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %9, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.do.end_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.do.end_crit_edge:   ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %offset, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 1
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %11, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 2
  %12 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %13, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.do.end_crit_edge, label %if.end22, !prof !197

tegra186_gpio_get_base.exit.do.end_crit_edge:     ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra186_gpio_get_base.exit.do.end_crit_edge, %tegra186_gpio_get_port.exit.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 204, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %tegra186_gpio_get_base.exit
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr4.i) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  %17 = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr30 = getelementptr i8, ptr %add.ptr4.i, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !198
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  br label %if.end40

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr36 = getelementptr i8, ptr %add.ptr4.i, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #8, !srcloc !198
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then27
  %value.0 = phi i32 [ %19, %if.then27 ], [ %21, %if.else ]
  %and41 = and i32 %value.0, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %and41, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra186_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i.i, i32 %offset)
  %cmp2.not.i.i = icmp ugt i32 %start.026.i.i, %offset
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %6 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %7, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %offset)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %offset
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %8 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %9, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.do.end_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.do.end_crit_edge:   ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %offset, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 1
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %11, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 2
  %12 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %13, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.do.end_crit_edge, label %if.end22, !prof !197

tegra186_gpio_get_base.exit.do.end_crit_edge:     ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra186_gpio_get_base.exit.do.end_crit_edge, %tegra186_gpio_get_port.exit.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 224, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %add.ptr4.i, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp26 = icmp ne i32 %level, 0
  %17 = and i32 %16, -16777217
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %masksel = zext i1 %cmp26 to i32
  %value.0 = or i32 %18, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #8, !srcloc !202
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i.i, i32 %offset)
  %cmp2.not.i.i = icmp ugt i32 %start.026.i.i, %offset
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %6 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %7, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %offset)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %offset
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 3
  %8 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %9, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.cleanup_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.cleanup_crit_edge:  ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %offset, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 1
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %11, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.028.i.i, i32 2
  %12 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %13, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.cleanup_crit_edge, label %if.end

tegra186_gpio_get_base.exit.cleanup_crit_edge:    ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %tegra186_gpio_get_base.exit
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp3.not = icmp eq i32 %and.i, 11
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280255, i32 %config)
  %cmp7 = icmp ugt i32 %config, 65280255
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %config, 8
  %sub = add nuw nsw i32 %shr.i, 999
  %div = udiv i32 %sub, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %and = shl nuw i32 %div, 24
  %add.ptr = getelementptr i8, ptr %add.ptr4.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and) #8, !srcloc !202
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr4.i) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  %17 = or i32 %16, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr4.i, i32 %17) #8, !srcloc !202
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tegra186_gpio_get_base.exit.cleanup_crit_edge, %tegra186_gpio_get_port.exit.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -6, %tegra186_gpio_get_base.exit.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -6, %tegra186_gpio_get_port.exit.i.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_add_pin_ranges(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %pinmux = getelementptr inbounds %struct.tegra_gpio_soc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pinmux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinmux, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup38_crit_edge, label %lor.lhs.false

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

lor.lhs.false:                                    ; preds = %entry
  %num_pin_ranges = getelementptr inbounds %struct.tegra_gpio_soc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %num_pin_ranges to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pin_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %lor.lhs.false.cleanup38_crit_edge, label %if.end

lor.lhs.false.cleanup38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup38_crit_edge, label %if.end7

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @of_pinctrl_get(ptr noundef nonnull %call4) #8
  tail call void @of_node_put(ptr noundef nonnull %call4) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup38_crit_edge, label %for.cond.preheader

if.end7.cleanup38_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

for.cond.preheader:                               ; preds = %if.end7
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %num_pin_ranges1375 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %num_pin_ranges1375 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pin_ranges1375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1476.not = icmp eq i32 %9, 0
  br i1 %cmp1476.not, label %for.cond.preheader.cleanup38_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup38_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %for.body.lr.ph
  %10 = phi ptr [ %7, %for.body.lr.ph ], [ %26, %for.inc35.for.body_crit_edge ]
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %for.inc35.for.body_crit_edge ]
  %pin_ranges = getelementptr inbounds %struct.tegra_gpio_soc, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %pin_ranges to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pin_ranges, align 4
  %arrayidx = getelementptr %struct.tegra186_pin_range, ptr %12, i32 %i.077
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %group19 = getelementptr %struct.tegra186_pin_range, ptr %12, i32 %i.077, i32 1
  %15 = ptrtoint ptr %group19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %group19, align 4
  %div68 = lshr i32 %14, 3
  %num_ports = getelementptr inbounds %struct.tegra_gpio_soc, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div68, i32 %18)
  %cmp21.not = icmp ult i32 %div68, %18
  br i1 %cmp21.not, label %if.end23, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef %div68, ptr noundef %16) #11
  br label %for.inc35

if.end23:                                         ; preds = %for.body
  %rem = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp2572.not = icmp ult i32 %14, 8
  br i1 %cmp2572.not, label %if.end23.for.end_crit_edge, label %for.body26.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body26.lr.ph:                                 ; preds = %if.end23
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %10, align 4
  %umax = call i32 @llvm.umax.i32(i32 %div68, i32 1)
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body26.lr.ph
  %pin.074 = phi i32 [ %rem, %for.body26.lr.ph ], [ %add, %for.body26.for.body26_crit_edge ]
  %j.073 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc, %for.body26.for.body26_crit_edge ]
  %pins = getelementptr %struct.tegra_gpio_port, ptr %22, i32 %j.073, i32 3
  %23 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pins, align 4
  %add = add i32 %24, %pin.074
  %inc = add nuw nsw i32 %j.073, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body26.for.end_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

for.body26.for.end_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body26.for.end_crit_edge, %if.end23.for.end_crit_edge
  %pin.0.lcssa = phi i32 [ %rem, %if.end23.for.end_crit_edge ], [ %add, %for.body26.for.end_crit_edge ]
  %call29 = tail call i32 @gpiochip_add_pingroup_range(ptr noundef %chip, ptr noundef nonnull %call8, i32 noundef %pin.0.lcssa, ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %for.end.cleanup38_crit_edge, label %for.end.for.inc35_crit_edge

for.end.for.inc35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

for.end.cleanup38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

for.inc35:                                        ; preds = %for.end.for.inc35_crit_edge, %do.end
  %inc36 = add nuw i32 %i.077, 1
  %25 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc, align 4
  %num_pin_ranges13 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %num_pin_ranges13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_pin_ranges13, align 4
  %cmp14 = icmp ult i32 %inc36, %28
  br i1 %cmp14, label %for.inc35.for.body_crit_edge, label %for.inc35.cleanup38_crit_edge

for.inc35.cleanup38_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup38:                                        ; preds = %for.inc35.cleanup38_crit_edge, %for.end.cleanup38_crit_edge, %for.cond.preheader.cleanup38_crit_edge, %if.end7.cleanup38_crit_edge, %if.end.cleanup38_crit_edge, %lor.lhs.false.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.2 = phi i32 [ 0, %lor.lhs.false.cleanup38_crit_edge ], [ 0, %entry.cleanup38_crit_edge ], [ -19, %if.end.cleanup38_crit_edge ], [ -517, %if.end7.cleanup38_crit_edge ], [ 0, %for.cond.preheader.cleanup38_crit_edge ], [ 0, %for.inc35.cleanup38_crit_edge ], [ %call29, %for.end.cleanup38_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_of_xlate(ptr noundef %chip, ptr nocapture noundef readonly %spec, ptr noundef writeonly %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 40
  %0 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %do.end, label %if.end21, !prof !197

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 323, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end21:                                         ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp24 = icmp ult i32 %3, %1
  br i1 %cmp24, label %do.end40, label %if.end56, !prof !197

do.end40:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 326, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end21
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %div93 = lshr i32 %5, 3
  %rem = and i32 %5, 7
  %soc = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %num_ports = getelementptr inbounds %struct.tegra_gpio_soc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div93, i32 %9)
  %cmp59.not = icmp ult i32 %div93, %9
  br i1 %cmp59.not, label %for.cond.preheader, label %do.end63

for.cond.preheader:                               ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp6594.not = icmp ult i32 %5, 8
  br i1 %cmp6594.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %umax = call i32 @llvm.umax.i32(i32 %div93, i32 1)
  br label %for.body

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %div93) #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %offset.096 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %pins = getelementptr %struct.tegra_gpio_port, ptr %11, i32 %i.095, i32 3
  %14 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pins, align 4
  %add = add i32 %15, %offset.096
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %tobool68.not = icmp eq ptr %flags, null
  br i1 %tobool68.not, label %for.end.if.end72_crit_edge, label %if.then69

for.end.if.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then69:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx71 = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx71, align 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %flags, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %for.end.if.end72_crit_edge
  %add73 = add i32 %offset.0.lcssa, %rem
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end63, %do.end40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end40 ], [ -22, %do.end63 ], [ %add73, %if.end72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra186_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp25.not.i.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start.026.i.i)
  %cmp2.not.i.i = icmp ult i32 %3, %start.026.i.i
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 3
  %10 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %11, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %3)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %3
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 3
  %12 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %13, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.do.end_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.do.end_crit_edge:   ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %3, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 1
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %15, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 2
  %16 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %17, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.do.end_crit_edge, label %do.body24, !prof !197

tegra186_gpio_get_base.exit.do.end_crit_edge:     ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra186_gpio_get_base.exit.do.end_crit_edge, %tegra186_gpio_get_port.exit.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 355, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body24:                                        ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @arm_heavy_mb() #8
  %add.ptr27 = getelementptr i8, ptr %add.ptr4.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 16777216) #8, !srcloc !202
  br label %cleanup

cleanup:                                          ; preds = %do.body24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra186_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp25.not.i.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start.026.i.i)
  %cmp2.not.i.i = icmp ult i32 %3, %start.026.i.i
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 3
  %10 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %11, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %3)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %3
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 3
  %12 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %13, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.do.end_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.do.end_crit_edge:   ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %3, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 1
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %15, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 2
  %16 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %17, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.do.end_crit_edge, label %if.end23, !prof !197

tegra186_gpio_get_base.exit.do.end_crit_edge:     ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra186_gpio_get_base.exit.do.end_crit_edge, %tegra186_gpio_get_port.exit.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 369, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr4.i) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  %21 = and i32 %20, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr4.i, i32 %21) #8, !srcloc !202
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra186_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp25.not.i.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start.026.i.i)
  %cmp2.not.i.i = icmp ult i32 %3, %start.026.i.i
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 3
  %10 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %11, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %3)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %3
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 3
  %12 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %13, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.do.end_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.do.end_crit_edge:   ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %3, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 1
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %15, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 2
  %16 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %17, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.do.end_crit_edge, label %if.end23, !prof !197

tegra186_gpio_get_base.exit.do.end_crit_edge:     ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra186_gpio_get_base.exit.do.end_crit_edge, %tegra186_gpio_get_port.exit.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 385, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr4.i) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  %21 = or i32 %20, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr4.i, i32 %21) #8, !srcloc !202
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_irq_set_type(ptr noundef %data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %soc.i.i = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.tegra_gpio_soc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp25.not.i.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %start.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start.026.i.i)
  %cmp2.not.i.i = icmp ult i32 %3, %start.026.i.i
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pins.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 3
  %10 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pins.i.i, align 4
  %add.i.i = add i32 %11, %start.026.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %3)
  %cmp3.i.i = icmp ugt i32 %add.i.i, %3
  br i1 %cmp3.i.i, label %tegra186_gpio_get_port.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pins4.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 3
  %12 = ptrtoint ptr %pins4.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pins4.i.i, align 4
  %add5.i.i = add i32 %13, %start.026.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_port.exit.i:                    ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %tegra186_gpio_get_port.exit.i.do.end_crit_edge, label %tegra186_gpio_get_base.exit

tegra186_gpio_get_port.exit.i.do.end_crit_edge:   ; preds = %tegra186_gpio_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra186_gpio_get_base.exit:                      ; preds = %tegra186_gpio_get_port.exit.i
  %sub.i.i = sub i32 %3, %start.026.i.i
  %bank.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 1
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %15, 12
  %port1.i = getelementptr %struct.tegra_gpio_port, ptr %9, i32 %i.028.i.i, i32 2
  %16 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port1.i, align 4
  %mul2.i = shl i32 %17, 9
  %add.i = add i32 %mul2.i, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add.i
  %mul3.i = shl i32 %sub.i.i, 5
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %cmp = icmp eq ptr %add.ptr4.i, null
  br i1 %cmp, label %tegra186_gpio_get_base.exit.do.end_crit_edge, label %if.end23, !prof !197

tegra186_gpio_get_base.exit.do.end_crit_edge:     ; preds = %tegra186_gpio_get_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra186_gpio_get_base.exit.do.end_crit_edge, %tegra186_gpio_get_port.exit.i.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 401, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %tegra186_gpio_get_base.exit
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr4.i) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  %21 = and i32 %20, -469762049
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %and29 = and i32 %type, 15
  %23 = zext i32 %and29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and29, label %if.end23.cleanup_crit_edge [
    i32 0, label %if.end23.do.body40_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb31
    i32 3, label %sw.bb33
    i32 4, label %sw.bb35
    i32 8, label %sw.bb38
  ]

if.end23.do.body40_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %or30 = or i32 %22, 24
  br label %do.body40

sw.bb31:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %or32 = or i32 %22, 8
  br label %do.body40

sw.bb33:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %or34 = or i32 %22, 12
  br label %do.body40

sw.bb35:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %or37 = or i32 %22, 20
  br label %do.body40

sw.bb38:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %or39 = or i32 %22, 4
  br label %do.body40

do.body40:                                        ; preds = %sw.bb38, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb, %if.end23.do.body40_crit_edge
  %value.0 = phi i32 [ %or39, %sw.bb38 ], [ %or37, %sw.bb35 ], [ %or34, %sw.bb33 ], [ %or32, %sw.bb31 ], [ %or30, %sw.bb ], [ %22, %if.end23.do.body40_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr4.i, i32 %24) #8, !srcloc !202
  %and44 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45 = icmp eq i32 %and44, 0
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %25 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %26, i32 0, i32 3
  %handle_level_irq.handle_edge_irq = select i1 %cmp45, ptr @handle_level_irq, ptr @handle_edge_irq
  %27 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %handle_level_irq.handle_edge_irq, ptr %handle_irq.i, align 4
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 6
  %28 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent_data, align 4
  %tobool48.not = icmp eq ptr %29, null
  br i1 %tobool48.not, label %do.body40.cleanup_crit_edge, label %if.then49

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then49:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call i32 @irq_chip_set_type_parent(ptr noundef %data, i32 noundef %type) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body40.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call50, %if.then49 ], [ -22, %if.end23.cleanup_crit_edge ], [ 0, %do.body40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_irq_set_wake(ptr noundef %data, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @irq_chip_set_wake_parent(ptr noundef %data, i32 noundef %on) #8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_child_to_parent_hwirq(ptr noundef %chip, i32 noundef %hwirq, i32 noundef %type, ptr nocapture noundef writeonly %parent_hwirq, ptr nocapture noundef writeonly %parent_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %child_offset_to_irq = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 37, i32 7
  %0 = ptrtoint ptr %child_offset_to_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child_offset_to_irq, align 4
  %call = tail call i32 %1(ptr noundef %chip, i32 noundef %hwirq) #8
  %2 = ptrtoint ptr %parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %parent_hwirq, align 4
  %3 = ptrtoint ptr %parent_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %parent_type, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @tegra186_gpio_populate_parent_fwspec(ptr noundef %chip, i32 noundef %parent_hwirq, i32 noundef %parent_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 72) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent_domain = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 37, i32 4
  %1 = ptrtoint ptr %parent_domain to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent_domain, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwnode, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i, align 8
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %param_count, align 4
  %soc = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soc, align 4
  %instance = getelementptr inbounds %struct.tegra_gpio_soc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %instance, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %call7.i, i32 0, i32 2
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %param, align 8
  %arrayidx4 = getelementptr %struct.irq_fwspec, ptr %call7.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %parent_hwirq, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.irq_fwspec, ptr %call7.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %parent_type, ptr %arrayidx6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_child_offset_to_irq(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %num_ports = getelementptr inbounds %struct.tegra_gpio_soc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %offset.addr.016 = phi i32 [ %offset, %for.body.lr.ph ], [ %sub, %if.end.for.body_crit_edge ]
  %pins = getelementptr %struct.tegra_gpio_port, ptr %5, i32 %i.017, i32 3
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.016, i32 %7)
  %cmp2 = icmp ult i32 %offset.addr.016, %7
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %for.body
  %sub = sub i32 %offset.addr.016, %7
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %offset.addr.0.lcssa = phi i32 [ %offset, %entry.for.end_crit_edge ], [ %offset.addr.016, %for.body.for.end_crit_edge ], [ %sub, %if.end.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.017, %for.body.for.end_crit_edge ], [ %3, %if.end.for.end_crit_edge ]
  %mul = shl i32 %i.0.lcssa, 3
  %add = add i32 %mul, %offset.addr.0.lcssa
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_gpio_irq_domain_translate(ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 40
  %2 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %do.end, label %if.end22, !prof !197

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 508, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %4 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp26 = icmp ult i32 %5, %3
  br i1 %cmp26, label %do.end42, label %if.end58, !prof !197

do.end42:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 511, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end22
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  %div86 = lshr i32 %7, 3
  %rem = and i32 %7, 7
  %soc = getelementptr inbounds %struct.tegra_gpio, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc, align 4
  %num_ports = getelementptr inbounds %struct.tegra_gpio_soc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div86, i32 %11)
  %cmp61.not = icmp ult i32 %div86, %11
  br i1 %cmp61.not, label %for.cond.preheader, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp6487.not = icmp ult i32 %7, 8
  br i1 %cmp6487.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %umax = call i32 @llvm.umax.i32(i32 %div86, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %offset.089 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %pins = getelementptr %struct.tegra_gpio_port, ptr %13, i32 %i.088, i32 3
  %14 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pins, align 4
  %add = add i32 %15, %offset.089
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %arrayidx68 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx68, align 4
  %and = and i32 %17, 15
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %type, align 4
  %add69 = add i32 %offset.0.lcssa, %rem
  %19 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add69, ptr %hwirq, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end58.cleanup_crit_edge, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end42 ], [ 0, %for.end ], [ -22, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra186_gpio_irq(ptr noundef %desc) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %domain2 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  %2 = ptrtoint ptr %domain2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain2, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %13(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %soc = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc, align 4
  %num_ports125 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %num_ports125 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_ports125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp126.not = icmp eq i32 %19, 0
  br i1 %cmp126.not, label %chained_irq_enter.exit.for.end82_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end82_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end82

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %base6 = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 8
  %irq13 = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 3
  %num_irqs_per_bank = getelementptr inbounds %struct.tegra_gpio, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %skip.for.body_crit_edge, %for.body.lr.ph
  %20 = phi ptr [ %17, %for.body.lr.ph ], [ %50, %skip.for.body_crit_edge ]
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc81, %skip.for.body_crit_edge ]
  %offset.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %add79, %skip.for.body_crit_edge ]
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %value, align 4, !annotation !224
  %24 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base6, align 4
  %bank = getelementptr %struct.tegra_gpio_port, ptr %22, i32 %i.0130, i32 1
  %26 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bank, align 4
  %mul = shl i32 %27, 12
  %add.ptr = getelementptr i8, ptr %25, i32 260
  %port7 = getelementptr %struct.tegra_gpio_port, ptr %22, i32 %i.0130, i32 2
  %28 = ptrtoint ptr %port7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port7, align 4
  %mul8 = shl i32 %29, 9
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %mul
  %30 = ptrtoint ptr %num_irqs_per_bank to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_irqs_per_bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp11118.not = icmp eq i32 %31, 0
  br i1 %cmp11118.not, label %for.body.for.end_crit_edge, label %for.body12.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body12.lr.ph:                                 ; preds = %for.body
  %32 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq13, align 4
  %mul16 = mul i32 %31, %27
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body12.lr.ph
  %j.0119 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc, %for.inc.for.body12_crit_edge ]
  %add = add i32 %mul16, %j.0119
  %arrayidx17 = getelementptr i32, ptr %33, i32 %add
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %35)
  %cmp18 = icmp eq i32 %7, %35
  br i1 %cmp18, label %for.body12.for.end_crit_edge, label %for.inc

for.body12.for.end_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body12
  %inc = add nuw i32 %j.0119, 1
  %exitcond.not = icmp eq i32 %inc, %31
  br i1 %exitcond.not, label %for.inc.skip_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

for.inc.skip_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

for.end:                                          ; preds = %for.body12.for.end_crit_edge, %for.body.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %j.0119, %for.body12.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %31)
  %cmp20 = icmp eq i32 %j.0.lcssa, %31
  br i1 %cmp20, label %for.end.skip_crit_edge, label %if.end22

for.end.skip_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.end22:                                         ; preds = %for.end
  %add.ptr23 = getelementptr i8, ptr %add.ptr9, i32 %mul8
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !198
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  %38 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %value, align 4
  %pins = getelementptr %struct.tegra_gpio_port, ptr %22, i32 %i.0130, i32 3
  %39 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pins, align 4
  %call26 = call i32 @_find_next_bit_be(ptr noundef nonnull %value, i32 noundef %40, i32 noundef 0) #8
  %41 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %42)
  %cmp29123 = icmp ult i32 %call26, %42
  br i1 %cmp29123, label %if.end22.for.body30_crit_edge, label %if.end22.skip_crit_edge

if.end22.skip_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.end22.for.body30_crit_edge:                    ; preds = %if.end22
  br label %for.body30

for.body30:                                       ; preds = %if.end71.for.body30_crit_edge, %if.end22.for.body30_crit_edge
  %pin.0124 = phi i32 [ %call76, %if.end71.for.body30_crit_edge ], [ %call26, %if.end22.for.body30_crit_edge ]
  %add31 = add i32 %pin.0124, %offset.0127
  %call32 = call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef %add31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool.not = icmp eq i32 %call32, 0
  br i1 %tobool.not, label %for.body30.if.end71_crit_edge, label %land.rhs

for.body30.if.end71_crit_edge:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.rhs:                                         ; preds = %for.body30
  %call35 = call i32 @___ratelimit(ptr noundef nonnull @tegra186_gpio_irq._rs, ptr noundef nonnull @__func__.tegra186_gpio_irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.rhs.if.end71_crit_edge, label %do.end.critedge, !prof !226

land.rhs.if.end71_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 490, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %add31) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end.critedge, %land.rhs.if.end71_crit_edge, %for.body30.if.end71_crit_edge
  %43 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pins, align 4
  %add75 = add nuw i32 %pin.0124, 1
  %call76 = call i32 @_find_next_bit_be(ptr noundef nonnull %value, i32 noundef %44, i32 noundef %add75) #8
  %45 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pins, align 4
  %cmp29 = icmp ult i32 %call76, %46
  br i1 %cmp29, label %if.end71.for.body30_crit_edge, label %if.end71.skip_crit_edge

if.end71.skip_crit_edge:                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.end71.for.body30_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

skip:                                             ; preds = %if.end71.skip_crit_edge, %if.end22.skip_crit_edge, %for.end.skip_crit_edge, %for.inc.skip_crit_edge
  %pins78 = getelementptr %struct.tegra_gpio_port, ptr %22, i32 %i.0130, i32 3
  %47 = ptrtoint ptr %pins78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pins78, align 4
  %add79 = add i32 %48, %offset.0127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  %inc81 = add nuw i32 %i.0130, 1
  %49 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %soc, align 4
  %num_ports = getelementptr inbounds %struct.tegra_gpio_soc, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc81, %52
  br i1 %cmp, label %skip.for.body_crit_edge, label %skip.for.end82_crit_edge

skip.for.end82_crit_edge:                         ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end82

skip.for.body_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end82:                                        ; preds = %skip.for.end82_crit_edge, %chained_irq_enter.exit.for.end82_crit_edge
  %53 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i115 = icmp eq ptr %54, null
  br i1 %tobool.not.i115, label %if.else.i116, label %for.end82.chained_irq_exit.exit_crit_edge

for.end82.chained_irq_exit.exit_crit_edge:        ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i116:                                     ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %55 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i116, %for.end82.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %56, %if.else.i116 ], [ %54, %for.end82.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra186_gpio_init_route_mapping(ptr nocapture noundef readonly %gpio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gpio, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %soc = getelementptr inbounds %struct.tegra_gpio, ptr %gpio, i32 0, i32 4
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %num_ports60 = getelementptr inbounds %struct.tegra_gpio_soc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_ports60 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp61.not = icmp eq i32 %5, 0
  br i1 %cmp61.not, label %entry.for.end38_crit_edge, label %for.body.lr.ph

entry.for.end38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end38

for.body.lr.ph:                                   ; preds = %entry
  %secure = getelementptr inbounds %struct.tegra_gpio, ptr %gpio, i32 0, i32 7
  %num_irqs_per_bank = getelementptr inbounds %struct.tegra_gpio, ptr %gpio, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %3, %for.body.lr.ph ], [ %33, %if.end35.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %if.end35.for.body_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx = getelementptr %struct.tegra_gpio_port, ptr %8, i32 %i.062
  %port3 = getelementptr %struct.tegra_gpio_port, ptr %8, i32 %i.062, i32 2
  %9 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port3, align 4
  %11 = ptrtoint ptr %secure to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %secure, align 4
  %bank = getelementptr %struct.tegra_gpio_port, ptr %8, i32 %i.062, i32 1
  %13 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bank, align 4
  %mul = shl i32 %14, 12
  %add.ptr = getelementptr i8, ptr %12, i32 2048
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %16 = and i32 %15, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %for.cond10.preheader, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

for.cond10.preheader:                             ; preds = %for.body
  %18 = ptrtoint ptr %num_irqs_per_bank to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_irqs_per_bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1157.not = icmp eq i32 %19, 0
  br i1 %cmp1157.not, label %for.cond10.preheader.if.end35_crit_edge, label %do.body.lr.ph

for.cond10.preheader.if.end35_crit_edge:          ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.body.lr.ph:                                    ; preds = %for.cond10.preheader
  %mul19 = shl i32 %10, 5
  %add = or i32 %mul19, 20
  %pins = getelementptr %struct.tegra_gpio_port, ptr %8, i32 %i.062, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra186_gpio_init_route_mapping.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra186_gpio_init_route_mapping, %for.inc.peel)) #8
          to label %if.then18.peel [label %for.inc.peel], !srcloc !228

if.then18.peel:                                   ; preds = %do.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra186_gpio_init_route_mapping.__UNIQUE_ID_ddebug227, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %21) #8
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then18.peel, %do.body.lr.ph
  %add.ptr26.peel = getelementptr i8, ptr %add.ptr4, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.peel) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  %23 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pins, align 4
  %notmask.peel = shl nsw i32 -1, %24
  %sub.peel = xor i32 %notmask.peel, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %sub.peel)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.peel, i32 %25) #8, !srcloc !202
  %26 = ptrtoint ptr %num_irqs_per_bank to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_irqs_per_bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp11.peel = icmp ugt i32 %27, 1
  br i1 %cmp11.peel, label %for.inc.peel.do.body_crit_edge, label %for.inc.peel.if.end35_crit_edge

for.inc.peel.if.end35_crit_edge:                  ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

for.inc.peel.do.body_crit_edge:                   ; preds = %for.inc.peel
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.inc.peel.do.body_crit_edge
  %j.058 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 1, %for.inc.peel.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra186_gpio_init_route_mapping.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra186_gpio_init_route_mapping, %for.inc)) #8
          to label %if.then18 [label %for.inc], !srcloc !228

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra186_gpio_init_route_mapping.__UNIQUE_ID_ddebug227, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %29) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %do.body
  %inc = add nuw i32 %j.058, 1
  %30 = ptrtoint ptr %num_irqs_per_bank to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_irqs_per_bank, align 4
  %cmp11 = icmp ult i32 %inc, %31
  br i1 %cmp11, label %for.inc.do.body_crit_edge, label %for.inc.if.end35_crit_edge, !llvm.loop !231

for.inc.if.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end35:                                         ; preds = %for.inc.if.end35_crit_edge, %for.inc.peel.if.end35_crit_edge, %for.cond10.preheader.if.end35_crit_edge, %for.body.if.end35_crit_edge
  %inc37 = add nuw i32 %i.062, 1
  %32 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %soc, align 4
  %num_ports = getelementptr inbounds %struct.tegra_gpio_soc, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc37, %35
  br i1 %cmp, label %if.end35.for.body_crit_edge, label %if.end35.for.end38_crit_edge

if.end35.for.end38_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end38

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end38:                                        ; preds = %if.end35.for.end38_crit_edge, %entry.for.end38_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @irq_find_host(ptr noundef %node) unnamed_addr #4 align 64 {
entry:
  %fwspec.i.i4 = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i) #8
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spec.select.i.i, ptr %fwspec.i.i, align 4
  %call.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4) #8
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i.i, ptr %fwspec.i.i4, align 4
  %call.i.i8 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %d.0 = phi ptr [ %call.i.i, %entry.if.end_crit_edge ], [ %call.i.i8, %if.then ]
  ret ptr %d.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pingroup_range(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__initcall__kmod_gpio_tegra186__228_1146_tegra186_gpio_driver_init6, !1, !"__initcall__kmod_gpio_tegra186__228_1146_tegra186_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1146, i32 1}
!2 = !{ptr @__exitcall_tegra186_gpio_driver_exit, !1, !"__exitcall_tegra186_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description229, !4, !"__UNIQUE_ID_description229", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1148, i32 1}
!5 = !{ptr @__UNIQUE_ID_author230, !6, !"__UNIQUE_ID_author230", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1149, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1150, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1140, i32 11}
!12 = !{ptr @tegra186_gpio_driver, !13, !"tegra186_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1138, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-tegra186.c", i32 683, i32 61}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-tegra186.c", i32 690, i32 59}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-tegra186.c", i32 746, i32 12}
!20 = !{ptr @tegra186_gpio_probe.lock_key, !21, !"lock_key", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-tegra186.c", i32 831, i32 9}
!22 = !{ptr @tegra186_gpio_probe.request_key, !21, !"request_key", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-tegra186.c", i32 653, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tegra186_gpio_irqs_per_bank._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra186_gpio_irqs_per_bank._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-tegra186.c", i32 300, i32 4}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tegra186_gpio_add_pin_ranges._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra186_gpio_add_pin_ranges._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-tegra186.c", i32 333, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tegra186_gpio_of_xlate._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra186_gpio_of_xlate._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-tegra186.c", i32 490, i32 4}
!44 = !{ptr @tegra186_gpio_irq._rs, !43, !"_rs", i1 false, i1 false}
!45 = !{ptr @__func__.tegra186_gpio_irq, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-tegra186.c", i32 609, i32 5}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tegra186_gpio_init_route_mapping.__UNIQUE_ID_ddebug227, !48, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!52 = !{ptr @tegra186_pmc_of_match, !53, !"tegra186_pmc_of_match", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-tegra186.c", i32 577, i32 34}
!54 = !{ptr @tegra186_gpio_of_match, !55, !"tegra186_gpio_of_match", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1102, i32 34}
!56 = !{ptr @tegra186_main_soc, !57, !"tegra186_main_soc", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-tegra186.c", i32 868, i32 36}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-tegra186.c", i32 843, i32 2}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-tegra186.c", i32 844, i32 2}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-tegra186.c", i32 845, i32 2}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-tegra186.c", i32 846, i32 2}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-tegra186.c", i32 847, i32 2}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpio-tegra186.c", i32 848, i32 2}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpio/gpio-tegra186.c", i32 849, i32 2}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpio-tegra186.c", i32 850, i32 2}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpio/gpio-tegra186.c", i32 851, i32 2}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpio/gpio-tegra186.c", i32 852, i32 2}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpio/gpio-tegra186.c", i32 853, i32 2}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpio/gpio-tegra186.c", i32 854, i32 2}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpio/gpio-tegra186.c", i32 855, i32 2}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpio/gpio-tegra186.c", i32 856, i32 2}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpio/gpio-tegra186.c", i32 857, i32 2}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpio/gpio-tegra186.c", i32 858, i32 2}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpio/gpio-tegra186.c", i32 859, i32 2}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpio/gpio-tegra186.c", i32 860, i32 2}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpio/gpio-tegra186.c", i32 861, i32 2}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpio/gpio-tegra186.c", i32 862, i32 2}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpio/gpio-tegra186.c", i32 863, i32 2}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpio/gpio-tegra186.c", i32 864, i32 2}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpio/gpio-tegra186.c", i32 865, i32 2}
!104 = !{ptr @tegra186_main_ports, !105, !"tegra186_main_ports", i1 false, i1 false}
!105 = !{!"../drivers/gpio/gpio-tegra186.c", i32 842, i32 37}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpio/gpio-tegra186.c", i32 898, i32 10}
!108 = !{ptr @tegra186_aon_soc, !109, !"tegra186_aon_soc", i1 false, i1 false}
!109 = !{!"../drivers/gpio/gpio-tegra186.c", i32 895, i32 36}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpio/gpio-tegra186.c", i32 885, i32 2}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpio/gpio-tegra186.c", i32 886, i32 2}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpio/gpio-tegra186.c", i32 887, i32 2}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpio/gpio-tegra186.c", i32 888, i32 2}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpio/gpio-tegra186.c", i32 889, i32 2}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpio/gpio-tegra186.c", i32 890, i32 2}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpio/gpio-tegra186.c", i32 891, i32 2}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpio/gpio-tegra186.c", i32 892, i32 2}
!126 = !{ptr @tegra186_aon_ports, !127, !"tegra186_aon_ports", i1 false, i1 false}
!127 = !{!"../drivers/gpio/gpio-tegra186.c", i32 884, i32 37}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpio/gpio-tegra186.c", i32 950, i32 10}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpio/gpio-tegra186.c", i32 955, i32 12}
!132 = !{ptr @tegra194_main_soc, !133, !"tegra194_main_soc", i1 false, i1 false}
!133 = !{!"../drivers/gpio/gpio-tegra186.c", i32 947, i32 36}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpio/gpio-tegra186.c", i32 939, i32 2}
!136 = !{ptr @tegra194_main_ports, !137, !"tegra194_main_ports", i1 false, i1 false}
!137 = !{!"../drivers/gpio/gpio-tegra186.c", i32 911, i32 37}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpio/gpio-tegra186.c", i32 943, i32 31}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpio/gpio-tegra186.c", i32 944, i32 31}
!142 = !{ptr @tegra194_main_pin_ranges, !143, !"tegra194_main_pin_ranges", i1 false, i1 false}
!143 = !{!"../drivers/gpio/gpio-tegra186.c", i32 942, i32 40}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpio/gpio-tegra186.c", i32 977, i32 10}
!146 = !{ptr @tegra194_aon_soc, !147, !"tegra194_aon_soc", i1 false, i1 false}
!147 = !{!"../drivers/gpio/gpio-tegra186.c", i32 974, i32 36}
!148 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpio/gpio-tegra186.c", i32 970, i32 2}
!150 = !{ptr @tegra194_aon_ports, !151, !"tegra194_aon_ports", i1 false, i1 false}
!151 = !{!"../drivers/gpio/gpio-tegra186.c", i32 966, i32 37}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1021, i32 10}
!154 = !{ptr @tegra234_main_soc, !155, !"tegra234_main_soc", i1 false, i1 false}
!155 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1018, i32 36}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1011, i32 2}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1012, i32 2}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1013, i32 2}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1014, i32 2}
!164 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1015, i32 2}
!166 = !{ptr @tegra234_main_ports, !167, !"tegra234_main_ports", i1 false, i1 false}
!167 = !{!"../drivers/gpio/gpio-tegra186.c", i32 990, i32 37}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1046, i32 10}
!170 = !{ptr @tegra234_aon_soc, !171, !"tegra234_aon_soc", i1 false, i1 false}
!171 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1043, i32 36}
!172 = !{ptr @tegra234_aon_ports, !173, !"tegra234_aon_ports", i1 false, i1 false}
!173 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1034, i32 37}
!174 = !{ptr @tegra186_gpio_acpi_match, !175, !"tegra186_gpio_acpi_match", i1 false, i1 false}
!175 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1127, i32 37}
!176 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1076, i32 10}
!178 = !{ptr @tegra241_main_soc, !179, !"tegra241_main_soc", i1 false, i1 false}
!179 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1073, i32 36}
!180 = !{ptr @tegra241_main_ports, !181, !"tegra241_main_ports", i1 false, i1 false}
!181 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1059, i32 37}
!182 = !{ptr @.str.66, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1097, i32 10}
!184 = !{ptr @tegra241_aon_soc, !185, !"tegra241_aon_soc", i1 false, i1 false}
!185 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1094, i32 36}
!186 = !{ptr @tegra241_aon_ports, !187, !"tegra241_aon_ports", i1 false, i1 false}
!187 = !{!"../drivers/gpio/gpio-tegra186.c", i32 1089, i32 37}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{!"branch_weights", i32 1, i32 2000}
!198 = !{i64 4869243}
!199 = !{i64 2154000260}
!200 = !{i64 2154001339}
!201 = !{i64 2154001636}
!202 = !{i64 4868825}
!203 = !{i64 2154002278}
!204 = !{i64 2154002657}
!205 = !{i64 2154003825}
!206 = !{i64 2154004122}
!207 = !{i64 2154004764}
!208 = !{i64 2154005143}
!209 = !{i64 2154006311}
!210 = !{i64 2154006860}
!211 = !{i64 2154007327}
!212 = !{i64 2154008392}
!213 = !{i64 2154008771}
!214 = !{i64 2154009277}
!215 = !{i64 2154009919}
!216 = !{i64 2154010216}
!217 = !{i64 2154016684}
!218 = !{i64 2154019058}
!219 = !{i64 2154019355}
!220 = !{i64 2154021741}
!221 = !{i64 2154022038}
!222 = !{i64 2154024427}
!223 = !{i64 2154024957}
!224 = !{!"auto-init"}
!225 = !{i64 2154025674}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{i64 2154029346}
!228 = !{i64 2148331011, i64 2148331016, i64 2148331029, i64 2148331073, i64 2148331107, i64 2148331128}
!229 = !{i64 2154032555}
!230 = !{i64 2154032851}
!231 = distinct !{!231, !232}
!232 = !{!"llvm.loop.peeled.count", i32 1}
