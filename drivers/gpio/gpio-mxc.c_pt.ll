; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-mxc.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mxc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mxc_gpio_hwdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mxc_gpio_port = type { %struct.list_head, ptr, ptr, i32, i32, ptr, %struct.gpio_chip, ptr, i32, %struct.mxc_gpio_reg_saved, i8, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.mxc_gpio_reg_saved = type { i32, i32, i32, i32, i32, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_mxc__231_550_gpio_mxc_init4 = internal global ptr @gpio_mxc_init, section ".initcall4.init", align 4
@__UNIQUE_ID_author232 = internal constant [49 x i8] c"gpio_mxc.author=Shawn Guo <shawn.guo@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [38 x i8] c"gpio_mxc.description=i.MX GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [36 x i8] c"gpio_mxc.file=drivers/gpio/gpio-mxc\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"gpio_mxc.license=GPL\00", section ".modinfo", align 1
@mxc_gpio_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mxc_gpio_syscore_suspend, ptr @mxc_gpio_syscore_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@mxc_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxc_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @mxc_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mxc_gpio_ports = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mxc_gpio_ports, ptr @mxc_gpio_ports }, [24 x i8] zeroinitializer }, align 32
@mxc_gpio_syscore_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013mxc: failed to enable gpio clock %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxc_gpio_syscore_resume\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/gpio/gpio-mxc.c\00", [40 x i8] zeroinitializer }, align 32
@mxc_gpio_syscore_resume._entry_ptr = internal global ptr @mxc_gpio_syscore_resume._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-mxc\00", [23 x i8] zeroinitializer }, align 32
@mxc_gpio_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_imx21_gpio_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_imx21_gpio_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_gpio_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx35_gpio_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx35_gpio_hwdata }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@mxc_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 396, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to enable clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxc_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxc_gpio_probe._entry_ptr = internal global ptr @mxc_gpio_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx7d-gpio\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx21-gpio\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@mxc_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mxc_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@mxc_gpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 471, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s failed with errno %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mxc_gpio_probe._entry_ptr.14 = internal global ptr @mxc_gpio_probe._entry.11, section ".printk_index", align 4
@mxc_flip_edge.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_mxc\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxc_flip_edge\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mxc: switch GPIO %d to low trigger\0A\00", [60 x i8] zeroinitializer }, align 32
@mxc_flip_edge.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mxc: switch GPIO %d to high trigger\0A\00", [59 x i8] zeroinitializer }, align 32
@mxc_flip_edge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013mxc: invalid configuration for GPIO %d: %x\0A\00", [50 x i8] zeroinitializer }, align 32
@mxc_flip_edge._entry_ptr = internal global ptr @mxc_flip_edge._entry, section ".printk_index", align 4
@gpio_set_irq_type.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpio_set_irq_type\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mxc: set GPIO %d to low trigger\0A\00", [63 x i8] zeroinitializer }, align 32
@gpio_set_irq_type.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mxc: set GPIO %d to high trigger\0A\00", [62 x i8] zeroinitializer }, align 32
@imx1_imx21_gpio_hwdata = internal global { %struct.mxc_gpio_hwdata, [48 x i8] } { %struct.mxc_gpio_hwdata { i32 28, i32 0, i32 36, i32 40, i32 44, i32 48, i32 52, i32 -22, i32 3, i32 2, i32 0, i32 1 }, [48 x i8] zeroinitializer }, align 32
@imx31_gpio_hwdata = internal global { %struct.mxc_gpio_hwdata, [48 x i8] } { %struct.mxc_gpio_hwdata { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 -22, i32 0, i32 1, i32 2, i32 3 }, [48 x i8] zeroinitializer }, align 32
@imx35_gpio_hwdata = internal global { %struct.mxc_gpio_hwdata, [48 x i8] } { %struct.mxc_gpio_hwdata { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 1, i32 2, i32 3 }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"mxc_gpio_syscore_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 530, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"mxc_gpio_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 535, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"mxc_gpio_ports\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 142, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 523, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 537, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"mxc_gpio_dt_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 127, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 396, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 400, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 407, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 436, i32 55 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 439, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 471, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 223, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 226, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 228, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 170, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 173, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant [23 x i8] c"imx1_imx21_gpio_hwdata\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 67, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"imx31_gpio_hwdata\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 82, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"imx35_gpio_hwdata\00", align 1
@___asan_gen_.123 = private constant [27 x i8] c"../drivers/gpio/gpio-mxc.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 97, i32 31 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__initcall__kmod_gpio_mxc__231_550_gpio_mxc_init4, ptr @mxc_flip_edge._entry, ptr @mxc_flip_edge._entry_ptr, ptr @mxc_gpio_probe._entry, ptr @mxc_gpio_probe._entry.11, ptr @mxc_gpio_probe._entry_ptr, ptr @mxc_gpio_probe._entry_ptr.14, ptr @mxc_gpio_syscore_resume._entry, ptr @mxc_gpio_syscore_resume._entry_ptr, ptr @mxc_gpio_syscore_ops, ptr @mxc_gpio_driver, ptr @mxc_gpio_ports, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mxc_gpio_dt_ids, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mxc_gpio_probe.lock_key, ptr @mxc_gpio_probe.request_key, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @imx1_imx21_gpio_hwdata, ptr @imx31_gpio_hwdata, ptr @imx35_gpio_hwdata], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_gpio_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_gpio_ports to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_gpio_syscore_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_gpio_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_gpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_flip_edge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx1_imx21_gpio_hwdata to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx31_gpio_hwdata to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx35_gpio_hwdata to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mxc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_syscore_ops(ptr noundef nonnull @mxc_gpio_syscore_ops) #6
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxc_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_gpio_syscore_suspend() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port.08 = load ptr, ptr @mxc_gpio_ports, align 4
  %cmp.not9 = icmp eq ptr %port.08, @mxc_gpio_ports
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %mxc_gpio_save_regs.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %port.010 = phi ptr [ %port.0, %mxc_gpio_save_regs.exit.for.body_crit_edge ], [ %port.08, %entry.for.body_crit_edge ]
  %power_off.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 10
  %0 = ptrtoint ptr %power_off.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_off.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %for.body.mxc_gpio_save_regs.exit_crit_edge, label %if.end.i

for.body.mxc_gpio_save_regs.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxc_gpio_save_regs.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %base.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %hwdata.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 11
  %4 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwdata.i, align 4
  %icr1_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %icr1_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %icr1_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !82
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %gpio_saved_reg.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 9
  %10 = ptrtoint ptr %gpio_saved_reg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gpio_saved_reg.i, align 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %13 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwdata.i, align 4
  %icr2_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %icr2_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %icr2_reg.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %12, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !82
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %icr2.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %icr2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %icr2.i, align 4
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwdata.i, align 4
  %imr_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %imr_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %imr_reg.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %21, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #6, !srcloc !82
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %imr.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 9, i32 2
  %28 = ptrtoint ptr %imr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %imr.i, align 4
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %31 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwdata.i, align 4
  %gdir_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %gdir_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gdir_reg.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %30, i32 %34
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #6, !srcloc !82
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %gdir.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %gdir.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %gdir.i, align 4
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %40 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hwdata.i, align 4
  %edge_sel_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %edge_sel_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %edge_sel_reg.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %39, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #6, !srcloc !82
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %edge_sel.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 9, i32 4
  %46 = ptrtoint ptr %edge_sel.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %edge_sel.i, align 4
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %49 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hwdata.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add.ptr42.i = getelementptr i8, ptr %48, i32 %52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #6, !srcloc !82
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %dr.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 9, i32 5
  %55 = ptrtoint ptr %dr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dr.i, align 4
  br label %mxc_gpio_save_regs.exit

mxc_gpio_save_regs.exit:                          ; preds = %if.end.i, %for.body.mxc_gpio_save_regs.exit_crit_edge
  %clk = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.010, i32 0, i32 2
  %56 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %57) #6
  tail call void @clk_unprepare(ptr noundef %57) #6
  %58 = ptrtoint ptr %port.010 to i32
  call void @__asan_load4_noabort(i32 %58)
  %port.0 = load ptr, ptr %port.010, align 4
  %cmp.not = icmp eq ptr %port.0, @mxc_gpio_ports
  br i1 %cmp.not, label %mxc_gpio_save_regs.exit.for.end_crit_edge, label %mxc_gpio_save_regs.exit.for.body_crit_edge

mxc_gpio_save_regs.exit.for.body_crit_edge:       ; preds = %mxc_gpio_save_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

mxc_gpio_save_regs.exit.for.end_crit_edge:        ; preds = %mxc_gpio_save_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %mxc_gpio_save_regs.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc_gpio_syscore_resume() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port.018 = load ptr, ptr @mxc_gpio_ports, align 4
  %cmp.not19 = icmp eq ptr %port.018, @mxc_gpio_ports
  br i1 %cmp.not19, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %mxc_gpio_restore_regs.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %port.020 = phi ptr [ %port.0, %mxc_gpio_restore_regs.exit.for.body_crit_edge ], [ %port.018, %entry.for.body_crit_edge ]
  %clk = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %for.body.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.do.end_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %power_off.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 10
  %2 = ptrtoint ptr %power_off.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_off.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i12 = icmp eq i8 %3, 0
  br i1 %tobool.not.i12, label %if.end.mxc_gpio_restore_regs.exit_crit_edge, label %do.body.i

if.end.mxc_gpio_restore_regs.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxc_gpio_restore_regs.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %gpio_saved_reg.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 9
  %4 = ptrtoint ptr %gpio_saved_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_saved_reg.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %base.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %hwdata.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 11
  %9 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwdata.i, align 4
  %icr1_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %icr1_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %icr1_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %icr2.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %icr2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %icr2.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwdata.i, align 4
  %icr2_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %icr2_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %icr2_reg.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %17, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %15) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %imr.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %imr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %imr.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %27 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwdata.i, align 4
  %imr_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %imr_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %imr_reg.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %26, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %24) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %gdir.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 9, i32 3
  %31 = ptrtoint ptr %gdir.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gdir.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %36 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwdata.i, align 4
  %gdir_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %gdir_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gdir_reg.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %35, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %33) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %edge_sel.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 9, i32 4
  %40 = ptrtoint ptr %edge_sel.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %edge_sel.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %45 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hwdata.i, align 4
  %edge_sel_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %edge_sel_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %edge_sel_reg.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %44, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %42) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %dr.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.020, i32 0, i32 9, i32 5
  %49 = ptrtoint ptr %dr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dr.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %54 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hwdata.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add.ptr30.i = getelementptr i8, ptr %53, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %51) #6, !srcloc !90
  br label %mxc_gpio_restore_regs.exit

mxc_gpio_restore_regs.exit:                       ; preds = %do.body.i, %if.end.mxc_gpio_restore_regs.exit_crit_edge
  %58 = ptrtoint ptr %port.020 to i32
  call void @__asan_load4_noabort(i32 %58)
  %port.0 = load ptr, ptr %port.020, align 4
  %cmp.not = icmp eq ptr %port.0, @mxc_gpio_ports
  br i1 %cmp.not, label %mxc_gpio_restore_regs.exit.cleanup_crit_edge, label %mxc_gpio_restore_regs.exit.for.body_crit_edge

mxc_gpio_restore_regs.exit.for.body_crit_edge:    ; preds = %mxc_gpio_restore_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

mxc_gpio_restore_regs.exit.cleanup_crit_edge:     ; preds = %mxc_gpio_restore_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %mxc_gpio_restore_regs.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 416, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev3, align 4
  %call5 = tail call ptr @device_get_match_data(ptr noundef %dev) #6
  %hwdata = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %hwdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %hwdata, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @platform_irq_count(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp16 = icmp ugt i32 %call13, 1
  br i1 %cmp16, label %if.then17, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  %irq_high = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 4
  %6 = tail call i32 @llvm.smax.i32(i32 %call18, i32 0)
  %7 = ptrtoint ptr %irq_high to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq_high, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end15.if.end24_crit_edge
  %call25 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call25, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp27 = icmp slt i32 %call25, 0
  br i1 %cmp27, label %if.end24.cleanup_crit_edge, label %if.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %call32 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call32, ptr %clk, align 4
  %cmp.i202 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %call.i203 = tail call i32 @clk_prepare(ptr noundef %call32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool.not.i = icmp eq i32 %call.i203, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end38.do.end_crit_edge

if.end38.do.end_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end38
  %call1.i = tail call i32 @clk_enable(ptr noundef %call32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end44, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call32) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end38.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i203, %if.end38.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end.i
  %call45 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.do.body49_crit_edge, label %if.then47

if.end44.do.body49_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %power_off = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %power_off to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %power_off, align 4
  br label %do.body49

do.body49:                                        ; preds = %if.then47, %if.end44.do.body49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwdata, align 4
  %imr_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %imr_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %imr_reg, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %20 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwdata, align 4
  %isr_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %isr_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %isr_reg, align 4
  %add.ptr59 = getelementptr i8, ptr %19, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 -1) #6, !srcloc !90
  %call60 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__irq_set_handler(i32 noundef %25, ptr noundef nonnull @mx2_gpio_irq_handler, i32 noundef 1, ptr noundef null) #6
  br label %if.end70

if.else:                                          ; preds = %do.body49
  tail call void @irq_set_chained_handler_and_data(i32 noundef %25, ptr noundef nonnull @mx3_gpio_irq_handler, ptr noundef nonnull %call.i) #6
  %irq_high65 = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %irq_high65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_high65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp66 = icmp sgt i32 %27, 0
  br i1 %cmp66, label %if.then67, label %if.else.if.end70_crit_edge

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %27, ptr noundef nonnull @mx3_gpio_irq_handler, ptr noundef nonnull %call.i) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.else.if.end70_crit_edge, %if.then62
  %gc = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %30 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwdata, align 4
  %psr_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %psr_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %psr_reg, align 4
  %add.ptr74 = getelementptr i8, ptr %29, i32 %33
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  %add.ptr77 = getelementptr i8, ptr %29, i32 %35
  %gdir_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %gdir_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gdir_reg, align 4
  %add.ptr80 = getelementptr i8, ptr %29, i32 %37
  %call81 = tail call i32 @bgpio_init(ptr noundef %gc, ptr noundef %dev, i32 noundef 4, ptr noundef %add.ptr74, ptr noundef %add.ptr77, ptr noundef null, ptr noundef %add.ptr80, ptr noundef null, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end70.out_bgio_crit_edge

if.end70.out_bgio_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_bgio

if.end84:                                         ; preds = %if.end70
  %request = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 6, i32 5
  %38 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 6, i32 6
  %39 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %to_irq = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 6, i32 15
  %40 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mxc_gpio_to_irq, ptr %to_irq, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp88 = icmp slt i32 %42, 0
  br i1 %cmp88, label %cond.true, label %if.end84.cond.end_crit_edge

if.end84.cond.end_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end84.cond.end_crit_edge
  %cond.in = phi i32 [ %call89, %cond.true ], [ %42, %if.end84.cond.end_crit_edge ]
  %cond = shl i32 %cond.in, 5
  %base93 = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 6, i32 19
  %43 = ptrtoint ptr %base93 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %base93, align 4
  %call96 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @mxc_gpio_probe.lock_key, ptr noundef nonnull @mxc_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %cond.end.out_bgio_crit_edge

cond.end.out_bgio_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_bgio

if.end99:                                         ; preds = %cond.end
  %call102 = tail call i32 @__devm_irq_alloc_descs(ptr noundef %dev, i32 noundef -1, i32 noundef 0, i32 noundef 32, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.end99.out_bgio_crit_edge, label %if.end105

if.end99.out_bgio_crit_edge:                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_bgio

if.end105:                                        ; preds = %if.end99
  %call106 = tail call ptr @irq_domain_add_legacy(ptr noundef %1, i32 noundef 32, i32 noundef %call102, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #6
  %domain = getelementptr inbounds %struct.mxc_gpio_port, ptr %call.i, i32 0, i32 5
  %44 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call106, ptr %domain, align 4
  %tobool108.not = icmp eq ptr %call106, null
  br i1 %tobool108.not, label %if.end105.out_bgio_crit_edge, label %if.end110

if.end105.out_bgio_crit_edge:                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_bgio

if.end110:                                        ; preds = %if.end105
  %45 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev3, align 4
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %call.i204 = tail call ptr @devm_irq_alloc_generic_chip(ptr noundef %46, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef %call102, ptr noundef %48, ptr noundef nonnull @handle_level_irq) #6
  %tobool.not.i205 = icmp eq ptr %call.i204, null
  br i1 %tobool.not.i205, label %if.end110.out_irqdomain_remove_crit_edge, label %mxc_gpio_init_gc.exit

if.end110.out_irqdomain_remove_crit_edge:         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_irqdomain_remove

mxc_gpio_init_gc.exit:                            ; preds = %if.end110
  %private.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i204, i32 0, i32 14
  %49 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %private.i, align 4
  %irq_ack.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i204, i32 1, i32 0, i32 4, i32 1, i32 1
  %50 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @irq_gc_ack_set_bit, ptr %irq_ack.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i204, i32 1, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i204, i32 1, i32 0, i32 4, i32 6
  %52 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i204, i32 1, i32 3
  %53 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @gpio_set_irq_type, ptr %irq_set_type.i, align 4
  %irq_set_wake.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i204, i32 1, i32 4
  %54 = ptrtoint ptr %irq_set_wake.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @gpio_set_wake_irq, ptr %irq_set_wake.i, align 4
  %flags.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i204, i32 2, i32 0, i32 3
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 516, ptr %flags.i, align 4
  %56 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hwdata, align 4
  %isr_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %isr_reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %isr_reg.i, align 4
  %ack.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i204, i32 2, i32 0, i32 4, i32 2
  %60 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %ack.i, align 4
  %61 = load ptr, ptr %hwdata, align 4
  %imr_reg.i = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %imr_reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %imr_reg.i, align 4
  %mask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i204, i32 2, i32 0, i32 4, i32 1, i32 1
  %64 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %mask.i, align 4
  %65 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev3, align 4
  %call9.i = tail call i32 @devm_irq_setup_generic_chip(ptr noundef %66, ptr noundef nonnull %call.i204, i32 noundef -1, i32 noundef 2, i32 noundef 2048, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp112 = icmp slt i32 %call9.i, 0
  br i1 %cmp112, label %mxc_gpio_init_gc.exit.out_irqdomain_remove_crit_edge, label %if.end114

mxc_gpio_init_gc.exit.out_irqdomain_remove_crit_edge: ; preds = %mxc_gpio_init_gc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_irqdomain_remove

if.end114:                                        ; preds = %mxc_gpio_init_gc.exit
  %67 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mxc_gpio_ports, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %67, ptr noundef nonnull @mxc_gpio_ports) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end114.list_add_tail.exit_crit_edge

if.end114.list_add_tail.exit_crit_edge:           ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call.i, ptr getelementptr inbounds (%struct.list_head, ptr @mxc_gpio_ports, i32 0, i32 1), align 4
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @mxc_gpio_ports, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %67, ptr %prev3.i.i, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call.i, ptr %67, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end114.list_add_tail.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_irqdomain_remove:                             ; preds = %mxc_gpio_init_gc.exit.out_irqdomain_remove_crit_edge, %if.end110.out_irqdomain_remove_crit_edge
  %retval.0.i207213 = phi i32 [ %call9.i, %mxc_gpio_init_gc.exit.out_irqdomain_remove_crit_edge ], [ -12, %if.end110.out_irqdomain_remove_crit_edge ]
  %72 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %73) #6
  br label %out_bgio

out_bgio:                                         ; preds = %out_irqdomain_remove, %if.end105.out_bgio_crit_edge, %if.end99.out_bgio_crit_edge, %cond.end.out_bgio_crit_edge, %if.end70.out_bgio_crit_edge
  %err.0 = phi i32 [ %call81, %if.end70.out_bgio_crit_edge ], [ %call96, %cond.end.out_bgio_crit_edge ], [ %retval.0.i207213, %out_irqdomain_remove ], [ %call102, %if.end99.out_bgio_crit_edge ], [ -19, %if.end105.out_bgio_crit_edge ]
  %74 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %75) #6
  tail call void @clk_unprepare(ptr noundef %75) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, i32 noundef %err.0) #9
  br label %cleanup

cleanup:                                          ; preds = %out_bgio, %list_add_tail.exit, %do.end, %if.then35, %if.end24.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then9 ], [ %10, %if.then35 ], [ %retval.0.i.ph, %do.end ], [ %err.0, %out_bgio ], [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx2_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %port.037 = load ptr, ptr @mxc_gpio_ports, align 4
  %cmp.not38 = icmp eq ptr %port.037, @mxc_gpio_ports
  br i1 %cmp.not38, label %chained_irq_enter.exit.for.end_crit_edge, label %chained_irq_enter.exit.for.body_crit_edge

chained_irq_enter.exit.for.body_crit_edge:        ; preds = %chained_irq_enter.exit
  br label %for.body

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %chained_irq_enter.exit.for.body_crit_edge
  %port.039 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.037, %chained_irq_enter.exit.for.body_crit_edge ]
  %base = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.039, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %hwdata = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.039, i32 0, i32 11
  %12 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwdata, align 4
  %imr_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %imr_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imr_reg, align 4
  %add.ptr1 = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %19 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwdata, align 4
  %isr_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %isr_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %isr_reg, align 4
  %add.ptr9 = getelementptr i8, ptr %18, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %24 = and i32 %23, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not = icmp eq i32 %24, 0
  br i1 %tobool13.not, label %if.end.for.inc_crit_edge, label %while.body.lr.ph.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body.lr.ph.i:                               ; preds = %if.end
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %both_edges.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.039, i32 0, i32 8
  %domain.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %port.039, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i32.while.body.i_crit_edge, %while.body.lr.ph.i
  %irq_stat.addr.012.i = phi i32 [ %25, %while.body.lr.ph.i ], [ %and3.i, %if.end.i32.while.body.i_crit_edge ]
  %26 = tail call i32 @llvm.ctlz.i32(i32 %irq_stat.addr.012.i, i1 true) #6, !range !100
  %sub.i = xor i32 %26, 31
  %27 = ptrtoint ptr %both_edges.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %both_edges.i, align 4
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %shl.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i31 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i31, label %while.body.i.if.end.i32_crit_edge, label %if.then.i

while.body.i.if.end.i32_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i32

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mxc_flip_edge(ptr noundef %port.039, i32 noundef %sub.i) #6
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.then.i, %while.body.i.if.end.i32_crit_edge
  %29 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %domain.i, align 4
  %call1.i = tail call i32 @generic_handle_domain_irq(ptr noundef %30, i32 noundef %sub.i) #6
  %neg.i = xor i32 %shl.i, -1
  %and3.i = and i32 %irq_stat.addr.012.i, %neg.i
  %cmp.not.i = icmp eq i32 %and3.i, 0
  br i1 %cmp.not.i, label %if.end.i32.for.inc_crit_edge, label %if.end.i32.while.body.i_crit_edge

if.end.i32.while.body.i_crit_edge:                ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i32.for.inc_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end.i32.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %port.039 to i32
  call void @__asan_load4_noabort(i32 %31)
  %port.0 = load ptr, ptr %port.039, align 4
  %cmp.not = icmp eq ptr %port.0, @mxc_gpio_ports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %32 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i34 = icmp eq ptr %33, null
  br i1 %tobool.not.i34, label %if.else.i35, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i35:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i35, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %35, %if.else.i35 ], [ %33, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx3_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %base = getelementptr inbounds %struct.mxc_gpio_port, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %hwdata = getelementptr inbounds %struct.mxc_gpio_port, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwdata, align 4
  %isr_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %isr_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %isr_reg, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %21 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwdata, align 4
  %imr_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %imr_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %imr_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %20, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %26 = and i32 %25, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not11.i = icmp eq i32 %26, 0
  br i1 %cmp.not11.i, label %chained_irq_enter.exit.mxc_gpio_irq_handler.exit_crit_edge, label %while.body.lr.ph.i

chained_irq_enter.exit.mxc_gpio_irq_handler.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxc_gpio_irq_handler.exit

while.body.lr.ph.i:                               ; preds = %chained_irq_enter.exit
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %both_edges.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %1, i32 0, i32 8
  %domain.i = getelementptr inbounds %struct.mxc_gpio_port, ptr %1, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i21.while.body.i_crit_edge, %while.body.lr.ph.i
  %irq_stat.addr.012.i = phi i32 [ %27, %while.body.lr.ph.i ], [ %and3.i, %if.end.i21.while.body.i_crit_edge ]
  %28 = tail call i32 @llvm.ctlz.i32(i32 %irq_stat.addr.012.i, i1 true) #6, !range !100
  %sub.i = xor i32 %28, 31
  %29 = ptrtoint ptr %both_edges.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %both_edges.i, align 4
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %shl.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i20 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i20, label %while.body.i.if.end.i21_crit_edge, label %if.then.i

while.body.i.if.end.i21_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i21

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mxc_flip_edge(ptr noundef %1, i32 noundef %sub.i) #6
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then.i, %while.body.i.if.end.i21_crit_edge
  %31 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %domain.i, align 4
  %call1.i = tail call i32 @generic_handle_domain_irq(ptr noundef %32, i32 noundef %sub.i) #6
  %neg.i = xor i32 %shl.i, -1
  %and3.i = and i32 %irq_stat.addr.012.i, %neg.i
  %cmp.not.i = icmp eq i32 %and3.i, 0
  br i1 %cmp.not.i, label %if.end.i21.mxc_gpio_irq_handler.exit_crit_edge, label %if.end.i21.while.body.i_crit_edge

if.end.i21.while.body.i_crit_edge:                ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i21.mxc_gpio_irq_handler.exit_crit_edge:   ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxc_gpio_irq_handler.exit

mxc_gpio_irq_handler.exit:                        ; preds = %if.end.i21.mxc_gpio_irq_handler.exit_crit_edge, %chained_irq_enter.exit.mxc_gpio_irq_handler.exit_crit_edge
  %33 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i23 = icmp eq ptr %34, null
  br i1 %tobool.not.i23, label %if.else.i24, label %mxc_gpio_irq_handler.exit.chained_irq_exit.exit_crit_edge

mxc_gpio_irq_handler.exit.chained_irq_exit.exit_crit_edge: ; preds = %mxc_gpio_irq_handler.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i24:                                      ; preds = %mxc_gpio_irq_handler.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %35 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i24, %mxc_gpio_irq_handler.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %36, %if.else.i24 ], [ %34, %mxc_gpio_irq_handler.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %domain = getelementptr inbounds %struct.mxc_gpio_port, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !103
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef %offset, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxc_flip_edge(ptr nocapture noundef readonly %port, i32 noundef %gpio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mxc_gpio_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %hwdata = getelementptr inbounds %struct.mxc_gpio_port, ptr %port, i32 0, i32 11
  %2 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwdata, align 4
  %icr1_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %icr1_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icr1_reg, align 4
  %and = lshr i32 %gpio, 2
  %shr = and i32 %and, 4
  %add = add i32 %5, %shr
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %and1 = shl i32 %gpio, 1
  %shl = and i32 %and1, 30
  %shr3 = lshr i32 %7, %shl
  %and4 = and i32 %shr3, 3
  %shl6 = shl nuw i32 3, %shl
  %neg = xor i32 %shl6, -1
  %and7 = and i32 %7, %neg
  %8 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwdata, align 4
  %high_level = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %high_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %high_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %11)
  %cmp = icmp eq i32 %and4, %11
  %low_level = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %low_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %low_level, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_flip_edge.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxc_flip_edge, %do.body48)) #6
          to label %if.then15 [label %do.body48], !srcloc !105

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxc_flip_edge.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.17, i32 noundef %gpio) #6
  br label %do.body48

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %13)
  %cmp18 = icmp eq i32 %and4, %13
  br i1 %cmp18, label %if.then19, label %do.end43

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_flip_edge.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxc_flip_edge, %do.body48)) #6
          to label %if.then36 [label %do.body48], !srcloc !105

if.then36:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxc_flip_edge.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.18, i32 noundef %gpio) #6
  br label %do.body48

do.end43:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %gpio, i32 noundef %and4) #9
  br label %cleanup

do.body48:                                        ; preds = %if.then36, %if.then19, %if.then15, %if.then
  %edge.0 = phi i32 [ %13, %if.then15 ], [ %11, %if.then36 ], [ %13, %if.then ], [ %11, %if.then19 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %shl52 = shl i32 %edge.0, %shl
  %or = or i32 %shl52, %and7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #6, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %do.end43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_irq_alloc_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_set_irq_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %base = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %shl = shl nuw i32 1, %5
  %neg = xor i32 %shl, -1
  %both_edges = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %both_edges to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %both_edges, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %both_edges, align 4
  %10 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 8, label %sw.bb40
    i32 4, label %sw.bb43
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwdata = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwdata, align 4
  %rise_edge = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %rise_edge to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rise_edge, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwdata2 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %hwdata2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwdata2, align 4
  %fall_edge = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %fall_edge to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fall_edge, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %hwdata4 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %hwdata4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwdata4, align 4
  %edge_sel_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %edge_sel_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %edge_sel_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp = icmp sgt i32 %22, -1
  br i1 %cmp, label %sw.epilog.thread, label %if.else

if.else:                                          ; preds = %sw.bb3
  %gc5 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 6
  %get = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 6, i32 10
  %23 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get, align 4
  %call7 = tail call i32 %24(ptr noundef %gc5, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %25 = ptrtoint ptr %hwdata4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwdata4, align 4
  br i1 %tobool.not, label %if.else16, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %low_level = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %low_level to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %low_level, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_set_irq_type.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_set_irq_type, %if.end36)) #6
          to label %if.then15 [label %if.end36], !srcloc !105

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gpio_set_irq_type.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.21, i32 noundef %5) #6
  br label %if.end36

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %high_level = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %26, i32 0, i32 9
  %29 = ptrtoint ptr %high_level to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %high_level, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_set_irq_type.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_set_irq_type, %if.end36)) #6
          to label %if.then32 [label %if.end36], !srcloc !105

if.then32:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gpio_set_irq_type.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.22, i32 noundef %5) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.else16, %if.then15, %if.then8
  %edge.0 = phi i32 [ %28, %if.then15 ], [ %30, %if.then32 ], [ %28, %if.then8 ], [ %30, %if.else16 ]
  %31 = ptrtoint ptr %both_edges to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %both_edges, align 4
  %or = or i32 %32, %shl
  store i32 %or, ptr %both_edges, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwdata41 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 11
  %33 = ptrtoint ptr %hwdata41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwdata41, align 4
  %low_level42 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %low_level42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %low_level42, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwdata44 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 11
  %37 = ptrtoint ptr %hwdata44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hwdata44, align 4
  %high_level45 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %high_level45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %high_level45, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb40, %if.end36, %sw.bb1, %sw.bb
  %edge.1 = phi i32 [ %40, %sw.bb43 ], [ %36, %sw.bb40 ], [ %edge.0, %if.end36 ], [ %18, %sw.bb1 ], [ %14, %sw.bb ]
  %hwdata46 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 11
  %41 = ptrtoint ptr %hwdata46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hwdata46, align 4
  %edge_sel_reg47 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %edge_sel_reg47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %edge_sel_reg47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp48 = icmp sgt i32 %44, -1
  br i1 %cmp48, label %sw.epilog.if.then49_crit_edge, label %if.end79

sw.epilog.if.then49_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

sw.epilog.thread:                                 ; preds = %sw.bb3
  %45 = ptrtoint ptr %hwdata4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hwdata4, align 4
  %edge_sel_reg47164 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %edge_sel_reg47164 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %edge_sel_reg47164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp48165 = icmp sgt i32 %48, -1
  br i1 %cmp48165, label %sw.epilog.thread.if.then49_crit_edge, label %sw.epilog.thread.do.body102_crit_edge

sw.epilog.thread.do.body102_crit_edge:            ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

sw.epilog.thread.if.then49_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.then49:                                        ; preds = %sw.epilog.thread.if.then49_crit_edge, %sw.epilog.if.then49_crit_edge
  %49 = phi i32 [ %48, %sw.epilog.thread.if.then49_crit_edge ], [ %44, %sw.epilog.if.then49_crit_edge ]
  %hwdata46169 = phi ptr [ %hwdata4, %sw.epilog.thread.if.then49_crit_edge ], [ %hwdata46, %sw.epilog.if.then49_crit_edge ]
  %edge.1166 = phi i32 [ 4, %sw.epilog.thread.if.then49_crit_edge ], [ %edge.1, %sw.epilog.if.then49_crit_edge ]
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %edge.1166)
  %cmp56 = icmp eq i32 %edge.1166, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp56, label %if.end79.thread, label %if.end79.thread160

if.end79.thread:                                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %or62 = or i32 %53, %shl
  %54 = tail call i32 @llvm.bswap.i32(i32 %or62)
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %57 = ptrtoint ptr %hwdata46169 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hwdata46169, align 4
  %edge_sel_reg65 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %edge_sel_reg65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %edge_sel_reg65, align 4
  %add.ptr66 = getelementptr i8, ptr %56, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %54) #6, !srcloc !90
  br label %do.body102

if.end79.thread160:                               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %and73 = and i32 %53, %neg
  %61 = tail call i32 @llvm.bswap.i32(i32 %and73)
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %64 = ptrtoint ptr %hwdata46169 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hwdata46169, align 4
  %edge_sel_reg76 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %edge_sel_reg76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %edge_sel_reg76, align 4
  %add.ptr77 = getelementptr i8, ptr %63, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %61) #6, !srcloc !90
  br label %if.then81

if.end79:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %edge.1)
  %cmp80.not = icmp eq i32 %edge.1, 4
  br i1 %cmp80.not, label %if.end79.do.body102_crit_edge, label %if.end79.if.then81_crit_edge

if.end79.if.then81_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then81

if.end79.do.body102_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

if.then81:                                        ; preds = %if.end79.if.then81_crit_edge, %if.end79.thread160
  %hwdata46170 = phi ptr [ %hwdata46169, %if.end79.thread160 ], [ %hwdata46, %if.end79.if.then81_crit_edge ]
  %edge.1168 = phi i32 [ %edge.1166, %if.end79.thread160 ], [ %edge.1, %if.end79.if.then81_crit_edge ]
  %68 = ptrtoint ptr %hwdata46170 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hwdata46170, align 4
  %icr1_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %icr1_reg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %icr1_reg, align 4
  %and83 = lshr i32 %5, 2
  %shr = and i32 %and83, 4
  %add = add i32 %71, %shr
  %add.ptr84 = getelementptr i8, ptr %7, i32 %add
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #6, !srcloc !82
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %and85 = shl i32 %5, 1
  %shl91 = and i32 %and85, 30
  %shl92 = shl nuw i32 3, %shl91
  %neg93 = xor i32 %shl92, -1
  %and94 = and i32 %73, %neg93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %shl99 = shl i32 %edge.1168, %shl91
  %or100 = or i32 %and94, %shl99
  %74 = tail call i32 @llvm.bswap.i32(i32 %or100)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %74) #6, !srcloc !90
  br label %do.body102

do.body102:                                       ; preds = %if.then81, %if.end79.do.body102_crit_edge, %if.end79.thread, %sw.epilog.thread.do.body102_crit_edge
  %hwdata46172 = phi ptr [ %hwdata46169, %if.end79.thread ], [ %hwdata46, %if.end79.do.body102_crit_edge ], [ %hwdata46170, %if.then81 ], [ %hwdata4, %sw.epilog.thread.do.body102_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %75 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %78 = ptrtoint ptr %hwdata46172 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hwdata46172, align 4
  %isr_reg = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %isr_reg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %isr_reg, align 4
  %add.ptr108 = getelementptr i8, ptr %77, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %75) #6, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %do.body102, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body102 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_set_wake_irq(ptr nocapture noundef readonly %d, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %irq_high7 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %irq_high7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_high7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp10 = icmp ugt i32 %5, 15
  %or.cond27 = select i1 %tobool8.not, i1 %cmp10, i1 false
  br i1 %tobool.not, label %if.else6, label %if.then

if.then:                                          ; preds = %entry
  br i1 %or.cond27, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 1) #6
  br label %if.end18

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i28 = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 1) #6
  br label %if.end18

if.else6:                                         ; preds = %entry
  br i1 %or.cond27, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  %call.i29 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 0) #6
  br label %if.end18

if.else14:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  %irq15 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %irq15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq15, align 4
  %call.i30 = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 0) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then11, %if.else, %if.then2
  %ret.0 = phi i32 [ %call.i, %if.then2 ], [ %call.i28, %if.else ], [ %call.i29, %if.then11 ], [ %call.i30, %if.else14 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_irq_setup_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_gpio_mxc__231_550_gpio_mxc_init4, !1, !"__initcall__kmod_gpio_mxc__231_550_gpio_mxc_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-mxc.c", i32 550, i32 1}
!2 = !{ptr @__UNIQUE_ID_author232, !3, !"__UNIQUE_ID_author232", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-mxc.c", i32 552, i32 1}
!4 = !{ptr @__UNIQUE_ID_description233, !5, !"__UNIQUE_ID_description233", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-mxc.c", i32 553, i32 1}
!6 = !{ptr @__UNIQUE_ID_file234, !7, !"__UNIQUE_ID_file234", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-mxc.c", i32 554, i32 1}
!8 = !{ptr @__UNIQUE_ID_license235, !7, !"__UNIQUE_ID_license235", i1 false, i1 false}
!9 = !{ptr @mxc_gpio_syscore_ops, !10, !"mxc_gpio_syscore_ops", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-mxc.c", i32 530, i32 27}
!11 = !{ptr @mxc_gpio_ports, !12, !"mxc_gpio_ports", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-mxc.c", i32 142, i32 8}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-mxc.c", i32 523, i32 4}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mxc_gpio_syscore_resume._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @mxc_gpio_syscore_resume._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-mxc.c", i32 537, i32 11}
!21 = !{ptr @mxc_gpio_driver, !22, !"mxc_gpio_driver", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-mxc.c", i32 535, i32 31}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-mxc.c", i32 396, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mxc_gpio_probe._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @mxc_gpio_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-mxc.c", i32 400, i32 34}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-mxc.c", i32 407, i32 34}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-mxc.c", i32 436, i32 55}
!36 = !{ptr @mxc_gpio_probe.lock_key, !37, !"lock_key", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-mxc.c", i32 439, i32 8}
!38 = !{ptr @mxc_gpio_probe.request_key, !37, !"request_key", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-mxc.c", i32 471, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mxc_gpio_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mxc_gpio_probe._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-mxc.c", i32 223, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mxc_flip_edge.__UNIQUE_ID_ddebug229, !45, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-mxc.c", i32 226, i32 3}
!51 = !{ptr @mxc_flip_edge.__UNIQUE_ID_ddebug230, !50, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-mxc.c", i32 228, i32 3}
!54 = !{ptr @mxc_flip_edge._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mxc_flip_edge._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-mxc.c", i32 170, i32 5}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @gpio_set_irq_type.__UNIQUE_ID_ddebug227, !57, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-mxc.c", i32 173, i32 5}
!62 = !{ptr @gpio_set_irq_type.__UNIQUE_ID_ddebug228, !61, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!63 = !{ptr @mxc_gpio_dt_ids, !64, !"mxc_gpio_dt_ids", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-mxc.c", i32 127, i32 34}
!65 = !{ptr @imx1_imx21_gpio_hwdata, !66, !"imx1_imx21_gpio_hwdata", i1 false, i1 false}
!66 = !{!"../drivers/gpio/gpio-mxc.c", i32 67, i32 31}
!67 = !{ptr @imx31_gpio_hwdata, !68, !"imx31_gpio_hwdata", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-mxc.c", i32 82, i32 31}
!69 = !{ptr @imx35_gpio_hwdata, !70, !"imx35_gpio_hwdata", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-mxc.c", i32 97, i32 31}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
!82 = !{i64 4242292}
!83 = !{i64 2154032527}
!84 = !{i64 2154033118}
!85 = !{i64 2154033704}
!86 = !{i64 2154034295}
!87 = !{i64 2154034906}
!88 = !{i64 2154035487}
!89 = !{i64 2154035768}
!90 = !{i64 4241874}
!91 = !{i64 2154036310}
!92 = !{i64 2154036849}
!93 = !{i64 2154037387}
!94 = !{i64 2154037941}
!95 = !{i64 2154038493}
!96 = !{i64 2154029126}
!97 = !{i64 2154029570}
!98 = !{i64 2154026380}
!99 = !{i64 2154026966}
!100 = !{i32 0, i32 33}
!101 = !{i64 2154021930}
!102 = !{i64 2154022516}
!103 = !{!"auto-init"}
!104 = !{i64 2154014355}
!105 = !{i64 2148734161, i64 2148734166, i64 2148734179, i64 2148734223, i64 2148734257, i64 2148734278}
!106 = !{i64 2154021114}
!107 = !{i64 2154011413}
!108 = !{i64 2154012956}
!109 = !{i64 2154013179}
!110 = !{i64 2154013676}
