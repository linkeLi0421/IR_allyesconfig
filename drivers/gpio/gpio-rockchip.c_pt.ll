; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-rockchip.c_pt.bc'
source_filename = "../drivers/gpio/gpio-rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rockchip_gpio_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.rockchip_pinctrl = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.rockchip_pin_ctrl = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.rockchip_pin_bank = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i8, [4 x %struct.rockchip_iomux], [4 x %struct.rockchip_drv], [4 x i32], i8, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, %struct.raw_spinlock, ptr, i32, i32, i32, i32, %struct.list_head, %struct.mutex }
%struct.rockchip_iomux = type { i32, i32 }
%struct.rockchip_drv = type { i32, i32 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rockchip_pin_output_deferred = type { %struct.list_head, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_rockchip__230_799_rockchip_gpio_init2 = internal global ptr @rockchip_gpio_init, section ".initcall2.init", align 4
@rockchip_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_gpio_probe, ptr @rockchip_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_gpio_exit = internal global ptr @rockchip_gpio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [47 x i8] c"gpio_rockchip.description=Rockchip gpio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [43 x i8] c"gpio_rockchip.alias=platform:rockchip-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [46 x i8] c"gpio_rockchip.file=drivers/gpio/gpio-rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [29 x i8] c"gpio_rockchip.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rockchip-gpio\00", [18 x i8] zeroinitializer }, align 32
@rockchip_gpio_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,gpio-bank\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-gpio-bank0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rockchip_gpio_probe.gpio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@rockchip_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&bank->slock\00", [19 x i8] zeroinitializer }, align 32
@rockchip_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 757, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"setting output pin %u to %u failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip_gpio_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-rockchip.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_gpio_probe._entry_ptr = internal global ptr @rockchip_gpio_probe._entry, section ".printk_index", align 4
@rockchip_gpio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 765, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"probed %pOF\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rockchip_gpio_probe._entry_ptr.11 = internal global ptr @rockchip_gpio_probe._entry.8, section ".printk_index", align 4
@rockchip_get_bank_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 646, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot find IO resource for bank\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_get_bank_data\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rockchip_get_bank_data._entry_ptr = internal global ptr @rockchip_get_bank_data._entry, section ".printk_index", align 4
@gpio_regs_v2 = internal constant { %struct.rockchip_gpio_regs, [36 x i8] } { %struct.rockchip_gpio_regs { i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 80, i32 88, i32 56, i32 64, i32 72, i32 96, i32 112, i32 120 }, [36 x i8] zeroinitializer }, align 32
@rockchip_get_bank_data._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.5, i32 671, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot find debounce clk\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_get_bank_data._entry_ptr.17 = internal global ptr @rockchip_get_bank_data._entry.15, section ".printk_index", align 4
@gpio_regs_v1 = internal constant { %struct.rockchip_gpio_regs, [36 x i8] } { %struct.rockchip_gpio_regs { i32 0, i32 4, i32 48, i32 52, i32 56, i32 60, i32 0, i32 64, i32 68, i32 72, i32 0, i32 0, i32 76, i32 80, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rockchip_gpiolib_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @rockchip_gpio_get_direction, ptr @rockchip_gpio_direction_input, ptr @rockchip_gpio_direction_output, ptr @rockchip_gpio_get, ptr null, ptr @rockchip_gpio_set, ptr null, ptr @rockchip_gpio_set_config, ptr @rockchip_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@rockchip_gpiolib_register.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rockchip_gpiolib_register.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rockchip_gpiolib_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 593, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add gpiochip %s, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_gpiolib_register\00", [38 x i8] zeroinitializer }, align 32
@rockchip_gpiolib_register._entry_ptr = internal global ptr @rockchip_gpiolib_register._entry, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@rockchip_gpiolib_register._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.5, i32 621, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add pin range\0A\00", [39 x i8] zeroinitializer }, align 32
@rockchip_gpiolib_register._entry_ptr.23 = internal global ptr @rockchip_gpiolib_register._entry.21, section ".printk_index", align 4
@rockchip_gpiolib_register._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.5, i32 628, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register interrupt, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_gpiolib_register._entry_ptr.26 = internal global ptr @rockchip_gpiolib_register._entry.24, section ".printk_index", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@rockchip_interrupts_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 523, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not init irq domain for bank %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip_interrupts_register\00", [35 x i8] zeroinitializer }, align 32
@rockchip_interrupts_register._entry_ptr = internal global ptr @rockchip_interrupts_register._entry, section ".printk_index", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip_gpio_irq\00", [46 x i8] zeroinitializer }, align 32
@rockchip_interrupts_register._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.5, i32 533, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not alloc generic chips for bank %s\0A\00", [53 x i8] zeroinitializer }, align 32
@rockchip_interrupts_register._entry_ptr.32 = internal global ptr @rockchip_interrupts_register._entry.30, section ".printk_index", align 4
@rockchip_irq_demux.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio_rockchip\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip_irq_demux\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"got irq for bank %s\0A\00", [43 x i8] zeroinitializer }, align 32
@rockchip_irq_demux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.5, i32 342, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unmapped irq %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rockchip_irq_demux._entry_ptr = internal global ptr @rockchip_irq_demux._entry, section ".printk_index", align 4
@rockchip_irq_demux.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.5, ptr @.str.37, i8 0, i8 86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handling irq %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"rockchip_gpio_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 786, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 790, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"rockchip_gpio_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 780, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 710, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 720, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 731, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 757, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 765, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 646, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"gpio_regs_v2\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 44, i32 40 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 671, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"gpio_regs_v1\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 30, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"rockchip_gpiolib_chip\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 309, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 590, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 592, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 607, i32 44 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 621, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 628, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 522, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 527, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 532, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 328, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 342, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [32 x i8] c"../drivers/gpio/gpio-rockchip.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 346, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_rockchip_gpio_exit, ptr @__initcall__kmod_gpio_rockchip__230_799_rockchip_gpio_init2, ptr @rockchip_get_bank_data._entry, ptr @rockchip_get_bank_data._entry.15, ptr @rockchip_get_bank_data._entry_ptr, ptr @rockchip_get_bank_data._entry_ptr.17, ptr @rockchip_gpio_exit, ptr @rockchip_gpio_probe._entry, ptr @rockchip_gpio_probe._entry.8, ptr @rockchip_gpio_probe._entry_ptr, ptr @rockchip_gpio_probe._entry_ptr.11, ptr @rockchip_gpiolib_register._entry, ptr @rockchip_gpiolib_register._entry.21, ptr @rockchip_gpiolib_register._entry.24, ptr @rockchip_gpiolib_register._entry_ptr, ptr @rockchip_gpiolib_register._entry_ptr.23, ptr @rockchip_gpiolib_register._entry_ptr.26, ptr @rockchip_interrupts_register._entry, ptr @rockchip_interrupts_register._entry.30, ptr @rockchip_interrupts_register._entry_ptr, ptr @rockchip_interrupts_register._entry_ptr.32, ptr @rockchip_irq_demux._entry, ptr @rockchip_irq_demux._entry_ptr, ptr @rockchip_gpio_driver, ptr @.str, ptr @rockchip_gpio_match, ptr @rockchip_gpio_probe.gpio, ptr @.str.1, ptr @rockchip_gpio_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @gpio_regs_v2, ptr @.str.16, ptr @gpio_regs_v1, ptr @rockchip_gpiolib_chip, ptr @rockchip_gpiolib_register.lock_key, ptr @rockchip_gpiolib_register.request_key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpio_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpio_probe.gpio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_get_bank_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regs_v2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_get_bank_data._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regs_v1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpiolib_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpiolib_register.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpiolib_register.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpiolib_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpiolib_register._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpiolib_register._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_interrupts_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_interrupts_register._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_irq_demux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_gpio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_gpio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_gpio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_parent(ptr noundef %1) #7
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_pinctrl_get(ptr noundef nonnull %call) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @rockchip_gpio_probe.gpio, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @rockchip_gpio_probe.gpio, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %id.0 = phi i32 [ %2, %if.then8 ], [ %call7, %if.end6.if.end9_crit_edge ]
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef nonnull %call3) #7
  %ctrl.i = getelementptr inbounds %struct.rockchip_pinctrl, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl.i, align 4
  %nr_banks.i = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %nr_banks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_banks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8.not.i = icmp eq i32 %6, 0
  br i1 %cmp8.not.i, label %if.end9.cleanup_crit_edge, label %for.body.preheader.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end9
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %bank.09.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %8, %for.body.preheader.i ]
  %bank_num.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 10
  %9 = ptrtoint ptr %bank_num.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bank_num.i, align 4
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0, i32 %conv.i)
  %cmp2.i = icmp eq i32 %id.0, %conv.i
  br i1 %cmp2.i, label %rockchip_gpio_find_bank.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %incdec.ptr.i = getelementptr %struct.rockchip_pin_bank, ptr %bank.09.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rockchip_gpio_find_bank.exit:                     ; preds = %for.body.i
  %tobool11.not = icmp eq ptr %bank.09.i, null
  br i1 %tobool11.not, label %rockchip_gpio_find_bank.exit.cleanup_crit_edge, label %if.end13

rockchip_gpio_find_bank.exit.cleanup_crit_edge:   ; preds = %rockchip_gpio_find_bank.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %rockchip_gpio_find_bank.exit
  %11 = ptrtoint ptr %bank.09.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %bank.09.i, align 4
  %of_node15 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 15
  %12 = ptrtoint ptr %of_node15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %of_node15, align 4
  %slock = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.2, ptr noundef nonnull @rockchip_gpio_probe.__key, i16 noundef signext 2) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #7
  %13 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %14 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node15, align 4
  %call.i81 = call i32 @of_address_to_resource(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i = icmp eq i32 %call.i81, 0
  %16 = ptrtoint ptr %bank.09.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bank.09.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12) #10
  br label %rockchip_get_bank_data.exit.thread

if.end.i:                                         ; preds = %if.end13
  %call2.i = call ptr @devm_ioremap_resource(ptr noundef %17, ptr noundef nonnull %res.i) #7
  %reg_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 1
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2.i, ptr %reg_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.rockchip_get_bank_data.exit_crit_edge, label %if.end8.i

if.end.i.rockchip_get_bank_data.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_get_bank_data.exit

if.end8.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node15, align 4
  %call10.i = call i32 @irq_of_parse_and_map(ptr noundef %20, i32 noundef 0) #7
  %irq.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 5
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call10.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool12.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool12.not.i, label %if.end8.i.rockchip_get_bank_data.exit.thread_crit_edge, label %if.end14.i

if.end8.i.rockchip_get_bank_data.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_get_bank_data.exit.thread

if.end14.i:                                       ; preds = %if.end8.i
  %22 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node15, align 4
  %call16.i = call ptr @of_clk_get(ptr noundef %23, i32 noundef 0) #7
  %clk.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 3
  %24 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call16.i, ptr %clk.i, align 4
  %cmp.i67.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67.i, label %if.end14.i.rockchip_get_bank_data.exit_crit_edge, label %if.end22.i

if.end14.i.rockchip_get_bank_data.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_get_bank_data.exit

if.end22.i:                                       ; preds = %if.end14.i
  %call.i.i = call i32 @clk_prepare(ptr noundef %call16.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end22.i.clk_prepare_enable.exit.i_crit_edge

if.end22.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end22.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %call16.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call16.i) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %if.end22.i.clk_prepare_enable.exit.i_crit_edge
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 120
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 722206721, i32 %27)
  %cmp.i = icmp eq i32 %27, 722206721
  %gpio_regs.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 21
  br i1 %cmp.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %clk_prepare_enable.exit.i
  %28 = ptrtoint ptr %gpio_regs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @gpio_regs_v2, ptr %gpio_regs.i, align 4
  %gpio_type.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 22
  %29 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16780331, ptr %gpio_type.i, align 4
  %30 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node15, align 4
  %call30.i = call ptr @of_clk_get(ptr noundef %31, i32 noundef 1) #7
  %db_clk.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 4
  %32 = ptrtoint ptr %db_clk.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call30.i, ptr %db_clk.i, align 4
  %cmp.i68.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68.i, label %do.end36.i, label %if.then28.i.rockchip_get_bank_data.exit.thread104_crit_edge

if.then28.i.rockchip_get_bank_data.exit.thread104_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_get_bank_data.exit.thread104

do.end36.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %bank.09.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bank.09.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.16) #10
  %35 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %36) #7
  call void @clk_unprepare(ptr noundef %36) #7
  br label %rockchip_get_bank_data.exit.thread

if.else.i:                                        ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %gpio_regs.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @gpio_regs_v1, ptr %gpio_regs.i, align 4
  %gpio_type41.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 22
  %38 = ptrtoint ptr %gpio_type41.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %gpio_type41.i, align 4
  br label %rockchip_get_bank_data.exit.thread104

rockchip_get_bank_data.exit.thread:               ; preds = %do.end36.i, %if.end8.i.rockchip_get_bank_data.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %if.end8.i.rockchip_get_bank_data.exit.thread_crit_edge ], [ -22, %do.end36.i ], [ -2, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  br label %cleanup

rockchip_get_bank_data.exit.thread104:            ; preds = %if.else.i, %if.then28.i.rockchip_get_bank_data.exit.thread104_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  %deferred_lock = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 27
  call void @mutex_lock_nested(ptr noundef %deferred_lock, i32 noundef 0) #7
  %gpio_chip.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 18
  %39 = call ptr @memcpy(ptr %gpio_chip.i, ptr @rockchip_gpiolib_chip, i32 348)
  %pin_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 7
  %40 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pin_base.i, align 4
  %base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 18, i32 19
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %base.i, align 4
  %nr_pins.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 8
  %43 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nr_pins.i, align 4
  %conv.i82 = zext i8 %44 to i16
  %ngpio.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 18, i32 20
  %45 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i82, ptr %ngpio.i, align 4
  %name.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 9
  %46 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name.i, align 4
  %48 = ptrtoint ptr %gpio_chip.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %gpio_chip.i, align 4
  %49 = ptrtoint ptr %bank.09.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bank.09.i, align 4
  %parent.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 18, i32 2
  %51 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %parent.i, align 4
  %call.i83 = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip.i, ptr noundef nonnull %bank.09.i, ptr noundef nonnull @rockchip_gpiolib_register.lock_key, ptr noundef nonnull @rockchip_gpiolib_register.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.end.i88, label %do.end.i85

rockchip_get_bank_data.exit:                      ; preds = %if.end14.i.rockchip_get_bank_data.exit_crit_edge, %if.end.i.rockchip_get_bank_data.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call2.i, %if.end.i.rockchip_get_bank_data.exit_crit_edge ], [ %call16.i, %if.end14.i.rockchip_get_bank_data.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  br label %cleanup

do.end.i85:                                       ; preds = %rockchip_get_bank_data.exit.thread104
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %bank.09.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bank.09.i, align 4
  %54 = ptrtoint ptr %gpio_chip.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpio_chip.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.18, ptr noundef %55, i32 noundef %call.i83) #10
  br label %if.then22

if.end.i88:                                       ; preds = %rockchip_get_bank_data.exit.thread104
  %56 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node15, align 4
  %call.i.i87 = call ptr @of_find_property(ptr noundef %57, ptr noundef nonnull @.str.20, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i87, null
  br i1 %tobool.i.not.i, label %if.then5.i89, label %if.end.i88.if.end29.i_crit_edge

if.end.i88.if.end29.i_crit_edge:                  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then5.i89:                                     ; preds = %if.end.i88
  %58 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node15, align 4
  %call7.i = call ptr @of_get_parent(ptr noundef %59) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then5.i89.if.then22_crit_edge, label %if.end10.i

if.then5.i89.if.then22_crit_edge:                 ; preds = %if.then5.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end10.i:                                       ; preds = %if.then5.i89
  %call11.i = call ptr @of_pinctrl_get(ptr noundef nonnull %call7.i) #7
  %tobool12.not.i90 = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i90, label %if.end10.i.if.then22_crit_edge, label %if.end14.i92

if.end10.i.if.then22_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end14.i92:                                     ; preds = %if.end10.i
  %dev15.i = getelementptr inbounds %struct.pinctrl_dev, ptr %call11.i, i32 0, i32 8
  %60 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev15.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i91 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i91, label %if.end.i.i93, label %if.end14.i92.dev_name.exit.i_crit_edge

if.end14.i92.dev_name.exit.i_crit_edge:           ; preds = %if.end14.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i93:                                     ; preds = %if.end14.i92
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i93, %if.end14.i92.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %65, %if.end.i.i93 ], [ %63, %if.end14.i92.dev_name.exit.i_crit_edge ]
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base.i, align 4
  %68 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %ngpio.i, align 4
  %conv19.i = zext i16 %69 to i32
  %call20.i = call i32 @gpiochip_add_pin_range(ptr noundef %gpio_chip.i, ptr noundef %retval.0.i.i, i32 noundef 0, i32 noundef %67, i32 noundef %conv19.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %dev_name.exit.i.if.end29.i_crit_edge, label %cleanup.i

dev_name.exit.i.if.end29.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

cleanup.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %bank.09.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bank.09.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.22) #10
  br label %fail.i

if.end29.i:                                       ; preds = %dev_name.exit.i.if.end29.i_crit_edge, %if.end.i88.if.end29.i_crit_edge
  %72 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %of_node15, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %73, null
  %fwnode.i.i.i.i = getelementptr inbounds %struct.device_node, ptr %73, i32 0, i32 3
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i.i, ptr null, ptr %fwnode.i.i.i.i
  %call1.i.i.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i.i.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #7
  %domain.i.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 17
  %74 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call1.i.i.i, ptr %domain.i.i, align 4
  %tobool.not.i70.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i70.i, label %do.end.i.i, label %do.end7.i.i

do.end.i.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %bank.09.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bank.09.i, align 4
  %77 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.27, ptr noundef %78) #10
  br label %do.end35.i

do.end7.i.i:                                      ; preds = %if.end29.i
  %call9.i.i = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i.i.i, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end18.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %bank.09.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bank.09.i, align 4
  %81 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.31, ptr noundef %82) #10
  %83 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %domain.i.i, align 4
  call void @irq_domain_remove(ptr noundef %84) #7
  br label %do.end35.i

if.end18.i.i:                                     ; preds = %do.end7.i.i
  %85 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %domain.i.i, align 4
  %call20.i.i = call ptr @irq_get_domain_generic_chip(ptr noundef %86, i32 noundef 0) #7
  %gpio_type.i.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 22
  %87 = ptrtoint ptr %gpio_type.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %gpio_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %88)
  %cmp.i.i94 = icmp eq i32 %88, 16780331
  br i1 %cmp.i.i94, label %if.then21.i.i, label %if.end18.i.i.if.end22.i.i_crit_edge

if.end18.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

if.then21.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %reg_writel.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %reg_writel.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @gpio_writel_v2, ptr %reg_writel.i.i, align 4
  %reg_readl.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 0, i32 2
  %90 = ptrtoint ptr %reg_readl.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @gpio_readl_v2, ptr %reg_readl.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then21.i.i, %if.end18.i.i.if.end22.i.i_crit_edge
  %91 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_base.i, align 4
  %reg_base23.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %reg_base23.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %reg_base23.i.i, align 4
  %private.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 0, i32 14
  %94 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %bank.09.i, ptr %private.i.i, align 4
  %95 = ptrtoint ptr %gpio_regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %gpio_regs.i, align 4
  %int_mask.i.i = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %int_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %int_mask.i.i, align 4
  %mask.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 2, i32 0, i32 4, i32 1, i32 1
  %99 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %mask.i.i, align 4
  %100 = load ptr, ptr %gpio_regs.i, align 4
  %port_eoi.i.i = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %port_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port_eoi.i.i, align 4
  %ack.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 2, i32 0, i32 4, i32 2
  %103 = ptrtoint ptr %ack.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %ack.i.i, align 4
  %irq_ack.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 0, i32 4, i32 1, i32 1
  %104 = ptrtoint ptr %irq_ack.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @irq_gc_ack_set_bit, ptr %irq_ack.i.i, align 4
  %irq_mask.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 0, i32 4, i32 2
  %105 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @irq_gc_mask_set_bit, ptr %irq_mask.i.i, align 4
  %irq_unmask.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 0, i32 4, i32 6
  %106 = ptrtoint ptr %irq_unmask.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_unmask.i.i, align 4
  %irq_enable.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 0, i32 4
  %107 = ptrtoint ptr %irq_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @rockchip_irq_enable, ptr %irq_enable.i.i, align 4
  %irq_disable.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 0, i32 4, i32 1
  %108 = ptrtoint ptr %irq_disable.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @rockchip_irq_disable, ptr %irq_disable.i.i, align 4
  %irq_set_wake.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 4
  %109 = ptrtoint ptr %irq_set_wake.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @irq_gc_set_wake, ptr %irq_set_wake.i.i, align 4
  %irq_suspend.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 7
  %110 = ptrtoint ptr %irq_suspend.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @rockchip_irq_suspend, ptr %irq_suspend.i.i, align 4
  %irq_resume.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 8
  %111 = ptrtoint ptr %irq_resume.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @rockchip_irq_resume, ptr %irq_resume.i.i, align 4
  %irq_set_type.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 3
  %112 = ptrtoint ptr %irq_set_type.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @rockchip_irq_set_type, ptr %irq_set_type.i.i, align 4
  %irq_request_resources.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 12
  %113 = ptrtoint ptr %irq_request_resources.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @rockchip_irq_reqres, ptr %irq_request_resources.i.i, align 4
  %irq_release_resources.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 1, i32 13
  %114 = ptrtoint ptr %irq_release_resources.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @rockchip_irq_relres, ptr %irq_release_resources.i.i, align 4
  %115 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %nr_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %116)
  %cmp60.i.i = icmp ult i8 %116, 32
  %conv.i.i = zext i8 %116 to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %cond.i.i = select i1 %cmp60.i.i, i32 %sub.i.i, i32 -1
  %wake_enabled.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 0, i32 11
  %117 = ptrtoint ptr %wake_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %cond.i.i, ptr %wake_enabled.i.i, align 4
  %118 = ptrtoint ptr %gpio_regs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %gpio_regs.i, align 4
  %int_mask65.i.i = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %int_mask65.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %int_mask65.i.i, align 4
  %122 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %123, i32 %121
  %124 = ptrtoint ptr %gpio_type.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %gpio_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %125)
  %cmp.i.i.i = icmp eq i32 %125, 16780331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -1) #7
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end22.i.i.rockchip_gpio_writel.exit.i.i_crit_edge

if.end22.i.i.rockchip_gpio_writel.exit.i.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_gpio_writel.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 -1) #7, !srcloc !106
  br label %rockchip_gpio_writel.exit.i.i

rockchip_gpio_writel.exit.i.i:                    ; preds = %if.then.i.i.i, %if.end22.i.i.rockchip_gpio_writel.exit.i.i_crit_edge
  %126 = ptrtoint ptr %gpio_regs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %gpio_regs.i, align 4
  %port_eoi67.i.i = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %127, i32 0, i32 12
  %128 = ptrtoint ptr %port_eoi67.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port_eoi67.i.i, align 4
  %130 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i114.i.i = getelementptr i8, ptr %131, i32 %129
  %132 = ptrtoint ptr %gpio_type.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %gpio_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %133)
  %cmp.i116.i.i = icmp eq i32 %133, 16780331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i.i, i32 -1) #7
  br i1 %cmp.i116.i.i, label %if.then.i118.i.i, label %rockchip_gpio_writel.exit.i.i.rockchip_gpio_writel.exit120.i.i_crit_edge

rockchip_gpio_writel.exit.i.i.rockchip_gpio_writel.exit120.i.i_crit_edge: ; preds = %rockchip_gpio_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_gpio_writel.exit120.i.i

if.then.i118.i.i:                                 ; preds = %rockchip_gpio_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %add.ptr.i.i117.i.i = getelementptr i8, ptr %add.ptr.i114.i.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i117.i.i, i32 -1) #7, !srcloc !106
  br label %rockchip_gpio_writel.exit120.i.i

rockchip_gpio_writel.exit120.i.i:                 ; preds = %if.then.i118.i.i, %rockchip_gpio_writel.exit.i.i.rockchip_gpio_writel.exit120.i.i_crit_edge
  %134 = ptrtoint ptr %gpio_regs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %gpio_regs.i, align 4
  %int_en.i.i = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %int_en.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %int_en.i.i, align 4
  %138 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i122.i.i = getelementptr i8, ptr %139, i32 %137
  %140 = ptrtoint ptr %gpio_type.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %gpio_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %141)
  %cmp.i124.i.i = icmp eq i32 %141, 16780331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i.i, i32 -1) #7
  br i1 %cmp.i124.i.i, label %if.then.i126.i.i, label %rockchip_gpio_writel.exit120.i.i.rockchip_gpiolib_register.exit_crit_edge

rockchip_gpio_writel.exit120.i.i.rockchip_gpiolib_register.exit_crit_edge: ; preds = %rockchip_gpio_writel.exit120.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_gpiolib_register.exit

if.then.i126.i.i:                                 ; preds = %rockchip_gpio_writel.exit120.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %add.ptr.i.i125.i.i = getelementptr i8, ptr %add.ptr.i122.i.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i125.i.i, i32 -1) #7, !srcloc !106
  br label %rockchip_gpiolib_register.exit

do.end35.i:                                       ; preds = %do.end14.i.i, %do.end.i.i
  %142 = ptrtoint ptr %bank.09.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bank.09.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.25, i32 noundef -22) #10
  br label %fail.i

fail.i:                                           ; preds = %do.end35.i, %cleanup.i
  %ret.1.i = phi i32 [ -22, %do.end35.i ], [ %call20.i, %cleanup.i ]
  call void @gpiochip_remove(ptr noundef %gpio_chip.i) #7
  br label %if.then22

rockchip_gpiolib_register.exit:                   ; preds = %if.then.i126.i.i, %rockchip_gpio_writel.exit120.i.i.rockchip_gpiolib_register.exit_crit_edge
  %mask_cache.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call20.i.i, i32 0, i32 8
  %144 = ptrtoint ptr %mask_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %mask_cache.i.i, align 4
  %145 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %irq.i, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %146, ptr noundef nonnull @rockchip_irq_demux, ptr noundef nonnull %bank.09.i) #7
  %deferred_output = getelementptr inbounds %struct.rockchip_pin_bank, ptr %bank.09.i, i32 0, i32 26
  %147 = ptrtoint ptr %deferred_output to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile ptr, ptr %deferred_output, align 4
  %cmp.i95.not111 = icmp eq ptr %148, %deferred_output
  br i1 %cmp.i95.not111, label %rockchip_gpiolib_register.exit.while.end_crit_edge, label %rockchip_gpiolib_register.exit.while.body_crit_edge

rockchip_gpiolib_register.exit.while.body_crit_edge: ; preds = %rockchip_gpiolib_register.exit
  br label %while.body

rockchip_gpiolib_register.exit.while.end_crit_edge: ; preds = %rockchip_gpiolib_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then22:                                        ; preds = %fail.i, %if.end10.i.if.then22_crit_edge, %if.then5.i89.if.then22_crit_edge, %do.end.i85
  %retval.1.i.ph = phi i32 [ -61, %if.then5.i89.if.then22_crit_edge ], [ -19, %if.end10.i.if.then22_crit_edge ], [ %ret.1.i, %fail.i ], [ %call.i83, %do.end.i85 ]
  %149 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %150) #7
  call void @clk_unprepare(ptr noundef %150) #7
  call void @mutex_unlock(ptr noundef %deferred_lock) #7
  br label %cleanup

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %rockchip_gpiolib_register.exit.while.body_crit_edge
  %151 = phi ptr [ %165, %list_del.exit.while.body_crit_edge ], [ %148, %rockchip_gpiolib_register.exit.while.body_crit_edge ]
  %call.i.i97 = call zeroext i1 @__list_del_entry_valid(ptr noundef %151) #7
  br i1 %call.i.i97, label %if.end.i.i98, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i98:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i, align 4
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %151, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i98, %while.body.list_del.exit_crit_edge
  %158 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 256 to ptr), ptr %151, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pin = getelementptr inbounds %struct.rockchip_pin_output_deferred, ptr %151, i32 0, i32 1
  %160 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pin, align 4
  %arg = getelementptr inbounds %struct.rockchip_pin_output_deferred, ptr %151, i32 0, i32 2
  %162 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arg, align 4
  call void @rockchip_gpio_set(ptr noundef %gpio_chip.i, i32 noundef %161, i32 noundef %163) #7
  call fastcc void @rockchip_gpio_set_direction(ptr noundef %gpio_chip.i, i32 noundef %161, i1 noundef zeroext false) #7
  call void @kfree(ptr noundef %151) #7
  %164 = ptrtoint ptr %deferred_output to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile ptr, ptr %deferred_output, align 4
  %cmp.i95.not = icmp eq ptr %165, %deferred_output
  br i1 %cmp.i95.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %rockchip_gpiolib_register.exit.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %deferred_lock) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %166 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %bank.09.i, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then22, %rockchip_get_bank_data.exit, %rockchip_get_bank_data.exit.thread, %rockchip_gpio_find_bank.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i.ph, %if.then22 ], [ 0, %while.end ], [ -19, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ], [ -22, %rockchip_gpio_find_bank.exit.cleanup_crit_edge ], [ %retval.0.i, %rockchip_get_bank_data.exit ], [ %retval.0.i.ph, %rockchip_get_bank_data.exit.thread ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.rockchip_pin_bank, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %gpio_chip = getelementptr inbounds %struct.rockchip_pin_bank, ptr %1, i32 0, i32 18
  tail call void @gpiochip_remove(ptr noundef %gpio_chip) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rockchip_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value)
  tail call fastcc void @rockchip_gpio_set_direction(ptr noundef %gc, i32 noundef %offset, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %gpio_regs = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_regs, align 4
  %port_ddr = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_ddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_ddr, align 4
  %reg_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %gpio_type.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 22
  %6 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %7)
  %cmp.i = icmp eq i32 %7, 16780331
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp1.i = icmp ugt i32 %offset, 15
  %cond.idx.i = select i1 %cmp1.i, i32 4, i32 0
  %cond.i = getelementptr i8, ptr %add.ptr.i, i32 %cond.idx.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i) #7, !srcloc !103
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %rem.i = and i32 %offset, 15
  %shr.i = lshr i32 %9, %rem.i
  br label %rockchip_gpio_readl_bit.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %shr9.i = lshr i32 %11, %offset
  br label %rockchip_gpio_readl_bit.exit

rockchip_gpio_readl_bit.exit:                     ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %shr.i, %if.then.i ], [ %shr9.i, %if.else.i ]
  %and.i = and i32 %data.0.i, 1
  %12 = xor i32 %and.i, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rockchip_gpio_set_direction(ptr noundef %gc, i32 noundef %offset, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %reg_base = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %gpio_regs = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 21
  %2 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_regs, align 4
  %ext_port = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %ext_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ext_port, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %shr = lshr i32 %7, %offset
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %slock = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 20
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %gpio_regs = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %reg_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %gpio_type.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 22
  %6 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %7)
  %cmp.i = icmp eq i32 %7, 16780331
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %rem4.i = and i32 %offset, 15
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 1, %rem4.i
  %add.i = or i32 %rem4.i, 16
  %shl3.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl3.i, %shl.i
  br label %do.body.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add5.i = or i32 %rem4.i, 16
  %shl6.i = shl nuw i32 1, %add5.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then1.i
  %data.0.i = phi i32 [ %or.i, %if.then1.i ], [ %shl6.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %data.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp7.i = icmp ugt i32 %offset, 15
  %cond.idx.i = select i1 %cmp7.i, i32 4, i32 0
  %cond.i = getelementptr i8, ptr %add.ptr.i, i32 %cond.idx.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i, i32 %8) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit

if.else9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %shl11.i = shl nuw i32 1, %offset
  %neg.i = xor i32 %shl11.i, -1
  %and.i = and i32 %10, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool12.not.i = icmp eq i32 %value, 0
  %or15.i = or i32 %10, %shl11.i
  %spec.select.i = select i1 %tobool12.not.i, i32 %and.i, i32 %or15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit

rockchip_gpio_writel_bit.exit:                    ; preds = %if.else9.i, %do.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_set_config(ptr noundef %gc, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cond = icmp eq i32 %and.i, 11
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %gpio_regs.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call.i, i32 0, i32 21
  %0 = ptrtoint ptr %gpio_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_regs.i, align 4
  %gpio_type.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call.i, i32 0, i32 22
  %2 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %3)
  %cmp.i = icmp eq i32 %3, 16780331
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.cleanup.critedge.i_crit_edge

sw.bb.cleanup.critedge.i_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.critedge.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %db_clk.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %db_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.cleanup.critedge.i_crit_edge, label %if.then.i

land.lhs.true.i.cleanup.critedge.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.critedge.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @clk_get_rate(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call3.i)
  %cmp5.i = icmp ugt i32 %call3.i, -2147483648
  br i1 %cmp5.i, label %if.then.i.cleanup_crit_edge, label %if.then210.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then210.i:                                     ; preds = %if.then.i
  %conv.i = zext i32 %call3.i to i64
  %add.i = add nuw nsw i64 %conv.i, 1000000
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add.i) #11, !srcloc !113
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add.i, i64 %6, i32 0) #11, !srcloc !114
  %asmresult10.i.i = extractvalue { i64, i32 } %7, 0
  %div1761.i = lshr i64 %asmresult10.i.i, 19
  %8 = trunc i64 %div1761.i to i32
  %conv200.i = add i32 %8, -1
  %slock.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call.i, i32 0, i32 20
  %call206.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #7
  %reg_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %dbclk_div_con.i = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %dbclk_div_con.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dbclk_div_con.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv200.i)
  %cmp214.i = icmp ult i32 %14, %conv200.i
  br i1 %cmp214.i, label %do.body217.i, label %if.then210.i.if.end223.i_crit_edge

if.then210.i.if.end223.i_crit_edge:               ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end223.i

do.body217.i:                                     ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv200.i) #7
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 4
  %18 = ptrtoint ptr %dbclk_div_con.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dbclk_div_con.i, align 4
  %add.ptr222.i = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222.i, i32 %15) #7, !srcloc !106
  br label %if.end223.i

if.end223.i:                                      ; preds = %do.body217.i, %if.then210.i.if.end223.i_crit_edge
  %dbclk_div_en.i = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %dbclk_div_en.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dbclk_div_en.i, align 4
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %21
  %24 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %25)
  %cmp.i3.i = icmp eq i32 %25, 16780331
  br i1 %cmp.i3.i, label %if.then.i.i, label %if.else9.i.i

if.then.i.i:                                      ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #9
  %rem4.i.i = and i32 %offset, 15
  %shl.i.i = shl nuw nsw i32 1, %rem4.i.i
  %add.i.i = or i32 %rem4.i.i, 16
  %shl3.i.i = shl nuw i32 1, %add.i.i
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp7.i.i = icmp ugt i32 %offset, 15
  %cond.idx.i.i = select i1 %cmp7.i.i, i32 4, i32 0
  %cond.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %cond.idx.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i, i32 %26) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit.i

if.else9.i.i:                                     ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !103
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %shl11.i.i = shl nuw i32 1, %offset
  %or15.i.i = or i32 %28, %shl11.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or15.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit.i

rockchip_gpio_writel_bit.exit.i:                  ; preds = %if.else9.i.i, %if.then.i.i
  %debounce225.c.i = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %debounce225.c.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debounce225.c.i, align 4
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %33, i32 %31
  %34 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %35)
  %cmp.i7.i = icmp eq i32 %35, 16780331
  br i1 %cmp.i7.i, label %if.then.i9.i, label %if.else9.i21.i

if.then.i9.i:                                     ; preds = %rockchip_gpio_writel_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %rem4.i8.i = and i32 %offset, 15
  %shl.i10.i = shl nuw nsw i32 1, %rem4.i8.i
  %add.i11.i = or i32 %rem4.i8.i, 16
  %shl3.i12.i = shl nuw i32 1, %add.i11.i
  %or.i13.i = or i32 %shl3.i12.i, %shl.i10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i13.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp7.i14.i = icmp ugt i32 %offset, 15
  %cond.idx.i15.i = select i1 %cmp7.i14.i, i32 4, i32 0
  %cond.i16.i = getelementptr i8, ptr %add.ptr.i5.i, i32 %cond.idx.i15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i16.i, i32 %36) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit22.i

if.else9.i21.i:                                   ; preds = %rockchip_gpio_writel_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #7, !srcloc !103
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %shl11.i17.i = shl nuw i32 1, %offset
  %or15.i20.i = or i32 %38, %shl11.i17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %or15.i20.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %39) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit22.i

rockchip_gpio_writel_bit.exit22.i:                ; preds = %if.else9.i21.i, %if.then.i9.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call206.i) #7
  %40 = ptrtoint ptr %db_clk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %db_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %rockchip_gpio_writel_bit.exit22.i.cleanup_crit_edge

rockchip_gpio_writel_bit.exit22.i.cleanup_crit_edge: ; preds = %rockchip_gpio_writel_bit.exit22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %rockchip_gpio_writel_bit.exit22.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then3.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %41) #7
  br label %cleanup

cleanup.critedge.i:                               ; preds = %land.lhs.true.i.cleanup.critedge.i_crit_edge, %sw.bb.cleanup.critedge.i_crit_edge
  %slock44.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call.i, i32 0, i32 20
  %call20645.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock44.i) #7
  %debounce225.c2.i = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %debounce225.c2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debounce225.c2.i, align 4
  %reg_base.i23.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %reg_base.i23.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i23.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %45, i32 %43
  %46 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %47)
  %cmp.i26.i = icmp eq i32 %47, 16780331
  br i1 %cmp.i26.i, label %if.then.i28.i, label %if.else9.i40.i

if.then.i28.i:                                    ; preds = %cleanup.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %rem4.i27.i = and i32 %offset, 15
  %shl.i29.i = shl nuw nsw i32 1, %rem4.i27.i
  %add.i30.i = or i32 %rem4.i27.i, 16
  %shl3.i31.i = shl nuw i32 1, %add.i30.i
  %or.i32.i = or i32 %shl3.i31.i, %shl.i29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i32.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp7.i33.i = icmp ugt i32 %offset, 15
  %cond.idx.i34.i = select i1 %cmp7.i33.i, i32 4, i32 0
  %cond.i35.i = getelementptr i8, ptr %add.ptr.i24.i, i32 %cond.idx.i34.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i35.i, i32 %48) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit41.i

if.else9.i40.i:                                   ; preds = %cleanup.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #7, !srcloc !103
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %shl11.i36.i = shl nuw i32 1, %offset
  %or15.i39.i = or i32 %50, %shl11.i36.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %or15.i39.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %51) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit41.i

rockchip_gpio_writel_bit.exit41.i:                ; preds = %if.else9.i40.i, %if.then.i28.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock44.i, i32 noundef %call20645.i) #7
  br label %cleanup

cleanup:                                          ; preds = %rockchip_gpio_writel_bit.exit41.i, %if.then3.i.i, %if.end.i.i.cleanup_crit_edge, %rockchip_gpio_writel_bit.exit22.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %domain = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %1, i32 noundef %offset, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool3.not, i32 -6, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_gpio_set_direction(ptr noundef %chip, i32 noundef %offset, i1 noundef zeroext %input) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %slock = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 20
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %gpio_regs = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_regs, align 4
  %port_ddr = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_ddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_ddr, align 4
  %reg_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %gpio_type.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %call, i32 0, i32 22
  %6 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %7)
  %cmp.i = icmp eq i32 %7, 16780331
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %entry
  %rem4.i = and i32 %offset, 15
  br i1 %input, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 1, %rem4.i
  %add.i = or i32 %rem4.i, 16
  %shl3.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl3.i, %shl.i
  br label %do.body.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add5.i = or i32 %rem4.i, 16
  %shl6.i = shl nuw i32 1, %add5.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then1.i
  %data.0.i = phi i32 [ %or.i, %if.then1.i ], [ %shl6.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %data.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp7.i = icmp ugt i32 %offset, 15
  %cond.idx.i = select i1 %cmp7.i, i32 4, i32 0
  %cond.i = getelementptr i8, ptr %add.ptr.i, i32 %cond.idx.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i, i32 %8) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit

if.else9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %shl11.i = shl nuw i32 1, %offset
  %neg.i = xor i32 %shl11.i, -1
  %and.i = and i32 %10, %neg.i
  %or15.i = or i32 %10, %shl11.i
  %spec.select.i = select i1 %input, i32 %and.i, i32 %or15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit

rockchip_gpio_writel_bit.exit:                    ; preds = %if.else9.i, %do.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_writel_v2(i32 noundef %val, ptr noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %or = or i32 %val, -65536
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %0) #7, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %shr = lshr i32 %val, 16
  %or3 = or i32 %shr, -65536
  %1 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %add.ptr = getelementptr i8, ptr %reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !106
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_readl_v2(ptr noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %reg, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %shl = shl i32 %1, 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #7, !srcloc !103
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %or = or i32 %3, %shl
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_irq_enable(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_gc_mask_clr_bit(ptr noundef %d) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_irq_disable(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_gc_mask_set_bit(ptr noundef %d) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_irq_suspend(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %gpio_regs = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_regs, align 4
  %int_mask = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_mask, align 4
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 %7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %9(ptr noundef %add.ptr3.i) #7
  br label %irq_reg_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !103
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %13, %if.else.i ]
  %saved_masks = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %saved_masks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %saved_masks, align 4
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wake_active, align 4
  %neg = xor i32 %16, -1
  %17 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_regs, align 4
  %int_mask3 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %int_mask3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %int_mask3, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i9 = icmp eq ptr %22, null
  br i1 %tobool.not.i9, label %do.body.i, label %if.then.i10

if.then.i10:                                      ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %20
  tail call void %22(i32 noundef %neg, ptr noundef %add.ptr.i) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %neg) #7
  %26 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i12 = getelementptr i8, ptr %27, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i12, i32 %25) #7, !srcloc !106
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_irq_resume(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %saved_masks = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %saved_masks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saved_masks, align 4
  %gpio_regs = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_regs, align 4
  %int_mask = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %int_mask, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %9
  tail call void %11(i32 noundef %5, ptr noundef %add.ptr.i) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %16, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #7, !srcloc !106
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  %slock = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 20
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %gpio_regs = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_regs, align 4
  %port_ddr = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port_ddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_ddr, align 4
  %reg_base.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %11
  %gpio_type.i = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 22
  %14 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %15)
  %cmp.i = icmp eq i32 %15, 16780331
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem4.i = and i32 %7, 15
  %add5.i = or i32 %rem4.i, 16
  %shl6.i = shl nuw i32 1, %add5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp7.i = icmp ugt i32 %7, 15
  %cond.idx.i = select i1 %cmp7.i, i32 4, i32 0
  %cond.i = getelementptr i8, ptr %add.ptr.i, i32 %cond.idx.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i, i32 %16) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit

if.else9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %shl11.i = shl nuw i32 1, %7
  %neg.i = xor i32 %shl11.i, -1
  %and.i = and i32 %18, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #7, !srcloc !106
  br label %rockchip_gpio_writel_bit.exit

rockchip_gpio_writel_bit.exit:                    ; preds = %if.else9.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call1) #7
  %and = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %common.i.i146 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %20 = ptrtoint ptr %common.i.i146 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %common.i.i146, align 4
  %handle_irq.i147 = getelementptr inbounds %struct.irq_desc, ptr %21, i32 0, i32 3
  %handle_level_irq.handle_edge_irq = select i1 %tobool.not, ptr @handle_level_irq, ptr @handle_edge_irq
  %22 = ptrtoint ptr %handle_irq.i147 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %handle_level_irq.handle_edge_irq, ptr %handle_irq.i147, align 4
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %23 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpio_regs, align 4
  %int_type = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %int_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %int_type, align 4
  %27 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %28, i32 %26
  %29 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %30)
  %cmp.i151 = icmp eq i32 %30, 16780331
  br i1 %cmp.i151, label %if.then.i152, label %if.else.i

if.then.i152:                                     ; preds = %rockchip_gpio_writel_bit.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i149, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !103
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %shl.i.i = shl i32 %32, 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #7, !srcloc !103
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %or.i.i = or i32 %34, %shl.i.i
  br label %rockchip_gpio_readl.exit

if.else.i:                                        ; preds = %rockchip_gpio_writel_bit.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #7, !srcloc !103
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  br label %rockchip_gpio_readl.exit

rockchip_gpio_readl.exit:                         ; preds = %if.else.i, %if.then.i152
  %value.0.i = phi i32 [ %or.i.i, %if.then.i152 ], [ %36, %if.else.i ]
  %37 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gpio_regs, align 4
  %int_polarity = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %int_polarity to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %int_polarity, align 4
  %41 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %42, i32 %40
  %43 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %44)
  %cmp.i156 = icmp eq i32 %44, 16780331
  br i1 %cmp.i156, label %if.then.i160, label %if.else.i161

if.then.i160:                                     ; preds = %rockchip_gpio_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i157 = getelementptr i8, ptr %add.ptr.i154, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i157) #7, !srcloc !103
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %shl.i.i158 = shl i32 %46, 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #7, !srcloc !103
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %or.i.i159 = or i32 %48, %shl.i.i158
  br label %rockchip_gpio_readl.exit163

if.else.i161:                                     ; preds = %rockchip_gpio_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #7, !srcloc !103
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  br label %rockchip_gpio_readl.exit163

rockchip_gpio_readl.exit163:                      ; preds = %if.else.i161, %if.then.i160
  %value.0.i162 = phi i32 [ %or.i.i159, %if.then.i160 ], [ %50, %if.else.i161 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp26 = icmp eq i32 %type, 3
  %51 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %52)
  %cmp29 = icmp eq i32 %52, 16780331
  br i1 %cmp26, label %if.then28, label %if.else48

if.then28:                                        ; preds = %rockchip_gpio_readl.exit163
  br i1 %cmp29, label %rockchip_gpio_writel_bit.exit178, label %if.else34

rockchip_gpio_writel_bit.exit178:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hwirq, align 4
  %55 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gpio_regs, align 4
  %int_bothedge = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %int_bothedge to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %int_bothedge, align 4
  %59 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %60, i32 %58
  %rem4.i168 = and i32 %54, 15
  %shl.i = shl nuw nsw i32 1, %rem4.i168
  %add.i = or i32 %rem4.i168, 16
  %shl3.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl3.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %54)
  %cmp7.i170 = icmp ugt i32 %54, 15
  %cond.idx.i171 = select i1 %cmp7.i170, i32 4, i32 0
  %cond.i172 = getelementptr i8, ptr %add.ptr.i165, i32 %cond.idx.i171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i172, i32 %61) #7, !srcloc !106
  br label %do.body81

if.else34:                                        ; preds = %if.then28
  %toggle_edge_mode = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 23
  %62 = ptrtoint ptr %toggle_edge_mode to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %toggle_edge_mode, align 4
  %or = or i32 %63, %shl
  store i32 %or, ptr %toggle_edge_mode, align 4
  %or35 = or i32 %value.0.i, %shl
  %64 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base.i, align 4
  %66 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gpio_regs, align 4
  %ext_port = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %ext_port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ext_port, align 4
  %add.ptr = getelementptr i8, ptr %65, i32 %69
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %and40 = and i32 %71, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %and43 = and i32 %value.0.i162, %neg
  br label %if.end76

if.else44:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  %or45 = or i32 %value.0.i162, %shl
  br label %if.end76

if.else48:                                        ; preds = %rockchip_gpio_readl.exit163
  br i1 %cmp29, label %rockchip_gpio_writel_bit.exit196, label %if.else56

rockchip_gpio_writel_bit.exit196:                 ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hwirq, align 4
  %74 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gpio_regs, align 4
  %int_bothedge55 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %int_bothedge55 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %int_bothedge55, align 4
  %78 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %79, i32 %77
  %rem4.i183 = and i32 %73, 15
  %add5.i185 = or i32 %rem4.i183, 16
  %shl6.i186 = shl nuw i32 1, %add5.i185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %shl6.i186) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %73)
  %cmp7.i188 = icmp ugt i32 %73, 15
  %cond.idx.i189 = select i1 %cmp7.i188, i32 4, i32 0
  %cond.i190 = getelementptr i8, ptr %add.ptr.i180, i32 %cond.idx.i189
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i190, i32 %80) #7, !srcloc !106
  br label %if.end60

if.else56:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  %neg57 = xor i32 %shl, -1
  %toggle_edge_mode58 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 23
  %81 = ptrtoint ptr %toggle_edge_mode58 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %toggle_edge_mode58, align 4
  %and59 = and i32 %82, %neg57
  store i32 %and59, ptr %toggle_edge_mode58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %rockchip_gpio_writel_bit.exit196
  %83 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end60.do.body81_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb63
    i32 4, label %sw.bb67
    i32 8, label %sw.bb71
  ]

if.end60.do.body81_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body81

sw.bb:                                            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %or61 = or i32 %value.0.i, %shl
  %or62 = or i32 %value.0.i162, %shl
  br label %if.end76

sw.bb63:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %or64 = or i32 %value.0.i, %shl
  %neg65 = xor i32 %shl, -1
  %and66 = and i32 %value.0.i162, %neg65
  br label %if.end76

sw.bb67:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %neg68 = xor i32 %shl, -1
  %and69 = and i32 %value.0.i, %neg68
  %or70 = or i32 %value.0.i162, %shl
  br label %if.end76

sw.bb71:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %neg72 = xor i32 %shl, -1
  %and73 = and i32 %value.0.i, %neg72
  %and75 = and i32 %value.0.i162, %neg72
  br label %if.end76

if.end76:                                         ; preds = %sw.bb71, %sw.bb67, %sw.bb63, %sw.bb, %if.else44, %if.then42
  %level.0 = phi i32 [ %or35, %if.then42 ], [ %or35, %if.else44 ], [ %and73, %sw.bb71 ], [ %and69, %sw.bb67 ], [ %or64, %sw.bb63 ], [ %or61, %sw.bb ]
  %polarity.0 = phi i32 [ %and43, %if.then42 ], [ %or45, %if.else44 ], [ %and75, %sw.bb71 ], [ %or70, %sw.bb67 ], [ %and66, %sw.bb63 ], [ %or62, %sw.bb ]
  %84 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gpio_regs, align 4
  %int_type78 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %int_type78 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %int_type78, align 4
  %88 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %89, i32 %87
  %90 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %91)
  %cmp.i200 = icmp eq i32 %91, 16780331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i200, label %if.then.i203, label %do.body.i

if.then.i203:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i201 = or i32 %level.0, -65536
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i.i201) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %92) #7, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %shr.i.i = lshr i32 %level.0, 16
  %or3.i.i = or i32 %shr.i.i, -65536
  %93 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i) #7
  %add.ptr.i.i202 = getelementptr i8, ptr %add.ptr.i198, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i202, i32 %93) #7, !srcloc !106
  br label %rockchip_gpio_writel.exit

do.body.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %94 = tail call i32 @llvm.bswap.i32(i32 %level.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %94) #7, !srcloc !106
  br label %rockchip_gpio_writel.exit

rockchip_gpio_writel.exit:                        ; preds = %do.body.i, %if.then.i203
  %95 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %gpio_regs, align 4
  %int_polarity80 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %int_polarity80 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %int_polarity80, align 4
  %99 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i205 = getelementptr i8, ptr %100, i32 %98
  %101 = ptrtoint ptr %gpio_type.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %gpio_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16780331, i32 %102)
  %cmp.i207 = icmp eq i32 %102, 16780331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i207, label %if.then.i212, label %do.body.i213

if.then.i212:                                     ; preds = %rockchip_gpio_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i208 = or i32 %polarity.0, -65536
  %103 = tail call i32 @llvm.bswap.i32(i32 %or.i.i208) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %103) #7, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %shr.i.i209 = lshr i32 %polarity.0, 16
  %or3.i.i210 = or i32 %shr.i.i209, -65536
  %104 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i210) #7
  %add.ptr.i.i211 = getelementptr i8, ptr %add.ptr.i205, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i211, i32 %104) #7, !srcloc !106
  br label %do.body81

do.body.i213:                                     ; preds = %rockchip_gpio_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %105 = tail call i32 @llvm.bswap.i32(i32 %polarity.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %105) #7, !srcloc !106
  br label %do.body81

do.body81:                                        ; preds = %do.body.i213, %if.then.i212, %if.end60.do.body81_crit_edge, %rockchip_gpio_writel_bit.exit178
  %ret.0 = phi i32 [ 0, %rockchip_gpio_writel_bit.exit178 ], [ -22, %if.end60.do.body81_crit_edge ], [ 0, %if.then.i212 ], [ 0, %do.body.i213 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call19) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_irq_reqres(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %gpio_chip = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 18
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %call1 = tail call i32 @gpiochip_reqres_irq(ptr noundef %gpio_chip, i32 noundef %5) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_irq_relres(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %gpio_chip = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 18
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %gpio_chip, i32 noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_irq_demux(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_irq_demux.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_irq_demux, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !124

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_irq_demux.__UNIQUE_ID_ddebug227, ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.chained_irq_enter.exit_crit_edge

do.end.chained_irq_enter.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %do.end
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %13(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %do.end.chained_irq_enter.exit_crit_edge
  %reg_base = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 4
  %gpio_regs = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 21
  %18 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio_regs, align 4
  %int_status = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %int_status, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %21
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.not152 = icmp eq i32 %22, 0
  br i1 %tobool8.not152, label %chained_irq_enter.exit.while.end_crit_edge, label %while.body.lr.ph

chained_irq_enter.exit.while.end_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %chained_irq_enter.exit
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %domain = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 17
  %toggle_edge_mode = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 23
  %slock = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pend.0153 = phi i32 [ %23, %while.body.lr.ph ], [ %and, %cleanup.while.body_crit_edge ]
  %24 = call i32 @llvm.cttz.i32(i32 %pend.0153, i1 true) #7, !range !125
  %shl = shl nuw i32 1, %24
  %neg = xor i32 %shl, -1
  %and = and i32 %pend.0153, %neg
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %irq.i, align 4, !annotation !126
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %26, i32 noundef %24, ptr noundef nonnull %irq.i) #7
  %tobool.not.i142 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i142, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  br label %do.end15

irq_find_mapping.exit:                            ; preds = %while.body
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool11.not = icmp eq i32 %29, 0
  br i1 %tobool11.not, label %irq_find_mapping.exit.do.end15_crit_edge, label %do.body18

irq_find_mapping.exit.do.end15_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end15:                                         ; preds = %irq_find_mapping.exit.do.end15_crit_edge, %irq_find_mapping.exit.thread
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.36, i32 noundef %24) #10
  br label %cleanup

do.body18:                                        ; preds = %irq_find_mapping.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_irq_demux.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_irq_demux, %do.end36)) #7
          to label %if.then32 [label %do.end36], !srcloc !124

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_irq_demux.__UNIQUE_ID_ddebug228, ptr noundef %33, ptr noundef nonnull @.str.37, i32 noundef %24) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body18
  %34 = ptrtoint ptr %toggle_edge_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %toggle_edge_mode, align 4
  %and38 = and i32 %35, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.end36.if.end99_crit_edge, label %if.then40

do.end36.if.end99_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then40:                                        ; preds = %do.end36
  %36 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base, align 4
  %38 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gpio_regs, align 4
  %ext_port = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %ext_port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ext_port, align 4
  %add.ptr44 = getelementptr i8, ptr %37, i32 %41
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #7, !srcloc !103
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  br label %do.body47

do.body47:                                        ; preds = %do.body47.do.body47_crit_edge, %if.then40
  %data.0 = phi i32 [ %43, %if.then40 ], [ %66, %do.body47.do.body47_crit_edge ]
  %call50 = call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %44 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base, align 4
  %46 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gpio_regs, align 4
  %int_polarity = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %int_polarity to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %int_polarity, align 4
  %add.ptr56 = getelementptr i8, ptr %45, i32 %49
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #7, !srcloc !103
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %and60 = and i32 %data.0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %and65 = and i32 %51, %neg
  %or = or i32 %51, %shl
  %polarity.0 = select i1 %tobool61.not, i32 %or, i32 %and65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  call void @arm_heavy_mb() #7
  %52 = call i32 @llvm.bswap.i32(i32 %polarity.0)
  %53 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base, align 4
  %55 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gpio_regs, align 4
  %int_polarity73 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %int_polarity73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %int_polarity73, align 4
  %add.ptr74 = getelementptr i8, ptr %54, i32 %58
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %52) #7, !srcloc !106
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call50) #7
  %59 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base, align 4
  %61 = ptrtoint ptr %gpio_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gpio_regs, align 4
  %ext_port87 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %ext_port87 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ext_port87, align 4
  %add.ptr88 = getelementptr i8, ptr %60, i32 %64
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #7, !srcloc !103
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %and93 = and i32 %66, %shl
  %cmp96.not = icmp eq i32 %and93, %and60
  br i1 %cmp96.not, label %do.body47.if.end99_crit_edge, label %do.body47.do.body47_crit_edge

do.body47.do.body47_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

do.body47.if.end99_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.end99:                                         ; preds = %do.body47.if.end99_crit_edge, %do.end36.if.end99_crit_edge
  %call100 = call i32 @generic_handle_irq(i32 noundef %29) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end15
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %chained_irq_enter.exit.while.end_crit_edge
  %67 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i145 = icmp eq ptr %68, null
  br i1 %tobool.not.i145, label %if.else.i146, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i146:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %69 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i146, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %70, %if.else.i146 ], [ %68, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_gpio_rockchip__230_799_rockchip_gpio_init2, !1, !"__initcall__kmod_gpio_rockchip__230_799_rockchip_gpio_init2", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-rockchip.c", i32 799, i32 1}
!2 = !{ptr @__exitcall_rockchip_gpio_exit, !3, !"__exitcall_rockchip_gpio_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-rockchip.c", i32 805, i32 1}
!4 = !{ptr @__UNIQUE_ID_description231, !5, !"__UNIQUE_ID_description231", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-rockchip.c", i32 807, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias232, !7, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-rockchip.c", i32 808, i32 1}
!8 = !{ptr @__UNIQUE_ID_file233, !9, !"__UNIQUE_ID_file233", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-rockchip.c", i32 809, i32 1}
!10 = !{ptr @__UNIQUE_ID_license234, !9, !"__UNIQUE_ID_license234", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-rockchip.c", i32 790, i32 11}
!13 = !{ptr @rockchip_gpio_driver, !14, !"rockchip_gpio_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-rockchip.c", i32 786, i32 31}
!15 = !{ptr @rockchip_gpio_probe.gpio, !16, !"gpio", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-rockchip.c", i32 710, i32 13}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-rockchip.c", i32 720, i32 27}
!19 = !{ptr @rockchip_gpio_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-rockchip.c", i32 731, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-rockchip.c", i32 757, i32 4}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rockchip_gpio_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rockchip_gpio_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-rockchip.c", i32 765, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rockchip_gpio_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rockchip_gpio_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-rockchip.c", i32 646, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rockchip_get_bank_data._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @rockchip_get_bank_data._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-rockchip.c", i32 671, i32 4}
!43 = !{ptr @rockchip_get_bank_data._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rockchip_get_bank_data._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @gpio_regs_v2, !46, !"gpio_regs_v2", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-rockchip.c", i32 44, i32 40}
!47 = !{ptr @gpio_regs_v1, !48, !"gpio_regs_v1", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-rockchip.c", i32 30, i32 40}
!49 = !{ptr @rockchip_gpiolib_register.lock_key, !50, !"lock_key", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-rockchip.c", i32 590, i32 8}
!51 = !{ptr @rockchip_gpiolib_register.request_key, !50, !"request_key", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-rockchip.c", i32 592, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rockchip_gpiolib_register._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rockchip_gpiolib_register._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-rockchip.c", i32 607, i32 44}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-rockchip.c", i32 621, i32 4}
!61 = !{ptr @rockchip_gpiolib_register._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rockchip_gpiolib_register._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-rockchip.c", i32 628, i32 3}
!65 = !{ptr @rockchip_gpiolib_register._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rockchip_gpiolib_register._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @rockchip_gpiolib_chip, !68, !"rockchip_gpiolib_chip", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-rockchip.c", i32 309, i32 31}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-rockchip.c", i32 522, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rockchip_interrupts_register._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @rockchip_interrupts_register._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpio/gpio-rockchip.c", i32 527, i32 8}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpio/gpio-rockchip.c", i32 532, i32 3}
!78 = !{ptr @rockchip_interrupts_register._entry.30, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rockchip_interrupts_register._entry_ptr.32, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpio/gpio-rockchip.c", i32 328, i32 2}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rockchip_irq_demux.__UNIQUE_ID_ddebug227, !81, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpio/gpio-rockchip.c", i32 342, i32 4}
!87 = !{ptr @rockchip_irq_demux._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rockchip_irq_demux._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpio/gpio-rockchip.c", i32 346, i32 3}
!91 = !{ptr @rockchip_irq_demux.__UNIQUE_ID_ddebug228, !90, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!92 = !{ptr @rockchip_gpio_match, !93, !"rockchip_gpio_match", i1 false, i1 false}
!93 = !{!"../drivers/gpio/gpio-rockchip.c", i32 780, i32 34}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 4889911}
!104 = !{i64 2154162718}
!105 = !{i64 2154123213}
!106 = !{i64 4889493}
!107 = !{i64 2154128167}
!108 = !{i64 2154128597}
!109 = !{i64 2154130143}
!110 = !{i64 2154126322}
!111 = !{i64 2154126940}
!112 = !{i64 2154127295}
!113 = !{i64 1163497, i64 1163524}
!114 = !{i64 1164192, i64 1164219, i64 1164252, i64 1164273, i64 1164300, i64 1164326}
!115 = !{i64 2154136915}
!116 = !{i64 2154137162}
!117 = !{i64 2154122753}
!118 = !{i64 2154124066}
!119 = !{i64 2154124496}
!120 = !{i64 2152891292}
!121 = !{i64 2152890422}
!122 = !{i64 2154125659}
!123 = !{i64 2154148300}
!124 = !{i64 2148740609, i64 2148740614, i64 2148740627, i64 2148740671, i64 2148740705, i64 2148740726}
!125 = !{i32 0, i32 33}
!126 = !{!"auto-init"}
!127 = !{i64 2154145850}
