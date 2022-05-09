; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-tegra.c_pt.bc'
source_filename = "../drivers/gpio/gpio-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tegra_gpio_soc_config = type { i8, i32, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.tegra_gpio_info = type { ptr, ptr, ptr, ptr, %struct.gpio_chip, %struct.irq_chip, i32, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tegra_gpio_bank = type { i32, [4 x %struct.raw_spinlock], [4 x %struct.spinlock], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_gpio_tegra__229_815_tegra_gpio_driver_init6 = internal global ptr @tegra_gpio_driver_init, section ".initcall6.init", align 4
@tegra_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_gpio_driver_exit = internal global ptr @tegra_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [59 x i8] c"gpio_tegra.description=NVIDIA Tegra GPIO controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [57 x i8] c"gpio_tegra.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [54 x i8] c"gpio_tegra.author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [54 x i8] c"gpio_tegra.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [52 x i8] c"gpio_tegra.author=Erik Gilling <konkers@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [40 x i8] c"gpio_tegra.file=drivers/gpio/gpio-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"gpio_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-gpio\00", [21 x i8] zeroinitializer }, align 32
@tegra_gpio_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_gpio_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_gpio_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_gpio_config }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tegra_gpio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gpio_suspend, ptr @tegra_gpio_resume, ptr @tegra_gpio_suspend, ptr @tegra_gpio_resume, ptr @tegra_gpio_suspend, ptr @tegra_gpio_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 679, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Missing IRQ resource\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_gpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpio/gpio-tegra.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_gpio_probe._entry_ptr = internal global ptr @tegra_gpio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@tegra_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&bank->lvl_lock[j]\00", [45 x i8] zeroinitializer }, align 32
@tegra_gpio_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&bank->dbc_lock[j]\00", [45 x i8] zeroinitializer }, align 32
@tegra_pmc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra_gpio_direction_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to set pinctrl input direction of GPIO %d: %d\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_gpio_direction_input\00", [37 x i8] zeroinitializer }, align 32
@tegra_gpio_direction_input._entry_ptr = internal global ptr @tegra_gpio_direction_input._entry, section ".printk_index", align 4
@tegra_gpio_direction_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to set pinctrl output direction of GPIO %d: %d\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_gpio_direction_output\00", [36 x i8] zeroinitializer }, align 32
@tegra_gpio_direction_output._entry_ptr = internal global ptr @tegra_gpio_direction_output._entry, section ".printk_index", align 4
@tegra_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to lock Tegra GPIO %u as IRQ\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_gpio_irq_set_type\00", [40 x i8] zeroinitializer }, align 32
@tegra_gpio_irq_set_type._entry_ptr = internal global ptr @tegra_gpio_irq_set_type._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_gpio_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tegra_gpio_irq_handler = private unnamed_addr constant [23 x i8] c"tegra_gpio_irq_handler\00", align 1
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hwirq = %d\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra_gpio\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%u:%u %02x %02x %02x %02x %02x %02x %06x\0A\00", [54 x i8] zeroinitializer }, align 32
@tegra210_gpio_config = internal constant { %struct.tegra_gpio_soc_config, [20 x i8] } { %struct.tegra_gpio_soc_config { i8 1, i32 256, i32 128 }, [20 x i8] zeroinitializer }, align 32
@tegra30_gpio_config = internal constant { %struct.tegra_gpio_soc_config, [20 x i8] } { %struct.tegra_gpio_soc_config { i8 0, i32 256, i32 128 }, [20 x i8] zeroinitializer }, align 32
@tegra20_gpio_config = internal constant { %struct.tegra_gpio_soc_config, [20 x i8] } { %struct.tegra_gpio_soc_config { i8 0, i32 128, i32 2048 }, [20 x i8] zeroinitializer }, align 32
@switch.table.tegra_gpio_irq_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 257, i32 256, i32 65792, i32 1, i32 257, i32 257, i32 257, i32 0], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"tegra_gpio_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 807, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 809, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"tegra_gpio_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 799, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"tegra_gpio_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 647, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 679, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 696, i32 19 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 734, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 735, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"tegra_pmc_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 651, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 774, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 184, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 204, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 353, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 426, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 635, i32 40 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 619, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"tegra210_gpio_config\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 793, i32 43 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"tegra30_gpio_config\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 788, i32 43 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"tegra20_gpio_config\00", align 1
@___asan_gen_.123 = private constant [29 x i8] c"../drivers/gpio/gpio-tegra.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 783, i32 43 }
@___asan_gen_.125 = private unnamed_addr constant [37 x i8] c"switch.table.tegra_gpio_irq_set_type\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_tegra_gpio_driver_exit, ptr @__initcall__kmod_gpio_tegra__229_815_tegra_gpio_driver_init6, ptr @tegra_gpio_direction_input._entry, ptr @tegra_gpio_direction_input._entry_ptr, ptr @tegra_gpio_direction_output._entry, ptr @tegra_gpio_direction_output._entry_ptr, ptr @tegra_gpio_driver_exit, ptr @tegra_gpio_irq_set_type._entry, ptr @tegra_gpio_irq_set_type._entry_ptr, ptr @tegra_gpio_probe._entry, ptr @tegra_gpio_probe._entry_ptr, ptr @tegra_gpio_driver, ptr @.str, ptr @tegra_gpio_of_match, ptr @tegra_gpio_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tegra_gpio_probe.__key, ptr @.str.7, ptr @tegra_gpio_probe.__key.8, ptr @.str.9, ptr @tegra_pmc_of_match, ptr @tegra_gpio_probe.lock_key, ptr @tegra_gpio_probe.request_key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @tegra_gpio_irq_handler._rs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @tegra210_gpio_config, ptr @tegra30_gpio_config, ptr @tegra20_gpio_config, ptr @switch.table.tegra_gpio_irq_set_type], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pmc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_direction_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_direction_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gpio_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_gpio_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_gpio_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_gpio_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_gpio_irq_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_gpio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_gpio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 508, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %soc, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %call5 = tail call i32 @platform_irq_count(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %bank_count = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %bank_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call5, ptr %bank_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool9.not = icmp eq i32 %call5, 0
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %gc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %gc, align 4
  %request = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tegra_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tegra_gpio_free, ptr %free, align 4
  %direction_input = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tegra_gpio_direction_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 10
  %7 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tegra_gpio_get, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 9
  %8 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tegra_gpio_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 12
  %9 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tegra_gpio_set, ptr %set, align 4
  %get_direction = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 7
  %10 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tegra_gpio_get_direction, ptr %get_direction, align 4
  %base = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 19
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %base, align 4
  %.tr = trunc i32 %call5 to i16
  %conv = shl i16 %.tr, 5
  %ngpio = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %ngpio, align 4
  %parent = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %parent, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %of_node27 = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 39
  %16 = ptrtoint ptr %of_node27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %of_node27, align 4
  %ic = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5
  %name = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.6, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 6
  %18 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tegra_gpio_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 7
  %19 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tegra_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 9
  %20 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tegra_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 13
  %21 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tegra_gpio_irq_set_type, ptr %irq_set_type, align 4
  %irq_shutdown = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %irq_shutdown to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tegra_gpio_irq_shutdown, ptr %irq_shutdown, align 4
  %irq_set_wake = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 14
  %23 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tegra_gpio_irq_set_wake, ptr %irq_set_wake, align 4
  %irq_request_resources = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 22
  %24 = ptrtoint ptr %irq_request_resources to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tegra_gpio_irq_request_resources, ptr %irq_request_resources, align 4
  %irq_release_resources = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 23
  %25 = ptrtoint ptr %irq_release_resources to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tegra_gpio_irq_release_resources, ptr %irq_release_resources, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool37.not = icmp eq i8 %30, 0
  br i1 %tobool37.not, label %if.end12.if.end40_crit_edge, label %if.then38

if.end12.if.end40_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %set_config = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 14
  %31 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tegra_gpio_set_config, ptr %set_config, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end12.if.end40_crit_edge
  %32 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bank_count, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 484) #7
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !85

devm_kcalloc.exit.thread:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %bank_info252 = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %bank_info252 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %bank_info252, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end40
  %37 = extractvalue { i32, i1 } %34, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %37, i32 noundef 3520) #7
  %bank_info = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %bank_info to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call5.i.i, ptr %bank_info, align 4
  %tobool45.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool45.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end47

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %devm_kcalloc.exit
  %39 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bank_count, align 4
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 4) #7
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %devm_kcalloc.exit248.thread, label %devm_kcalloc.exit248, !prof !85

devm_kcalloc.exit248.thread:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %irqs255 = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %irqs255 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %irqs255, align 4
  br label %cleanup

devm_kcalloc.exit248:                             ; preds = %if.end47
  %44 = extractvalue { i32, i1 } %41, 0
  %call5.i.i245 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %44, i32 noundef 3520) #7
  %irqs = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 7
  %45 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call5.i.i245, ptr %irqs, align 4
  %tobool52.not = icmp eq ptr %call5.i.i245, null
  br i1 %tobool52.not, label %devm_kcalloc.exit248.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit248.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit248
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit248
  %46 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bank_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp56259.not = icmp eq i32 %47, 0
  br i1 %cmp56259.not, label %for.cond.preheader.for.end82_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end82_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0260 = phi i32 [ %inc81, %if.end62.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call58 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0260) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %for.body.cleanup_crit_edge, label %if.end62

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %for.body
  %48 = ptrtoint ptr %bank_info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bank_info, align 4
  %arrayidx = getelementptr %struct.tegra_gpio_bank, ptr %49, i32 %i.0260
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %i.0260, ptr %arrayidx, align 4
  %51 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %irqs, align 4
  %arrayidx66 = getelementptr i32, ptr %52, i32 %i.0260
  %53 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call58, ptr %arrayidx66, align 4
  %arrayidx72 = getelementptr %struct.tegra_gpio_bank, ptr %49, i32 %i.0260, i32 1, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx72, ptr noundef nonnull @.str.7, ptr noundef nonnull @tegra_gpio_probe.__key, i16 noundef signext 2) #7
  %arrayidx76 = getelementptr %struct.tegra_gpio_bank, ptr %49, i32 %i.0260, i32 2, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx76, ptr noundef nonnull @.str.9, ptr noundef nonnull @tegra_gpio_probe.__key.8, i16 noundef signext 3) #7
  %arrayidx72.1 = getelementptr %struct.tegra_gpio_bank, ptr %49, i32 %i.0260, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx72.1, ptr noundef nonnull @.str.7, ptr noundef nonnull @tegra_gpio_probe.__key, i16 noundef signext 2) #7
  %arrayidx76.1 = getelementptr %struct.tegra_gpio_bank, ptr %49, i32 %i.0260, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx76.1, ptr noundef nonnull @.str.9, ptr noundef nonnull @tegra_gpio_probe.__key.8, i16 noundef signext 3) #7
  %arrayidx72.2 = getelementptr %struct.tegra_gpio_bank, ptr %49, i32 %i.0260, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx72.2, ptr noundef nonnull @.str.7, ptr noundef nonnull @tegra_gpio_probe.__key, i16 noundef signext 2) #7
  %arrayidx76.2 = getelementptr %struct.tegra_gpio_bank, ptr %49, i32 %i.0260, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx76.2, ptr noundef nonnull @.str.9, ptr noundef nonnull @tegra_gpio_probe.__key.8, i16 noundef signext 3) #7
  %arrayidx72.3 = getelementptr %struct.tegra_gpio_bank, ptr %49, i32 %i.0260, i32 1, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx72.3, ptr noundef nonnull @.str.7, ptr noundef nonnull @tegra_gpio_probe.__key, i16 noundef signext 2) #7
  %arrayidx76.3 = getelementptr %struct.tegra_gpio_bank, ptr %49, i32 %i.0260, i32 2, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx76.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @tegra_gpio_probe.__key.8, i16 noundef signext 3) #7
  %inc81 = add nuw i32 %i.0260, 1
  %54 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bank_count, align 4
  %cmp56 = icmp ult i32 %inc81, %55
  br i1 %cmp56, label %if.end62.for.body_crit_edge, label %if.end62.for.end82_crit_edge

if.end62.for.end82_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end82:                                        ; preds = %if.end62.for.end82_crit_edge, %for.cond.preheader.for.end82_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end82_crit_edge ], [ %55, %if.end62.for.end82_crit_edge ]
  %irq84 = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37
  %56 = ptrtoint ptr %irq84 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ic, ptr %irq84, align 4
  %57 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %58, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %58, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %fwnode.i
  %fwnode = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 3
  %59 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %spec.select.i, ptr %fwnode, align 4
  %child_to_parent_hwirq = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 5
  %60 = ptrtoint ptr %child_to_parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @tegra_gpio_child_to_parent_hwirq, ptr %child_to_parent_hwirq, align 4
  %populate_parent_alloc_arg = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 6
  %61 = ptrtoint ptr %populate_parent_alloc_arg to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @tegra_gpio_populate_parent_fwspec, ptr %populate_parent_alloc_arg, align 4
  %handler = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 9
  %62 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @handle_simple_irq, ptr %handler, align 4
  %default_type = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 10
  %63 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %default_type, align 4
  %parent_handler = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 13
  %64 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @tegra_gpio_irq_handler, ptr %parent_handler, align 4
  %65 = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 14
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %65, align 4
  %num_parents = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 15
  %67 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.lcssa, ptr %num_parents, align 4
  %68 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %irqs, align 4
  %parents = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 16
  %70 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %parents, align 4
  %call.i249 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_pmc_of_match, ptr noundef null) #7
  %tobool92.not = icmp eq ptr %call.i249, null
  br i1 %tobool92.not, label %for.end82.if.end100_crit_edge, label %if.then93

for.end82.if.end100_crit_edge:                    ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then93:                                        ; preds = %for.end82
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i249, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %71 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %72 = call ptr @memset(ptr %71, i32 0, i32 68)
  %73 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %tobool.not.i250 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i250, label %if.then.i, label %if.then93.irq_find_host.exit_crit_edge

if.then93.irq_find_host.exit_crit_edge:           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_host.exit

if.then.i:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %74 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %75 = call ptr @memset(ptr %74, i32 0, i32 68)
  %76 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  br label %irq_find_host.exit

irq_find_host.exit:                               ; preds = %if.then.i, %if.then93.irq_find_host.exit_crit_edge
  %d.0.i = phi ptr [ %call.i.i.i, %if.then93.irq_find_host.exit_crit_edge ], [ %call.i.i8.i, %if.then.i ]
  %parent_domain = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 4, i32 37, i32 4
  %77 = ptrtoint ptr %parent_domain to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %d.0.i, ptr %parent_domain, align 4
  call void @of_node_put(ptr noundef nonnull %call.i249) #7
  %78 = ptrtoint ptr %parent_domain to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent_domain, align 4
  %tobool96.not = icmp eq ptr %79, null
  br i1 %tobool96.not, label %irq_find_host.exit.cleanup_crit_edge, label %if.end98

irq_find_host.exit.cleanup_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end98:                                         ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq_set_affinity = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 5, i32 11
  %80 = ptrtoint ptr %irq_set_affinity to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @tegra_gpio_irq_set_affinity, ptr %irq_set_affinity, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.end98, %for.end82.if.end100_crit_edge
  %call101 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 1
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call101, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then104, label %for.cond108.preheader

for.cond108.preheader:                            ; preds = %if.end100
  %82 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bank_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp110262.not = icmp eq i32 %83, 0
  br i1 %cmp110262.not, label %for.cond108.preheader.for.end128_crit_edge, label %for.cond108.preheader.for.cond113.preheader_crit_edge

for.cond108.preheader.for.cond113.preheader_crit_edge: ; preds = %for.cond108.preheader
  br label %for.cond113.preheader

for.cond108.preheader.for.end128_crit_edge:       ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end128

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %call101 to i32
  br label %cleanup

for.cond113.preheader:                            ; preds = %for.cond113.preheader.for.cond113.preheader_crit_edge, %for.cond108.preheader.for.cond113.preheader_crit_edge
  %i.1263 = phi i32 [ %inc127, %for.cond113.preheader.for.cond113.preheader_crit_edge ], [ 0, %for.cond108.preheader.for.cond113.preheader_crit_edge ]
  %shl.i = shl i32 %i.1263, 5
  %shr = ashr exact i32 %shl.i, 5
  %85 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bank_stride, align 4
  %mul119 = mul i32 %88, %shr
  %add122 = add i32 %mul119, 80
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %90, i32 %add122
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !86
  %91 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %soc, align 4
  %bank_stride.1 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %bank_stride.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bank_stride.1, align 4
  %mul119.1 = mul i32 %94, %shr
  %add122.1 = add i32 %mul119.1, 84
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %96, i32 %add122.1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 0) #7, !srcloc !86
  %97 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %soc, align 4
  %bank_stride.2 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %bank_stride.2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bank_stride.2, align 4
  %mul119.2 = mul i32 %100, %shr
  %add122.2 = add i32 %mul119.2, 88
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %102, i32 %add122.2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #7, !srcloc !86
  %103 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %soc, align 4
  %bank_stride.3 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %bank_stride.3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bank_stride.3, align 4
  %mul119.3 = mul i32 %106, %shr
  %add122.3 = add i32 %mul119.3, 92
  %107 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %108, i32 %add122.3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 0) #7, !srcloc !86
  %inc127 = add nuw i32 %i.1263, 1
  %109 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bank_count, align 4
  %cmp110 = icmp ult i32 %inc127, %110
  br i1 %cmp110, label %for.cond113.preheader.for.cond113.preheader_crit_edge, label %for.cond113.preheader.for.end128_crit_edge

for.cond113.preheader.for.end128_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end128

for.cond113.preheader.for.cond113.preheader_crit_edge: ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond113.preheader

for.end128:                                       ; preds = %for.cond113.preheader.for.end128_crit_edge, %for.cond108.preheader.for.end128_crit_edge
  %call131 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @tegra_gpio_probe.lock_key, ptr noundef nonnull @tegra_gpio_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %for.end128.cleanup_crit_edge, label %if.end135

for.end128.cleanup_crit_edge:                     ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end135:                                        ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call.i, align 4
  call void @debugfs_create_devm_seqfile(ptr noundef %112, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef nonnull @tegra_dbg_gpio_show) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %for.end128.cleanup_crit_edge, %if.then104, %irq_find_host.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %devm_kcalloc.exit248.cleanup_crit_edge, %devm_kcalloc.exit248.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %84, %if.then104 ], [ 0, %if.end135 ], [ -19, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit248.cleanup_crit_edge ], [ -517, %irq_find_host.exit.cleanup_crit_edge ], [ %call131, %for.end128.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit248.thread ], [ %call58, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_request(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_request(i32 noundef %add) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gpio_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  tail call void @pinctrl_gpio_free(i32 noundef %add) #7
  %shr.i = lshr i32 %offset, 5
  %soc.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc.i, align 4
  %bank_stride.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bank_stride.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_stride.i, align 4
  %mul.i = mul i32 %5, %shr.i
  %6 = lshr i32 %offset, 1
  %mul2.i = and i32 %6, 12
  %add.i = add i32 %mul.i, %mul2.i
  %upper_offset.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %upper_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %upper_offset.i, align 4
  %add4.i = add i32 %add.i, %8
  %and.i.i = and i32 %offset, 7
  %9 = shl nuw nsw i32 65536, %and.i.i
  %regs.i.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %9) #7, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %shr = lshr i32 %offset, 5
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %3, %shr
  %4 = lshr i32 %offset, 1
  %mul2 = and i32 %4, 12
  %upper_offset = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %upper_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %upper_offset, align 4
  %add = or i32 %mul2, 16
  %add4 = add i32 %add, %mul
  %add5 = add i32 %add4, %6
  %and.i = and i32 %offset, 7
  %7 = shl nuw nsw i32 65536, %and.i
  %regs.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #7, !srcloc !86
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %bank_stride.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bank_stride.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank_stride.i, align 4
  %mul.i = mul i32 %13, %shr
  %add.i = add i32 %mul.i, %mul2
  %upper_offset.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %upper_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %upper_offset.i, align 4
  %add4.i = add i32 %add.i, %15
  %val.0.i.i = shl nuw nsw i32 257, %and.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #7
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %16) #7, !srcloc !86
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base, align 4
  %add6 = add i32 %20, %offset
  %call7 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base, align 4
  %add9 = add i32 %24, %offset
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef %add9, i32 noundef %call7) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %and = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %and
  %shr = lshr i32 %offset, 5
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %3, %shr
  %4 = lshr i32 %offset, 1
  %mul3 = and i32 %4, 12
  %add = or i32 %mul3, 16
  %add4 = add i32 %add, %mul
  %regs.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !87
  %8 = lshr i32 %7, 24
  %and6 = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %9 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %soc, align 4
  %bank_stride22 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bank_stride22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bank_stride22, align 4
  %mul23 = mul i32 %12, %shr
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add14 = or i32 %mul3, 32
  %add15 = add i32 %add14, %mul23
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %14, i32 %add15
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #7, !srcloc !87
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add27 = or i32 %mul3, 48
  %add28 = add i32 %add27, %mul23
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %17, i32 %add28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #7, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %.sink = phi i32 [ %18, %if.end ], [ %15, %if.then ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %.sink) #7
  %retval.0.in = lshr i32 %19, %and
  %retval.0 = and i32 %retval.0.in, 1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %shr.i = lshr i32 %offset, 5
  %soc.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %bank_stride.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bank_stride.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_stride.i, align 4
  %mul.i = mul i32 %3, %shr.i
  %4 = lshr i32 %offset, 1
  %mul2.i = and i32 %4, 12
  %upper_offset.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %upper_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %upper_offset.i, align 4
  %add.i = or i32 %mul2.i, 32
  %add4.i = add i32 %add.i, %mul.i
  %add5.i = add i32 %add4.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i.i = icmp eq i32 %value, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 256, i32 257
  %and.i.i = and i32 %offset, 7
  %val.0.i.i = shl nuw nsw i32 %spec.select.i.i, %and.i.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #7
  %regs.i.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %add5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %7) #7, !srcloc !86
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %13, %shr.i
  %upper_offset = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %upper_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %upper_offset, align 4
  %add = or i32 %mul2.i, 16
  %add4 = add i32 %add, %mul
  %add5 = add i32 %add4, %15
  %val.0.i = shl nuw nsw i32 257, %and.i.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  %regs.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #7, !srcloc !86
  %19 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc, align 4
  %bank_stride.i27 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bank_stride.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bank_stride.i27, align 4
  %mul.i28 = mul i32 %22, %shr.i
  %add.i30 = add i32 %mul.i28, %mul2.i
  %upper_offset.i31 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %upper_offset.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %upper_offset.i31, align 4
  %add4.i32 = add i32 %add.i30, %24
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i36 = getelementptr i8, ptr %26, i32 %add4.i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i36, i32 %16) #7, !srcloc !86
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base, align 4
  %add6 = add i32 %28, %offset
  %call7 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call, align 4
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base, align 4
  %add9 = add i32 %32, %offset
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %add9, i32 noundef %call7) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %shr = lshr i32 %offset, 5
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %3, %shr
  %4 = lshr i32 %offset, 1
  %mul2 = and i32 %4, 12
  %upper_offset = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %upper_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %upper_offset, align 4
  %add = or i32 %mul2, 32
  %add4 = add i32 %add, %mul
  %add5 = add i32 %add4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %spec.select.i = select i1 %tobool.not.i, i32 256, i32 257
  %and.i = and i32 %offset, 7
  %val.0.i = shl nuw nsw i32 %spec.select.i, %and.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  %regs.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #7, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %and = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %and
  %shr = lshr i32 %offset, 5
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %3, %shr
  %4 = lshr i32 %offset, 1
  %mul3 = and i32 %4, 12
  %add = add i32 %mul, %mul3
  %regs.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !87
  %8 = lshr i32 %7, 24
  %and6 = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %soc, align 4
  %bank_stride9 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bank_stride9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bank_stride9, align 4
  %mul10 = mul i32 %12, %shr
  %add14 = or i32 %mul3, 16
  %add15 = add i32 %add14, %mul10
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %14, i32 %add15
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #7, !srcloc !87
  %16 = lshr i32 %15, 24
  %17 = xor i32 %16, -1
  %18 = lshr i32 %17, %and
  %19 = and i32 %18, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %19, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 7
  %shr = lshr i32 %3, 5
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %7, %shr
  %8 = lshr i32 %3, 1
  %mul4 = and i32 %8, 12
  %add = or i32 %mul4, 112
  %add5 = add i32 %add, %mul
  %9 = shl nuw i32 16777216, %and
  %regs.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shr = lshr i32 %3, 5
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %7, %shr
  %8 = lshr i32 %3, 1
  %mul3 = and i32 %8, 12
  %upper_offset = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %upper_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %upper_offset, align 4
  %add = or i32 %mul3, 80
  %add5 = add i32 %add, %mul
  %add6 = add i32 %add5, %10
  %and.i = and i32 %3, 7
  %11 = shl nuw nsw i32 65536, %and.i
  %regs.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #7, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shr = lshr i32 %3, 5
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %7, %shr
  %8 = lshr i32 %3, 1
  %mul3 = and i32 %8, 12
  %upper_offset = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %upper_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %upper_offset, align 4
  %add = or i32 %mul3, 80
  %add5 = add i32 %add, %mul
  %add6 = add i32 %add5, %10
  %and.i = and i32 %3, 7
  %val.0.i = shl nuw nsw i32 257, %and.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  %regs.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #7, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_irq_set_type(ptr noundef %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %shr = lshr i32 %1, 3
  %and = and i32 %shr, 3
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %3) #7
  %bank_info = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %bank_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bank_info, align 4
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %shr3 = lshr i32 %7, 5
  %and4 = and i32 %type, 15
  %switch.tableidx = add nsw i32 %and4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 8
  br i1 %8, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.tegra_gpio_irq_set_type, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx9 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %shr3, i32 1, i32 %and
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx9) #7
  %shr11 = lshr i32 %1, 5
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 3
  %11 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %14, %shr11
  %mul14 = shl nuw nsw i32 %and, 2
  %add = or i32 %mul14, 96
  %add15 = add i32 %add, %mul
  %regs.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !87
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %and17 = and i32 %1, 7
  %shl = shl nuw nsw i32 65793, %and17
  %neg = xor i32 %shl, -1
  %and18 = and i32 %18, %neg
  %shl20 = shl nuw nsw i32 %switch.load, %and17
  %or = or i32 %and18, %shl20
  %19 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc, align 4
  %bank_stride23 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bank_stride23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bank_stride23, align 4
  %mul24 = mul i32 %22, %shr11
  %add29 = add i32 %add, %mul24
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %25, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %23) #7, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx9, i32 noundef %call10) #7
  %26 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %soc, align 4
  %bank_stride42 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %bank_stride42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bank_stride42, align 4
  %mul43 = mul i32 %29, %shr11
  %upper_offset = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %upper_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %upper_offset, align 4
  %add47 = or i32 %mul14, 16
  %add49 = add i32 %add47, %mul43
  %add50 = add i32 %add49, %31
  %32 = shl nuw nsw i32 65536, %and17
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %add50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %32) #7, !srcloc !86
  %35 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soc, align 4
  %bank_stride.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %bank_stride.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bank_stride.i, align 4
  %mul.i = mul i32 %38, %shr11
  %39 = lshr i32 %1, 1
  %mul2.i = and i32 %39, 12
  %add.i = add i32 %mul.i, %mul2.i
  %upper_offset.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %36, i32 0, i32 2
  %40 = ptrtoint ptr %upper_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %upper_offset.i, align 4
  %add4.i = add i32 %add.i, %41
  %val.0.i.i = shl nuw nsw i32 257, %and17
  %42 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #7
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %42) #7, !srcloc !86
  %gc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 4
  %call51 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %gc, i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool.not = icmp eq i32 %call51, 0
  br i1 %tobool.not, label %if.end, label %do.end54

do.end54:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.14, i32 noundef %1) #10
  %47 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %soc, align 4
  %bank_stride.i118 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bank_stride.i118 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bank_stride.i118, align 4
  %mul.i119 = mul i32 %50, %shr11
  %add.i121 = add i32 %mul.i119, %mul2.i
  %upper_offset.i122 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %upper_offset.i122 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %upper_offset.i122, align 4
  %add4.i123 = add i32 %add.i121, %52
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i126 = getelementptr i8, ptr %54, i32 %add4.i123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i126, i32 %32) #7, !srcloc !86
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %and55 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else, label %if.end.if.end62.sink.split_crit_edge

if.end.if.end62.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.sink.split

if.else:                                          ; preds = %if.end
  %and58 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else.if.end62_crit_edge, label %if.else.if.end62.sink.split_crit_edge

if.else.if.end62.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.sink.split

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end62.sink.split:                              ; preds = %if.else.if.end62.sink.split_crit_edge, %if.end.if.end62.sink.split_crit_edge
  %handle_edge_irq.sink = phi ptr [ @handle_level_irq, %if.end.if.end62.sink.split_crit_edge ], [ @handle_edge_irq, %if.else.if.end62.sink.split_crit_edge ]
  %common.i.i127 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %55 = ptrtoint ptr %common.i.i127 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %common.i.i127, align 4
  %handle_irq.i128 = getelementptr inbounds %struct.irq_desc, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %handle_irq.i128 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %handle_edge_irq.sink, ptr %handle_irq.i128, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.else.if.end62_crit_edge
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %58 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent_data, align 4
  %tobool63.not = icmp eq ptr %59, null
  br i1 %tobool63.not, label %if.end62.cleanup_crit_edge, label %if.then64

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call i32 @irq_chip_set_type_parent(ptr noundef %d, i32 noundef %type) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end62.cleanup_crit_edge, %do.end54, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %do.end54 ], [ -22, %entry.cleanup_crit_edge ], [ %call65, %if.then64 ], [ 0, %if.end62.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_shutdown(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %5) #7
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %shr.i = lshr i32 %7, 5
  %soc.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1.i, i32 0, i32 3
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %bank_stride.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bank_stride.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank_stride.i, align 4
  %mul.i = mul i32 %11, %shr.i
  %12 = lshr i32 %7, 1
  %mul3.i = and i32 %12, 12
  %upper_offset.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %upper_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %upper_offset.i, align 4
  %add.i = or i32 %mul3.i, 80
  %add5.i = add i32 %add.i, %mul.i
  %add6.i = add i32 %add5.i, %14
  %and.i.i = and i32 %7, 7
  %15 = shl nuw nsw i32 65536, %and.i.i
  %regs.i.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1.i, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %15) #7, !srcloc !86
  %gc = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gc, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_irq_set_wake(ptr noundef %d, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %bank_info = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %bank_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bank_info, align 4
  %shr = lshr i32 %3, 5
  %arrayidx = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %shr
  %shr3 = lshr i32 %3, 3
  %and = and i32 %shr3, 3
  %and4 = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %and4
  %irqs = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irqs, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef %enable) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %12 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent_data, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end.if.end19_crit_edge, label %if.then9

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 @irq_chip_set_wake_parent(ptr noundef %d, i32 noundef %enable) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end19_crit_edge, label %if.then12

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irqs, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %arrayidx15 = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool16.not = icmp eq i32 %enable, 0
  %lnot.ext = zext i1 %tobool16.not to i32
  %call17 = tail call i32 @irq_set_irq_wake(i32 noundef %19, i32 noundef %lnot.ext) #7
  br label %cleanup

if.end19:                                         ; preds = %if.then9.if.end19_crit_edge, %if.end.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool20.not = icmp eq i32 %enable, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %shr, i32 8, i32 %and
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx22, align 4
  %or = or i32 %21, %shl
  store i32 %or, ptr %arrayidx22, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %arrayidx24 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %shr, i32 8, i32 %and
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24, align 4
  %and25 = and i32 %23, %neg
  store i32 %and25, ptr %arrayidx24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ %call7, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_irq_request_resources(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shr.i = lshr i32 %3, 5
  %soc.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i, align 4
  %bank_stride.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bank_stride.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bank_stride.i, align 4
  %mul.i = mul i32 %7, %shr.i
  %8 = lshr i32 %3, 1
  %mul2.i = and i32 %8, 12
  %add.i = add i32 %mul.i, %mul2.i
  %upper_offset.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %upper_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %upper_offset.i, align 4
  %add4.i = add i32 %add.i, %10
  %and.i.i = and i32 %3, 7
  %val.0.i.i = shl nuw nsw i32 257, %and.i.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #7
  %regs.i.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %11) #7, !srcloc !86
  %14 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwirq, align 4
  %call3 = tail call i32 @gpiochip_reqres_irq(ptr noundef %1, i32 noundef %15) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_release_resources(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %1, i32 noundef %3) #7
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shr.i = lshr i32 %5, 5
  %soc.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 3
  %6 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc.i, align 4
  %bank_stride.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bank_stride.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank_stride.i, align 4
  %mul.i = mul i32 %9, %shr.i
  %10 = lshr i32 %5, 1
  %mul2.i = and i32 %10, 12
  %add.i = add i32 %mul.i, %mul2.i
  %upper_offset.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %upper_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %upper_offset.i, align 4
  %add4.i = add i32 %add.i, %12
  %and.i.i = and i32 %5, 7
  %val.0.i.i = shl nuw nsw i32 257, %and.i.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #7
  %regs.i.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #7, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
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
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %shr.i4 = lshr i32 %offset, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %0 = icmp ult i32 %config, 256
  br i1 %0, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %soc.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soc.i, align 4
  %bank_stride.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bank_stride.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bank_stride.i, align 4
  %mul.i = mul i32 %4, %shr.i4
  %5 = lshr i32 %offset, 1
  %mul3.i = and i32 %5, 12
  %upper_offset.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %upper_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %upper_offset.i, align 4
  %add4.i = or i32 %mul3.i, 48
  %add6.i = add i32 %add4.i, %mul.i
  %add7.i = add i32 %add6.i, %7
  %and.i.i = and i32 %offset, 7
  %8 = shl nuw nsw i32 65536, %and.i.i
  %regs.i.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %8) #7, !srcloc !86
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %shr.i = lshr i32 %config, 8
  %sub.i = add nuw nsw i32 %shr.i, 999
  %div.i = udiv i32 %sub.i, 1000
  %bank_info.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %bank_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bank_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65024256, i32 %config)
  %cmp.i = icmp ult i32 %config, 65024256
  %div..i = select i1 %cmp.i, i32 %div.i, i32 255
  %shr8.i = lshr i32 %offset, 3
  %and9.i = and i32 %shr8.i, 3
  %arrayidx13.i = getelementptr %struct.tegra_gpio_bank, ptr %12, i32 %shr.i4, i32 2, i32 %and9.i
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx13.i) #7
  %arrayidx18.i = getelementptr %struct.tegra_gpio_bank, ptr %12, i32 %shr.i4, i32 10, i32 %and9.i
  %13 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div..i)
  %cmp19.i = icmp ult i32 %14, %div..i
  br i1 %cmp19.i, label %if.then21.i, label %if.end.if.end33_crit_edge.i

if.end.if.end33_crit_edge.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = shl nuw nsw i32 %and9.i, 2
  br label %if.end33.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %soc23.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %soc23.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc23.i, align 4
  %bank_stride24.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %bank_stride24.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bank_stride24.i, align 4
  %mul25.i = mul i32 %18, %shr.i4
  %mul28.i = shl nuw nsw i32 %and9.i, 2
  %add29.i = or i32 %mul28.i, 240
  %add30.i = add i32 %add29.i, %mul25.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %div..i) #7
  %regs.i.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %add30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #7, !srcloc !86
  %22 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div..i, ptr %arrayidx18.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then21.i, %if.end.if.end33_crit_edge.i
  %mul42.pre-phi.i = phi i32 [ %.pre.i, %if.end.if.end33_crit_edge.i ], [ %mul28.i, %if.then21.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx13.i, i32 noundef %call15.i) #7
  %soc37.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %soc37.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc37.i, align 4
  %bank_stride38.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %bank_stride38.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bank_stride38.i, align 4
  %mul39.i = mul i32 %26, %shr.i4
  %upper_offset45.i = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %upper_offset45.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %upper_offset45.i, align 4
  %add43.i = or i32 %mul42.pre-phi.i, 48
  %add46.i = add i32 %mul39.i, %add43.i
  %add47.i = add i32 %add46.i, %28
  %and.i1.i = and i32 %offset, 7
  %val.0.i2.i = shl nuw nsw i32 257, %and.i1.i
  %29 = tail call i32 @llvm.bswap.i32(i32 %val.0.i2.i) #7
  %regs.i.i3.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %regs.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i3.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %31, i32 %add47.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 %29) #7, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %if.end33.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end33.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_child_to_parent_hwirq(ptr noundef %chip, i32 noundef %hwirq, i32 noundef %type, ptr nocapture noundef writeonly %parent_hwirq, ptr nocapture noundef writeonly %parent_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %child_offset_to_irq = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 37, i32 7
  %0 = ptrtoint ptr %child_offset_to_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child_offset_to_irq, align 4
  %call = tail call i32 %1(ptr noundef %chip, i32 noundef %hwirq) #7
  %2 = ptrtoint ptr %parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %parent_hwirq, align 4
  %3 = ptrtoint ptr %parent_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %parent_type, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @tegra_gpio_populate_parent_fwspec(ptr nocapture noundef readonly %chip, i32 noundef %parent_hwirq, i32 noundef %parent_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 72) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %param, align 8
  %arrayidx3 = getelementptr %struct.irq_fwspec, ptr %call7.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %parent_hwirq, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.irq_fwspec, ptr %call7.i, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %parent_type, ptr %arrayidx5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %sta = alloca i32, align 4
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
  %domain2 = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 4, i32 37, i32 1
  %4 = ptrtoint ptr %domain2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain2, align 4
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sta) #7
  %8 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %sta, align 4, !annotation !88
  %bank_count = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bank_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp220.not = icmp eq i32 %10, 0
  br i1 %cmp220.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %irqs = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irqs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %12, i32 %i.0221
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %7)
  %cmp5 = icmp eq i32 %14, %7
  br i1 %cmp5, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0221, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.end:                                          ; preds = %for.body
  %bank_info = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %bank_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bank_info, align 4
  %arrayidx6 = getelementptr %struct.tegra_gpio_bank, ptr %16, i32 %i.0221
  %cmp7 = icmp eq ptr %arrayidx6, null
  br i1 %cmp7, label %for.end.do.end_crit_edge, label %if.end30, !prof !85

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 399, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end30:                                         ; preds = %for.end
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.chained_irq_enter.exit_crit_edge

if.end30.chained_irq_enter.exit_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %if.end30
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %20(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %22(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %24, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %24(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %if.end30.chained_irq_enter.exit_crit_edge
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 3
  %regs.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 1
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  br label %for.body33

for.body33:                                       ; preds = %for.inc135.for.body33_crit_edge, %chained_irq_enter.exit
  %unmasked.0.off0226 = phi i1 [ false, %chained_irq_enter.exit ], [ %unmasked.1.off0.lcssa, %for.inc135.for.body33_crit_edge ]
  %port.0225 = phi i32 [ 0, %chained_irq_enter.exit ], [ %inc136, %for.inc135.for.body33_crit_edge ]
  %25 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6, align 4
  %shl.i = shl i32 %26, 5
  %and.i = shl nuw nsw i32 %port.0225, 3
  %or.i = or i32 %shl.i, %and.i
  %shr = and i32 %26, 134217727
  %27 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %30, %shr
  %31 = shl nuw i32 %port.0225, 2
  %add = or i32 %31, 64
  %add38 = add i32 %add, %mul
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 %add38
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !87
  %35 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soc, align 4
  %bank_stride42 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %bank_stride42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bank_stride42, align 4
  %mul43 = mul i32 %38, %shr
  %add47 = or i32 %31, 80
  %add48 = add i32 %add47, %mul43
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %40, i32 %add48
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #7, !srcloc !87
  %42 = and i32 %41, %34
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sta, align 4
  %45 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %soc, align 4
  %bank_stride53 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %bank_stride53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bank_stride53, align 4
  %mul54 = mul i32 %48, %shr
  %add58 = or i32 %31, 96
  %add59 = add i32 %add58, %mul54
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %50, i32 %add59
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #7, !srcloc !87
  %52 = call i32 @llvm.bswap.i32(i32 %51) #7
  %call61 = call i32 @_find_next_bit_be(ptr noundef nonnull %sta, i32 noundef 8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call61)
  %cmp63222 = icmp ult i32 %call61, 8
  br i1 %cmp63222, label %for.body64.lr.ph, label %for.body33.for.inc135_crit_edge

for.body33.for.inc135_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc135

for.body64.lr.ph:                                 ; preds = %for.body33
  %add72 = or i32 %31, 112
  br label %for.body64

for.body64:                                       ; preds = %if.end129.for.body64_crit_edge, %for.body64.lr.ph
  %unmasked.1.off0224 = phi i1 [ %unmasked.0.off0226, %for.body64.lr.ph ], [ %unmasked.2.off0, %if.end129.for.body64_crit_edge ]
  %pin.0223 = phi i32 [ %call61, %for.body64.lr.ph ], [ %call133, %if.end129.for.body64_crit_edge ]
  %shl = shl nuw nsw i32 1, %pin.0223
  %53 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %soc, align 4
  %bank_stride67 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %bank_stride67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bank_stride67, align 4
  %mul68 = mul i32 %56, %shr
  %add73 = add i32 %add72, %mul68
  %57 = call i32 @llvm.bswap.i32(i32 %shl) #7
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.i204 = getelementptr i8, ptr %59, i32 %add73
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %57) #7, !srcloc !86
  br i1 %unmasked.1.off0224, label %for.body64.if.end79_crit_edge, label %land.lhs.true

for.body64.if.end79_crit_edge:                    ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

land.lhs.true:                                    ; preds = %for.body64
  %shl75 = shl nuw nsw i32 256, %pin.0223
  %and76 = and i32 %shl75, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %land.lhs.true.if.end79_crit_edge, label %if.then78

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then78:                                        ; preds = %land.lhs.true
  %60 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i206 = icmp eq ptr %61, null
  br i1 %tobool.not.i206, label %if.else.i207, label %if.then78.chained_irq_exit.exit_crit_edge

if.then78.chained_irq_exit.exit_crit_edge:        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i207:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i207, %if.then78.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %63, %if.else.i207 ], [ %61, %if.then78.chained_irq_exit.exit_crit_edge ]
  call void %.sink.i(ptr noundef %irq_data2.i) #7
  br label %if.end79

if.end79:                                         ; preds = %chained_irq_exit.exit, %land.lhs.true.if.end79_crit_edge, %for.body64.if.end79_crit_edge
  %unmasked.2.off0 = phi i1 [ true, %for.body64.if.end79_crit_edge ], [ true, %chained_irq_exit.exit ], [ false, %land.lhs.true.if.end79_crit_edge ]
  %add80 = add i32 %or.i, %pin.0223
  %call81 = call i32 @generic_handle_domain_irq(ptr noundef %5, i32 noundef %add80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end79.if.end129_crit_edge, label %land.rhs

if.end79.if.end129_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

land.rhs:                                         ; preds = %if.end79
  %call88 = call i32 @___ratelimit(ptr noundef nonnull @tegra_gpio_irq_handler._rs, ptr noundef nonnull @__func__.tegra_gpio_irq_handler) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.rhs.if.end129_crit_edge, label %do.end114.critedge, !prof !89

land.rhs.if.end129_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

do.end114.critedge:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %add80) #7
  br label %if.end129

if.end129:                                        ; preds = %do.end114.critedge, %land.rhs.if.end129_crit_edge, %if.end79.if.end129_crit_edge
  %add132 = add nuw nsw i32 %pin.0223, 1
  %call133 = call i32 @_find_next_bit_be(ptr noundef nonnull %sta, i32 noundef 8, i32 noundef %add132) #7
  %cmp63 = icmp ult i32 %call133, 8
  br i1 %cmp63, label %if.end129.for.body64_crit_edge, label %if.end129.for.inc135_crit_edge

if.end129.for.inc135_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc135

if.end129.for.body64_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body64

for.inc135:                                       ; preds = %if.end129.for.inc135_crit_edge, %for.body33.for.inc135_crit_edge
  %unmasked.1.off0.lcssa = phi i1 [ %unmasked.0.off0226, %for.body33.for.inc135_crit_edge ], [ %unmasked.2.off0, %if.end129.for.inc135_crit_edge ]
  %inc136 = add nuw nsw i32 %port.0225, 1
  %exitcond228.not = icmp eq i32 %inc136, 4
  br i1 %exitcond228.not, label %for.end137, label %for.inc135.for.body33_crit_edge

for.inc135.for.body33_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

for.end137:                                       ; preds = %for.inc135
  br i1 %unmasked.1.off0.lcssa, label %for.end137.cleanup_crit_edge, label %if.then139

for.end137.cleanup_crit_edge:                     ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then139:                                       ; preds = %for.end137
  %64 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i210 = icmp eq ptr %65, null
  br i1 %tobool.not.i210, label %if.else.i212, label %if.then139.chained_irq_exit.exit216_crit_edge

if.then139.chained_irq_exit.exit216_crit_edge:    ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit216

if.else.i212:                                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit216

chained_irq_exit.exit216:                         ; preds = %if.else.i212, %if.then139.chained_irq_exit.exit216_crit_edge
  %.sink.i213 = phi ptr [ %67, %if.else.i212 ], [ %65, %if.then139.chained_irq_exit.exit216_crit_edge ]
  call void %.sink.i213(ptr noundef %irq_data2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %chained_irq_exit.exit216, %for.end137.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sta) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_irq_set_affinity(ptr noundef %data, ptr noundef %dest, i1 noundef zeroext %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @irq_chip_set_affinity_parent(ptr noundef %data, ptr noundef %dest, i1 noundef zeroext %force) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dbg_gpio_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %bank_count = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp119.not = icmp eq i32 %5, 0
  br i1 %cmp119.not, label %entry.for.end71_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 3
  %regs.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc69.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.0120 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc70, %for.inc69.for.cond1.preheader_crit_edge ]
  %shr = and i32 %i.0120, 134217727
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader
  %j.0118 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.body3.for.body3_crit_edge ]
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %9, %shr
  %shl1.i = shl nuw i32 %j.0118, 2
  %add = add i32 %mul, %shl1.i
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !87
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %14 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc, align 4
  %bank_stride11 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bank_stride11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bank_stride11, align 4
  %mul12 = mul i32 %17, %shr
  %add16 = or i32 %shl1.i, 16
  %add17 = add i32 %add16, %mul12
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %19, i32 %add17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #7, !srcloc !87
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %soc, align 4
  %bank_stride21 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bank_stride21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bank_stride21, align 4
  %mul22 = mul i32 %25, %shr
  %add26 = or i32 %shl1.i, 32
  %add27 = add i32 %add26, %mul22
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %27, i32 %add27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #7, !srcloc !87
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %30 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %soc, align 4
  %bank_stride31 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %bank_stride31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bank_stride31, align 4
  %mul32 = mul i32 %33, %shr
  %add36 = or i32 %shl1.i, 48
  %add37 = add i32 %add36, %mul32
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %35, i32 %add37
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #7, !srcloc !87
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %38 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc, align 4
  %bank_stride41 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %bank_stride41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bank_stride41, align 4
  %mul42 = mul i32 %41, %shr
  %add46 = or i32 %shl1.i, 64
  %add47 = add i32 %add46, %mul42
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %43, i32 %add47
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #7, !srcloc !87
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %soc, align 4
  %bank_stride51 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %bank_stride51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bank_stride51, align 4
  %mul52 = mul i32 %49, %shr
  %add56 = or i32 %shl1.i, 80
  %add57 = add i32 %add56, %mul52
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %51, i32 %add57
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #7, !srcloc !87
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %54 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soc, align 4
  %bank_stride61 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %bank_stride61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bank_stride61, align 4
  %mul62 = mul i32 %57, %shr
  %add66 = or i32 %shl1.i, 96
  %add67 = add i32 %add66, %mul62
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %59, i32 %add67
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #7, !srcloc !87
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %i.0120, i32 noundef %j.0118, i32 noundef %13, i32 noundef %21, i32 noundef %29, i32 noundef %37, i32 noundef %45, i32 noundef %53, i32 noundef %61) #7
  %inc = add nuw nsw i32 %j.0118, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc69, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.inc69:                                        ; preds = %for.body3
  %inc70 = add nuw i32 %i.0120, 1
  %62 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bank_count, align 4
  %cmp = icmp ult i32 %inc70, %63
  br i1 %cmp, label %for.inc69.for.cond1.preheader_crit_edge, label %for.inc69.for.end71_crit_edge

for.inc69.for.end71_crit_edge:                    ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71

for.inc69.for.cond1.preheader_crit_edge:          ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.end71:                                        ; preds = %for.inc69.for.end71_crit_edge, %entry.for.end71_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bank_count = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp157.not = icmp eq i32 %3, 0
  br i1 %cmp157.not, label %entry.for.end88_crit_edge, label %for.body.lr.ph

entry.for.end88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end88

for.body.lr.ph:                                   ; preds = %entry
  %bank_info = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 2
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 3
  %regs.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %b.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc87, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %bank_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bank_info, align 4
  %shl = shl i32 %b.0158, 5
  br label %for.body3

for.body3:                                        ; preds = %if.end.for.body3_crit_edge, %for.body
  %p.0155 = phi i32 [ 0, %for.body ], [ %inc, %if.end.for.body3_crit_edge ]
  %shl4 = shl nuw nsw i32 %p.0155, 3
  %or = or i32 %shl4, %shl
  %shr = lshr i32 %or, 5
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %9, %shr
  %and = shl nuw nsw i32 %p.0155, 2
  %add = add i32 %mul, %and
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !87
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %arrayidx9 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0158, i32 3, i32 %p.0155
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx9, align 4
  %15 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc, align 4
  %bank_stride12 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %bank_stride12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bank_stride12, align 4
  %mul13 = mul i32 %18, %shr
  %add17 = or i32 %and, 32
  %add18 = add i32 %add17, %mul13
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %20, i32 %add18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #7, !srcloc !87
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %arrayidx20 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0158, i32 4, i32 %p.0155
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx20, align 4
  %24 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc, align 4
  %bank_stride23 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bank_stride23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bank_stride23, align 4
  %mul24 = mul i32 %27, %shr
  %add28 = or i32 %and, 16
  %add29 = add i32 %add28, %mul24
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %29, i32 %add29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #7, !srcloc !87
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %arrayidx31 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0158, i32 5, i32 %p.0155
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx31, align 4
  %33 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soc, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %for.body3.if.end_crit_edge, label %if.then

for.body3.if.end_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  %bank_stride35 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %bank_stride35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bank_stride35, align 4
  %mul36 = mul i32 %38, %shr
  %upper_offset = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %34, i32 0, i32 2
  %39 = ptrtoint ptr %upper_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %upper_offset, align 4
  %add40 = or i32 %and, 48
  %add42 = add i32 %add40, %mul36
  %add43 = add i32 %add42, %40
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %42, i32 %add43
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #7, !srcloc !87
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  %arrayidx45 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0158, i32 9, i32 %p.0155
  %shl48 = shl i32 %44, 8
  %or51 = or i32 %shl48, %44
  %45 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or51, ptr %arrayidx45, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3.if.end_crit_edge
  %46 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %soc, align 4
  %bank_stride56 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %bank_stride56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bank_stride56, align 4
  %mul57 = mul i32 %49, %shr
  %add61 = or i32 %and, 80
  %add62 = add i32 %add61, %mul57
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %51, i32 %add62
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #7, !srcloc !87
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %arrayidx64 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0158, i32 6, i32 %p.0155
  %54 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx64, align 4
  %55 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %soc, align 4
  %bank_stride67 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %bank_stride67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bank_stride67, align 4
  %mul68 = mul i32 %58, %shr
  %add72 = or i32 %and, 96
  %add73 = add i32 %add72, %mul68
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %60, i32 %add73
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #7, !srcloc !87
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %arrayidx75 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0158, i32 7, i32 %p.0155
  %63 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx75, align 4
  %arrayidx76 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0158, i32 8, i32 %p.0155
  %64 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx76, align 4
  %66 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %soc, align 4
  %bank_stride79 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %bank_stride79 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bank_stride79, align 4
  %mul80 = mul i32 %69, %shr
  %add85 = add i32 %add61, %mul80
  %70 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %72, i32 %add85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %70) #7, !srcloc !86
  %inc = add nuw nsw i32 %p.0155, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end.for.body3_crit_edge

if.end.for.body3_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end:                                          ; preds = %if.end
  %inc87 = add nuw i32 %b.0158, 1
  %73 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bank_count, align 4
  %cmp = icmp ult i32 %inc87, %74
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end88_crit_edge

for.end.for.end88_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end88

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end88:                                        ; preds = %for.end.for.end88_crit_edge, %entry.for.end88_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gpio_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bank_count = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp137.not = icmp eq i32 %3, 0
  br i1 %cmp137.not, label %entry.for.end74_crit_edge, label %for.body.lr.ph

entry.for.end74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74

for.body.lr.ph:                                   ; preds = %entry
  %bank_info = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 2
  %soc = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 3
  %regs.i = getelementptr inbounds %struct.tegra_gpio_info, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %b.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc73, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %bank_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bank_info, align 4
  %shl = shl i32 %b.0138, 5
  br label %for.body3

for.body3:                                        ; preds = %if.end.for.body3_crit_edge, %for.body
  %p.0135 = phi i32 [ 0, %for.body ], [ %inc, %if.end.for.body3_crit_edge ]
  %shl4 = shl nuw nsw i32 %p.0135, 3
  %or = or i32 %shl4, %shl
  %arrayidx5 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0138, i32 3, i32 %p.0135
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %shr = lshr i32 %or, 5
  %8 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc, align 4
  %bank_stride = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank_stride, align 4
  %mul = mul i32 %11, %shr
  %and = shl nuw nsw i32 %p.0135, 2
  %add = add i32 %mul, %and
  %12 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !86
  %15 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %for.body3.if.end_crit_edge, label %if.then

for.body3.if.end_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0138, i32 10, i32 %p.0135
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10, align 4
  %bank_stride13 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %bank_stride13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bank_stride13, align 4
  %mul14 = mul i32 %22, %shr
  %add18 = or i32 %and, 240
  %add19 = add i32 %add18, %mul14
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %25, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %23) #7, !srcloc !86
  %arrayidx20 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0138, i32 9, i32 %p.0135
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx20, align 4
  %28 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc, align 4
  %bank_stride23 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %bank_stride23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bank_stride23, align 4
  %mul24 = mul i32 %31, %shr
  %upper_offset = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %upper_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %upper_offset, align 4
  %add28 = or i32 %and, 48
  %add30 = add i32 %add28, %mul24
  %add31 = add i32 %add30, %33
  %34 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %36, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %34) #7, !srcloc !86
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3.if.end_crit_edge
  %arrayidx32 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0138, i32 4, i32 %p.0135
  %37 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx32, align 4
  %39 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %soc, align 4
  %bank_stride35 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %bank_stride35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bank_stride35, align 4
  %mul36 = mul i32 %42, %shr
  %add40 = or i32 %and, 32
  %add41 = add i32 %add40, %mul36
  %43 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %45, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %43) #7, !srcloc !86
  %arrayidx42 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0138, i32 5, i32 %p.0135
  %46 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx42, align 4
  %48 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %soc, align 4
  %bank_stride45 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %bank_stride45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bank_stride45, align 4
  %mul46 = mul i32 %51, %shr
  %add50 = or i32 %and, 16
  %add51 = add i32 %add50, %mul46
  %52 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %54, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %52) #7, !srcloc !86
  %arrayidx52 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0138, i32 7, i32 %p.0135
  %55 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx52, align 4
  %57 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %soc, align 4
  %bank_stride55 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %bank_stride55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bank_stride55, align 4
  %mul56 = mul i32 %60, %shr
  %add60 = or i32 %and, 96
  %add61 = add i32 %add60, %mul56
  %61 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %63, i32 %add61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %61) #7, !srcloc !86
  %arrayidx62 = getelementptr %struct.tegra_gpio_bank, ptr %5, i32 %b.0138, i32 6, i32 %p.0135
  %64 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx62, align 4
  %66 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %soc, align 4
  %bank_stride65 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %bank_stride65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bank_stride65, align 4
  %mul66 = mul i32 %69, %shr
  %add70 = or i32 %and, 80
  %add71 = add i32 %add70, %mul66
  %70 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %72, i32 %add71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %70) #7, !srcloc !86
  %inc = add nuw nsw i32 %p.0135, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end.for.body3_crit_edge

if.end.for.body3_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end:                                          ; preds = %if.end
  %inc73 = add nuw i32 %b.0138, 1
  %73 = ptrtoint ptr %bank_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bank_count, align 4
  %cmp = icmp ult i32 %inc73, %74
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end74_crit_edge

for.end.for.end74_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end74:                                        ; preds = %for.end.for.end74_crit_edge, %entry.for.end74_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_gpio_tegra__229_815_tegra_gpio_driver_init6, !1, !"__initcall__kmod_gpio_tegra__229_815_tegra_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-tegra.c", i32 815, i32 1}
!2 = !{ptr @__exitcall_tegra_gpio_driver_exit, !1, !"__exitcall_tegra_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description230, !4, !"__UNIQUE_ID_description230", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-tegra.c", i32 817, i32 1}
!5 = !{ptr @__UNIQUE_ID_author231, !6, !"__UNIQUE_ID_author231", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-tegra.c", i32 818, i32 1}
!7 = !{ptr @__UNIQUE_ID_author232, !8, !"__UNIQUE_ID_author232", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-tegra.c", i32 819, i32 1}
!9 = !{ptr @__UNIQUE_ID_author233, !10, !"__UNIQUE_ID_author233", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-tegra.c", i32 820, i32 1}
!11 = !{ptr @__UNIQUE_ID_author234, !12, !"__UNIQUE_ID_author234", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-tegra.c", i32 821, i32 1}
!13 = !{ptr @__UNIQUE_ID_file235, !14, !"__UNIQUE_ID_file235", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-tegra.c", i32 822, i32 1}
!15 = !{ptr @__UNIQUE_ID_license236, !14, !"__UNIQUE_ID_license236", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-tegra.c", i32 809, i32 11}
!18 = !{ptr @tegra_gpio_driver, !19, !"tegra_gpio_driver", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-tegra.c", i32 807, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-tegra.c", i32 679, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tegra_gpio_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_gpio_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-tegra.c", i32 696, i32 19}
!30 = !{ptr @tegra_gpio_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-tegra.c", i32 734, i32 4}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tegra_gpio_probe.__key.8, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-tegra.c", i32 735, i32 4}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tegra_gpio_probe.lock_key, !37, !"lock_key", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-tegra.c", i32 774, i32 8}
!38 = !{ptr @tegra_gpio_probe.request_key, !37, !"request_key", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-tegra.c", i32 184, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tegra_gpio_direction_input._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra_gpio_direction_input._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-tegra.c", i32 204, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tegra_gpio_direction_output._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tegra_gpio_direction_output._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-tegra.c", i32 353, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tegra_gpio_irq_set_type._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tegra_gpio_irq_set_type._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-tegra.c", i32 426, i32 4}
!56 = !{ptr @tegra_gpio_irq_handler._rs, !55, !"_rs", i1 false, i1 false}
!57 = !{ptr @__func__.tegra_gpio_irq_handler, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tegra_pmc_of_match, !60, !"tegra_pmc_of_match", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-tegra.c", i32 651, i32 34}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-tegra.c", i32 635, i32 40}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-tegra.c", i32 619, i32 5}
!65 = !{ptr @tegra_gpio_of_match, !66, !"tegra_gpio_of_match", i1 false, i1 false}
!66 = !{!"../drivers/gpio/gpio-tegra.c", i32 799, i32 34}
!67 = !{ptr @tegra210_gpio_config, !68, !"tegra210_gpio_config", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-tegra.c", i32 793, i32 43}
!69 = !{ptr @tegra30_gpio_config, !70, !"tegra30_gpio_config", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-tegra.c", i32 788, i32 43}
!71 = !{ptr @tegra20_gpio_config, !72, !"tegra20_gpio_config", i1 false, i1 false}
!72 = !{!"../drivers/gpio/gpio-tegra.c", i32 783, i32 43}
!73 = !{ptr @tegra_gpio_pm_ops, !74, !"tegra_gpio_pm_ops", i1 false, i1 false}
!74 = !{!"../drivers/gpio/gpio-tegra.c", i32 647, i32 32}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 3648926}
!87 = !{i64 3649344}
!88 = !{!"auto-init"}
!89 = !{!"branch_weights", i32 2000, i32 1}
