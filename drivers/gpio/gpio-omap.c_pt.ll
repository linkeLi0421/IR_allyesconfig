; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-omap.c_pt.bc'
source_filename = "../drivers/gpio/gpio-omap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.omap_gpio_platform_data = type { i32, i32, i32, i8, i8, i8, i32, ptr, ptr }
%struct.omap_gpio_reg_offs = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8 }
%struct.gpio_bank = type { ptr, ptr, i32, i32, i32, %struct.gpio_regs, i32, i32, i32, %struct.raw_spinlock, %struct.raw_spinlock, %struct.gpio_chip, ptr, %struct.notifier_block, i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr }
%struct.gpio_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_omap__228_1576_omap_gpio_drv_reg2 = internal global ptr @omap_gpio_drv_reg, section ".initcall2.init", align 4
@omap_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_gpio_probe, ptr @omap_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_gpio_exit = internal global ptr @omap_gpio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [39 x i8] c"gpio_omap.description=omap gpio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias230 = internal constant [35 x i8] c"gpio_omap.alias=platform:gpio-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [38 x i8] c"gpio_omap.file=drivers/gpio/gpio-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [25 x i8] c"gpio_omap.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap_gpio\00", [22 x i8] zeroinitializer }, align 32
@omap_gpio_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_pdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@gpio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_gpio_suspend, ptr @omap_gpio_resume, ptr @omap_gpio_suspend, ptr @omap_gpio_resume, ptr @omap_gpio_suspend, ptr @omap_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_gpio_runtime_suspend, ptr @omap_gpio_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dummy_irq_chip = external dso_local local_unnamed_addr global %struct.irq_chip, align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get irq resource\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,gpio-always-on\00", [46 x i8] zeroinitializer }, align 32
@omap_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&bank->lock\00", [20 x i8] zeroinitializer }, align 32
@omap_gpio_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&bank->wa_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dbclk\00", [26 x i8] zeroinitializer }, align 32
@omap_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1452, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not get gpio dbck. Disable debounce\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_gpio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpio/gpio-omap.c\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_gpio_probe._entry_ptr = internal global ptr @omap_gpio_probe._entry, section ".printk_index", align 4
@omap_mpuio_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.12, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @omap_mpuio_driver, i64 20), ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@omap_mpuio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_mpuio_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mpuio\00", [26 x i8] zeroinitializer }, align 32
@omap_mpuio_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_mpuio_suspend_noirq, ptr @omap_mpuio_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_gpio_chip_init.gpio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio-%d-%d\00", [21 x i8] zeroinitializer }, align 32
@omap_gpio_chip_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@omap_gpio_chip_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not register gpio chip\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_gpio_debounce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.9, i32 891, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Could not set line %u debounce to %u microseconds (%d)\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_gpio_debounce\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_gpio_debounce._entry_ptr = internal global ptr @omap_gpio_debounce._entry, section ".printk_index", align 4
@omap_gpio_irq_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gpio irq%i while runtime suspended?\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_gpio_show_rev.called = internal global { i1, [31 x i8] } zeroinitializer, align 32
@omap_gpio_show_rev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016OMAP GPIO hardware version %d.%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_gpio_show_rev\00", [45 x i8] zeroinitializer }, align 32
@omap_gpio_show_rev._entry_ptr = internal global ptr @omap_gpio_show_rev._entry, section ".printk_index", align 4
@omap4_pdata = internal constant { %struct.omap_gpio_platform_data, [36 x i8] } { %struct.omap_gpio_platform_data { i32 0, i32 32, i32 0, i8 1, i8 0, i8 0, i32 0, ptr @omap4_gpio_regs, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap3_pdata = internal constant { %struct.omap_gpio_platform_data, [36 x i8] } { %struct.omap_gpio_platform_data { i32 0, i32 32, i32 0, i8 1, i8 0, i8 0, i32 0, ptr @omap2_gpio_regs, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap2_pdata = internal constant { %struct.omap_gpio_platform_data, [36 x i8] } { %struct.omap_gpio_platform_data { i32 0, i32 32, i32 0, i8 0, i8 0, i8 0, i32 0, ptr @omap2_gpio_regs, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap4_gpio_regs = internal constant { %struct.omap_gpio_reg_offs, [40 x i8] } { %struct.omap_gpio_reg_offs { i16 0, i16 16, i16 308, i16 312, i16 316, i16 404, i16 400, i16 44, i16 48, i16 36, i16 40, i16 52, i16 56, i16 52, i16 60, i16 340, i16 336, i16 304, i16 68, i16 320, i16 324, i16 328, i16 332, i16 0, i16 0, i16 0, i16 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@omap2_gpio_regs = internal constant { %struct.omap_gpio_reg_offs, [40 x i8] } { %struct.omap_gpio_reg_offs { i16 0, i16 16, i16 52, i16 56, i16 60, i16 148, i16 144, i16 24, i16 40, i16 0, i16 0, i16 28, i16 44, i16 100, i16 96, i16 84, i16 80, i16 48, i16 32, i16 64, i16 68, i16 72, i16 76, i16 0, i16 0, i16 0, i16 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"omap_gpio_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1557, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1561, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"omap_gpio_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1354, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"gpio_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1551, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1411, i32 40 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1424, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1439, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1440, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1449, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1451, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"omap_mpuio_device\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 754, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"omap_mpuio_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 747, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 755, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"omap_mpuio_dev_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 741, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 992, i32 13 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1017, i32 57 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1051, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1053, i32 48 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 889, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 571, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant [26 x i8] c"omap_gpio_show_rev.called\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 956, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"omap4_pdata\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1348, i32 45 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"omap3_pdata\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1342, i32 45 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"omap2_pdata\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1336, i32 45 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"omap4_gpio_regs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1310, i32 40 }
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"omap2_gpio_regs\00", align 1
@___asan_gen_.138 = private constant [28 x i8] c"../drivers/gpio/gpio-omap.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1286, i32 40 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_omap_gpio_exit, ptr @__initcall__kmod_gpio_omap__228_1576_omap_gpio_drv_reg2, ptr @omap_gpio_debounce._entry, ptr @omap_gpio_debounce._entry_ptr, ptr @omap_gpio_exit, ptr @omap_gpio_probe._entry, ptr @omap_gpio_probe._entry_ptr, ptr @omap_gpio_show_rev._entry, ptr @omap_gpio_show_rev._entry_ptr, ptr @omap_gpio_driver, ptr @.str, ptr @omap_gpio_match, ptr @gpio_pm_ops, ptr @.str.1, ptr @.str.2, ptr @omap_gpio_probe.__key, ptr @.str.3, ptr @omap_gpio_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @omap_mpuio_device, ptr @omap_mpuio_driver, ptr @.str.12, ptr @omap_mpuio_dev_pm_ops, ptr @omap_gpio_chip_init.gpio, ptr @.str.13, ptr @omap_gpio_chip_init.lock_key, ptr @omap_gpio_chip_init.request_key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @omap_gpio_show_rev.called, ptr @.str.19, ptr @.str.20, ptr @omap4_pdata, ptr @omap3_pdata, ptr @omap2_pdata, ptr @omap4_gpio_regs, ptr @omap2_gpio_regs], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mpuio_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mpuio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mpuio_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_chip_init.gpio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_chip_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_chip_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_debounce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_show_rev.called to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpio_show_rev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pdata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pdata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pdata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_gpio_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_gpio_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_drv_reg() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_gpio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end:                                         ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond217 = phi ptr [ %3, %cond.end.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 580, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i190 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #5
  %tobool9.not = icmp eq ptr %call.i190, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %irq_startup = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 2
  %4 = ptrtoint ptr %irq_startup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @omap_gpio_irq_startup, ptr %irq_startup, align 4
  %irq_shutdown = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 3
  %5 = ptrtoint ptr %irq_shutdown to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @omap_gpio_irq_shutdown, ptr %irq_shutdown, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.irq_chip, ptr @dummy_irq_chip, i32 0, i32 6) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.irq_chip, ptr @dummy_irq_chip, i32 0, i32 6), align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 6
  %7 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @omap_gpio_mask_irq, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 9
  %9 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @omap_gpio_unmask_irq, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 13
  %10 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @omap_gpio_irq_type, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 14
  %11 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @omap_gpio_wake_enable, ptr %irq_set_wake, align 4
  %irq_bus_lock = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 15
  %12 = ptrtoint ptr %irq_bus_lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @omap_gpio_irq_bus_lock, ptr %irq_bus_lock, align 4
  %irq_bus_sync_unlock = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 16
  %13 = ptrtoint ptr %irq_bus_sync_unlock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gpio_irq_bus_sync_unlock, ptr %irq_bus_sync_unlock, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.dev_name.exit_crit_edge

if.end11.dev_name.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end11.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %name, align 4
  %flags = getelementptr inbounds %struct.irq_chip, ptr %call.i190, i32 0, i32 33
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %flags, align 4
  %20 = ptrtoint ptr %call.i190 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %call.i190, align 4
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call14, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp = icmp slt i32 %call14, 1
  br i1 %cmp, label %if.then16, label %if.end24

if.then16:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool18.not = icmp eq i32 %call14, 0
  br i1 %tobool18.not, label %if.then19, label %if.then16.if.end21_crit_edge

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -6, ptr %irq, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then16.if.end21_crit_edge
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %24, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end24:                                         ; preds = %dev_name.exit
  %parent = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 4
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %owner, align 4
  %dbck_flag = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %cond217, i32 0, i32 3
  %27 = ptrtoint ptr %dbck_flag to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dbck_flag, align 4, !range !91
  %dbck_flag27 = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 20
  %29 = ptrtoint ptr %dbck_flag27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %dbck_flag27, align 2
  %bank_stride = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %cond217, i32 0, i32 2
  %30 = ptrtoint ptr %bank_stride to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bank_stride, align 4
  %stride = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 23
  %32 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %stride, align 4
  %bank_width = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %cond217, i32 0, i32 1
  %33 = ptrtoint ptr %bank_width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bank_width, align 4
  %width = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 24
  %35 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %width, align 4
  %is_mpuio = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %cond217, i32 0, i32 5
  %36 = ptrtoint ptr %is_mpuio to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_mpuio, align 2, !range !91
  %is_mpuio29 = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 19
  %38 = ptrtoint ptr %is_mpuio29 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %is_mpuio29, align 1
  %non_wakeup_gpios = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %cond217, i32 0, i32 6
  %39 = ptrtoint ptr %non_wakeup_gpios to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %non_wakeup_gpios, align 4
  %non_wakeup_gpios31 = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %non_wakeup_gpios31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %non_wakeup_gpios31, align 4
  %regs = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %cond217, i32 0, i32 7
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %regs32 = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %regs32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %regs32, align 4
  %tobool33.not = icmp eq ptr %1, null
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end24
  %call.i191 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i191, null
  br i1 %tobool.i.not, label %if.then36, label %if.then34.if.end47_crit_edge

if.then34.if.end47_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %loses_context = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 21
  %45 = ptrtoint ptr %loses_context to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %loses_context, align 1
  br label %if.end47

if.else:                                          ; preds = %if.end24
  %loses_context38 = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %cond217, i32 0, i32 4
  %46 = ptrtoint ptr %loses_context38 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %loses_context38, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool39.not = icmp eq i8 %47, 0
  %loses_context40 = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 21
  %48 = ptrtoint ptr %loses_context40 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %loses_context40, align 1
  br i1 %tobool39.not, label %if.else.if.end47_crit_edge, label %if.then44

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %get_context_loss_count = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %cond217, i32 0, i32 8
  %49 = ptrtoint ptr %get_context_loss_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %get_context_loss_count, align 4
  %get_context_loss_count45 = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 27
  %51 = ptrtoint ptr %get_context_loss_count45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %get_context_loss_count45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.else.if.end47_crit_edge, %if.then36, %if.then34.if.end47_crit_edge
  %52 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs32, align 4
  %set_dataout = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %set_dataout to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %set_dataout, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool49.not = icmp eq i16 %55, 0
  br i1 %tobool49.not, label %if.end47.if.else55_crit_edge, label %land.lhs.true

if.end47.if.else55_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else55

land.lhs.true:                                    ; preds = %if.end47
  %clr_dataout = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %53, i32 0, i32 6
  %56 = ptrtoint ptr %clr_dataout to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %clr_dataout, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool52.not = icmp eq i16 %57, 0
  br i1 %tobool52.not, label %land.lhs.true.if.else55_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true.if.else55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else55

if.else55:                                        ; preds = %land.lhs.true.if.else55_crit_edge, %if.end47.if.else55_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.else55, %land.lhs.true.do.body_crit_edge
  %omap_set_gpio_dataout_reg.sink = phi ptr [ @omap_set_gpio_dataout_mask, %if.else55 ], [ @omap_set_gpio_dataout_reg, %land.lhs.true.do.body_crit_edge ]
  %set_dataout54 = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 26
  %58 = ptrtoint ptr %set_dataout54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %omap_set_gpio_dataout_reg.sink, ptr %set_dataout54, align 4
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @omap_gpio_probe.__key, i16 noundef signext 2) #5
  %wa_lock = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %wa_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @omap_gpio_probe.__key.4, i16 noundef signext 2) #5
  %call61 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call61, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then64, label %if.end67

if.then64:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %call61 to i32
  br label %cleanup

if.end67:                                         ; preds = %do.body
  %61 = ptrtoint ptr %dbck_flag27 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %dbck_flag27, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool69.not = icmp eq i8 %62, 0
  br i1 %tobool69.not, label %if.end67.if.end83_crit_edge, label %if.then70

if.end67.if.end83_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then70:                                        ; preds = %if.end67
  %call71 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %dbck = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 12
  %63 = ptrtoint ptr %dbck to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call71, ptr %dbck, align 4
  %cmp.i192 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %do.end77, label %if.else79

do.end77:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  %64 = ptrtoint ptr %dbck_flag27 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %dbck_flag27, align 2
  br label %if.end83

if.else79:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  %call81 = tail call i32 @clk_prepare(ptr noundef %call71) #5
  br label %if.end83

if.end83:                                         ; preds = %if.else79, %do.end77, %if.end67.if.end83_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i193 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  %66 = ptrtoint ptr %is_mpuio29 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %is_mpuio29, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool86.not = icmp eq i8 %67, 0
  br i1 %tobool86.not, label %if.end88.thread, label %if.then87

if.end88.thread:                                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %70 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %71)
  %cmp.i197218 = icmp eq i32 %71, 16
  %spec.store.select.i219 = select i1 %cmp.i197218, i32 65535, i32 -1
  br label %if.end4.i

if.then87:                                        ; preds = %if.end83
  store ptr %call.i, ptr getelementptr inbounds (%struct.platform_device, ptr @omap_mpuio_device, i32 0, i32 3, i32 8), align 4
  %call.i194 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_mpuio_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp.i195 = icmp eq i32 %call.i194, 0
  br i1 %cmp.i195, label %if.then.i, label %if.then87.if.end88_crit_edge

if.then87.if.end88_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then.i:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 @platform_device_register(ptr noundef nonnull @omap_mpuio_device) #5
  br label %if.end88

if.end88:                                         ; preds = %if.then.i, %if.then87.if.end88_crit_edge
  %72 = ptrtoint ptr %is_mpuio29 to i32
  call void @__asan_load1_noabort(i32 %72)
  %.pr = load i8, ptr %is_mpuio29, align 1
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  %75 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %76)
  %cmp.i197 = icmp eq i32 %76, 16
  %spec.store.select.i = select i1 %cmp.i197, i32 65535, i32 -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i198 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i198, label %if.end88.if.end4.i_crit_edge, label %if.then2.i

if.end88.if.end4.i_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select.i) #5
  %78 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs32, align 4
  %irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %irqenable.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %irqenable.i, align 2
  %conv.i = zext i16 %81 to i32
  %add.ptr.i = getelementptr i8, ptr %74, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %77) #5, !srcloc !92
  br label %omap_gpio_mod_init.exit

if.end4.i:                                        ; preds = %if.end88.if.end4.i_crit_edge, %if.end88.thread
  %spec.store.select.i221 = phi i32 [ %spec.store.select.i219, %if.end88.thread ], [ %spec.store.select.i, %if.end88.if.end4.i_crit_edge ]
  %82 = phi ptr [ %69, %if.end88.thread ], [ %74, %if.end88.if.end4.i_crit_edge ]
  %83 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs32, align 4
  %irqenable6.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %irqenable6.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %irqenable6.i, align 2
  %conv7.i = zext i16 %86 to i32
  %add.ptr8.i = getelementptr i8, ptr %82, i32 %conv7.i
  %irqenable_inv.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %84, i32 0, i32 27
  %87 = ptrtoint ptr %irqenable_inv.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %irqenable_inv.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool10.not.i = icmp eq i8 %88, 0
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #5, !srcloc !93
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #5
  %or.i.i = or i32 %90, %spec.store.select.i221
  %neg.i.i = xor i32 %spec.store.select.i221, -1
  %and.i.i = and i32 %90, %neg.i.i
  %val.0.i.i = select i1 %tobool10.not.i, i32 %and.i.i, i32 %or.i.i
  %91 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %91) #5, !srcloc !92
  %92 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs32, align 4
  %irqstatus.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %irqstatus.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %irqstatus.i, align 2
  %conv12.i = zext i16 %95 to i32
  %add.ptr13.i = getelementptr i8, ptr %82, i32 %conv12.i
  %irqenable_inv15.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %93, i32 0, i32 27
  %96 = ptrtoint ptr %irqenable_inv15.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %irqenable_inv15.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool16.not.i = icmp eq i8 %97, 0
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #5, !srcloc !93
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #5
  %or.i61.i = or i32 %99, %spec.store.select.i221
  %and.i63.i = and i32 %99, %neg.i.i
  %val.0.i64.i = select i1 %tobool16.not.i, i32 %or.i61.i, i32 %and.i63.i
  %100 = tail call i32 @llvm.bswap.i32(i32 %val.0.i64.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %100) #5, !srcloc !92
  %101 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs32, align 4
  %debounce_en.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %102, i32 0, i32 16
  %103 = ptrtoint ptr %debounce_en.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %debounce_en.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool19.not.i = icmp eq i16 %104, 0
  br i1 %tobool19.not.i, label %if.end4.i.if.end25.i_crit_edge, label %if.then20.i

if.end4.i.if.end25.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i = zext i16 %104 to i32
  %add.ptr24.i = getelementptr i8, ptr %82, i32 %conv23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #5, !srcloc !92
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %if.end4.i.if.end25.i_crit_edge
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 4
  %107 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs32, align 4
  %direction.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %direction.i, align 2
  %conv28.i = zext i16 %110 to i32
  %add.ptr29.i = getelementptr i8, ptr %106, i32 %conv28.i
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #5, !srcloc !93
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #5
  %oe.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 5, i32 5
  %113 = ptrtoint ptr %oe.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %oe.i, align 4
  %114 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs32, align 4
  %ctrl.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %115, i32 0, i32 17
  %116 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %ctrl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool32.not.i = icmp eq i16 %117, 0
  br i1 %tobool32.not.i, label %if.end25.i.omap_gpio_mod_init.exit_crit_edge, label %if.then33.i

if.end25.i.omap_gpio_mod_init.exit_crit_edge:     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_mod_init.exit

if.then33.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv36.i = zext i16 %117 to i32
  %add.ptr37.i = getelementptr i8, ptr %82, i32 %conv36.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 0) #5, !srcloc !92
  br label %omap_gpio_mod_init.exit

omap_gpio_mod_init.exit:                          ; preds = %if.then33.i, %if.end25.i.omap_gpio_mod_init.exit_crit_edge, %if.then2.i
  %chip.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11
  %request.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 5
  %118 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @omap_gpio_request, ptr %request.i, align 4
  %free.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 6
  %119 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @omap_gpio_free, ptr %free.i, align 4
  %get_direction.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 7
  %120 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @omap_gpio_get_direction, ptr %get_direction.i, align 4
  %direction_input.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 8
  %121 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @omap_gpio_input, ptr %direction_input.i, align 4
  %get.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 10
  %122 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @omap_gpio_get, ptr %get.i, align 4
  %get_multiple.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 11
  %123 = ptrtoint ptr %get_multiple.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @omap_gpio_get_multiple, ptr %get_multiple.i, align 4
  %direction_output.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 9
  %124 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @omap_gpio_output, ptr %direction_output.i, align 4
  %set_config.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 14
  %125 = ptrtoint ptr %set_config.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @omap_gpio_set_config, ptr %set_config.i, align 4
  %set.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 12
  %126 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @omap_gpio_set, ptr %set.i, align 4
  %set_multiple.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 13
  %127 = ptrtoint ptr %set_multiple.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @omap_gpio_set_multiple, ptr %set_multiple.i, align 4
  %128 = ptrtoint ptr %is_mpuio29 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %is_mpuio29, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i200 = icmp eq i8 %129, 0
  br i1 %tobool.not.i200, label %if.else.i, label %if.then.i202

if.then.i202:                                     ; preds = %omap_gpio_mod_init.exit
  %130 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.12, ptr %chip.i, align 4
  %131 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs32, align 4
  %wkup_en.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %132, i32 0, i32 18
  %133 = ptrtoint ptr %wkup_en.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %wkup_en.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool12.not.i = icmp eq i16 %134, 0
  br i1 %tobool12.not.i, label %if.then.i202.if.end25.i206_crit_edge, label %if.then13.i

if.then.i202.if.end25.i206_crit_edge:             ; preds = %if.then.i202
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i206

if.then13.i:                                      ; preds = %if.then.i202
  call void @__sanitizer_cov_trace_pc() #7
  %135 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr getelementptr inbounds (%struct.platform_device, ptr @omap_mpuio_device, i32 0, i32 3), ptr %parent, align 4
  br label %if.end25.i206

if.else.i:                                        ; preds = %omap_gpio_mod_init.exit
  %136 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %parent, align 4
  %138 = load i32, ptr @omap_gpio_chip_init.gpio, align 4
  %139 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %width, align 4
  %add.i = add i32 %138, -1
  %sub.i = add i32 %add.i, %140
  %call.i204 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %137, i32 noundef 3264, ptr noundef nonnull @.str.13, i32 noundef %138, i32 noundef %sub.i) #5
  %tobool18.not.i = icmp eq ptr %call.i204, null
  br i1 %tobool18.not.i, label %if.else.i.if.then91_crit_edge, label %if.end20.i

if.else.i.if.then91_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then91

if.end20.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i204, ptr %chip.i, align 4
  %142 = load i32, ptr @omap_gpio_chip_init.gpio, align 4
  br label %if.end25.i206

if.end25.i206:                                    ; preds = %if.end20.i, %if.then13.i, %if.then.i202.if.end25.i206_crit_edge
  %.sink.i = phi i32 [ %142, %if.end20.i ], [ 192, %if.then13.i ], [ 192, %if.then.i202.if.end25.i206_crit_edge ]
  %base24.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 19
  %143 = ptrtoint ptr %base24.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %.sink.i, ptr %base24.i, align 4
  %144 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %width, align 4
  %conv.i205 = trunc i32 %145 to i16
  %ngpio.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 20
  %146 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv.i205, ptr %ngpio.i, align 4
  %147 = ptrtoint ptr %is_mpuio29 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %is_mpuio29, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool29.not.i = icmp eq i8 %148, 0
  br i1 %tobool29.not.i, label %if.end25.i206.if.end35.i_crit_edge, label %land.lhs.true.i

if.end25.i206.if.end35.i_crit_edge:               ; preds = %if.end25.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %if.end25.i206
  %149 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs32, align 4
  %wkup_en32.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %150, i32 0, i32 18
  %151 = ptrtoint ptr %wkup_en32.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %wkup_en32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool33.not.i = icmp eq i16 %152, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %land.lhs.true.i.if.end35.i_crit_edge

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %irq_set_wake, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %land.lhs.true.i.if.end35.i_crit_edge, %if.end25.i206.if.end35.i_crit_edge
  %irq37.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 37
  %154 = ptrtoint ptr %irq37.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call.i190, ptr %irq37.i, align 4
  %handler.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 37, i32 9
  %155 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @handle_bad_irq, ptr %handler.i, align 4
  %default_type.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 37, i32 10
  %156 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %default_type.i, align 4
  %num_parents.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 37, i32 15
  %157 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %num_parents.i, align 4
  %parents.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 37, i32 16
  %158 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %irq, ptr %parents.i, align 4
  %first.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 11, i32 37, i32 23
  %159 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %first.i, align 4
  %call41.i = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip.i, ptr noundef nonnull %call.i, ptr noundef nonnull @omap_gpio_chip_init.lock_key, ptr noundef nonnull @omap_gpio_chip_init.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  %160 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %parent, align 4
  br i1 %tobool42.not.i, label %if.end47.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  %call46.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %161, i32 noundef %call41.i, ptr noundef nonnull @.str.14) #5
  br label %omap_gpio_chip_init.exit

if.end47.i:                                       ; preds = %if.end35.i
  %162 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %irq, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %161, i32 0, i32 3
  %164 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %165, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end47.i.dev_name.exit.i_crit_edge

if.end47.i.dev_name.exit.i_crit_edge:             ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %166 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %161, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end47.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %167, %if.end.i.i ], [ %165, %if.end47.i.dev_name.exit.i_crit_edge ]
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %161, i32 noundef %163, ptr noundef nonnull @omap_gpio_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool55.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool55.not.i, label %dev_name.exit.i.if.end58.i_crit_edge, label %if.then56.i

dev_name.exit.i.if.end58.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.then56.i:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiochip_remove(ptr noundef %chip.i) #5
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then56.i, %dev_name.exit.i.if.end58.i_crit_edge
  %168 = ptrtoint ptr %is_mpuio29 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %is_mpuio29, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool60.not.i = icmp eq i8 %169, 0
  br i1 %tobool60.not.i, label %if.then61.i, label %if.end58.i.omap_gpio_chip_init.exit_crit_edge

if.end58.i.omap_gpio_chip_init.exit_crit_edge:    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_chip_init.exit

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %width, align 4
  %172 = load i32, ptr @omap_gpio_chip_init.gpio, align 4
  %add63.i = add i32 %172, %171
  store i32 %add63.i, ptr @omap_gpio_chip_init.gpio, align 4
  br label %omap_gpio_chip_init.exit

omap_gpio_chip_init.exit:                         ; preds = %if.then61.i, %if.end58.i.omap_gpio_chip_init.exit_crit_edge, %if.then43.i
  %retval.0.i207 = phi i32 [ %call46.i, %if.then43.i ], [ %call.i.i, %if.then61.i ], [ %call.i.i, %if.end58.i.omap_gpio_chip_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i207)
  %tobool90.not = icmp eq i32 %retval.0.i207, 0
  br i1 %tobool90.not, label %if.end98, label %omap_gpio_chip_init.exit.if.then91_crit_edge

omap_gpio_chip_init.exit.if.then91_crit_edge:     ; preds = %omap_gpio_chip_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then91

if.then91:                                        ; preds = %omap_gpio_chip_init.exit.if.then91_crit_edge, %if.else.i.if.then91_crit_edge
  %retval.0.i207224 = phi i32 [ %retval.0.i207, %omap_gpio_chip_init.exit.if.then91_crit_edge ], [ -12, %if.else.i.if.then91_crit_edge ]
  %call.i208 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %173 = ptrtoint ptr %dbck_flag27 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %dbck_flag27, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool94.not = icmp eq i8 %174, 0
  br i1 %tobool94.not, label %if.then91.cleanup_crit_edge, label %if.then95

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then95:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  %dbck96 = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 12
  %175 = ptrtoint ptr %dbck96 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dbck96, align 4
  tail call void @clk_unprepare(ptr noundef %176) #5
  br label %cleanup

if.end98:                                         ; preds = %omap_gpio_chip_init.exit
  %.b12.i = load i1, ptr @omap_gpio_show_rev.called, align 1
  br i1 %.b12.i, label %if.end98.omap_gpio_show_rev.exit_crit_edge, label %lor.lhs.false.i

if.end98.omap_gpio_show_rev.exit_crit_edge:       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_show_rev.exit

lor.lhs.false.i:                                  ; preds = %if.end98
  %177 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs32, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %178, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %180)
  %cmp.i210 = icmp eq i16 %180, -1
  br i1 %cmp.i210, label %lor.lhs.false.i.omap_gpio_show_rev.exit_crit_edge, label %if.end.i213

lor.lhs.false.i.omap_gpio_show_rev.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_show_rev.exit

if.end.i213:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i211 = zext i16 %180 to i32
  %181 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %call.i, align 4
  %add.ptr.i212 = getelementptr i8, ptr %182, i32 %conv.i211
  %183 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i212) #5, !srcloc !94
  %184 = tail call i16 @llvm.bswap.i16(i16 %183) #5
  %conv5.i = zext i16 %184 to i32
  %shr.i = lshr i32 %conv5.i, 4
  %and.i = and i32 %shr.i, 15
  %and7.i = and i32 %conv5.i, 15
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %and.i, i32 noundef %and7.i) #8
  store i1 true, ptr @omap_gpio_show_rev.called, align 1
  br label %omap_gpio_show_rev.exit

omap_gpio_show_rev.exit:                          ; preds = %if.end.i213, %lor.lhs.false.i.omap_gpio_show_rev.exit_crit_edge, %if.end98.omap_gpio_show_rev.exit_crit_edge
  %nb = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 13
  %185 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @gpio_omap_cpu_notifier, ptr %nb, align 4
  %call100 = tail call i32 @cpu_pm_register_notifier(ptr noundef %nb) #5
  %call.i214 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #5
  br label %cleanup

cleanup:                                          ; preds = %omap_gpio_show_rev.exit, %if.then95, %if.then91.cleanup_crit_edge, %if.then64, %if.end21, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end21 ], [ %60, %if.then64 ], [ 0, %omap_gpio_show_rev.exit ], [ -22, %cond.end.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %retval.0.i207224, %if.then95 ], [ %retval.0.i207224, %if.then91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nb = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 13
  %call1 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %nb) #5
  %chip = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 11
  tail call void @gpiochip_remove(ptr noundef %chip) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %dbck_flag = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %dbck_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dbck_flag, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dbck = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dbck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbck, align 4
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_irq_startup(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %mod_usage = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 15
  %4 = ptrtoint ptr %mod_usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mod_usage, align 4
  %shl = shl nuw i32 1, %3
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call1.i, align 4
  %regs.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %direction.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %direction.i, align 2
  %conv.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %or.i.i = or i32 %13, %shl
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #5, !srcloc !92
  %oe.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 5
  %15 = ptrtoint ptr %oe.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i.i, ptr %oe.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs.i22 = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i22, align 4
  %pinctrl.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pinctrl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1.i, align 4
  %conv.i23 = zext i16 %19 to i32
  %add.ptr.i24 = getelementptr i8, ptr %21, i32 %conv.i23
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #5, !srcloc !93
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %or.i = or i32 %23, %shl
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %24) #5, !srcloc !92
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %25 = ptrtoint ptr %regs.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i22, align 4
  %ctrl.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ctrl.i, align 2
  %conv4.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool5.not.i = icmp eq i16 %28, 0
  br i1 %tobool5.not.i, label %if.end.i.omap_enable_gpio_module.exit_crit_edge, label %land.lhs.true.i

if.end.i.omap_enable_gpio_module.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_enable_gpio_module.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %29 = ptrtoint ptr %mod_usage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mod_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool6.not.i = icmp eq i32 %30, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.omap_enable_gpio_module.exit_crit_edge

land.lhs.true.i.omap_enable_gpio_module.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_enable_gpio_module.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %irq_usage.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 16
  %31 = ptrtoint ptr %irq_usage.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_usage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool7.not.i = icmp eq i32 %32, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %lor.lhs.false.i.omap_enable_gpio_module.exit_crit_edge

lor.lhs.false.i.omap_enable_gpio_module.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_enable_gpio_module.exit

if.then8.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call1.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %34, i32 %conv4.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #5, !srcloc !93
  %36 = and i32 %35, -16777217
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %36) #5, !srcloc !92
  %ctrl19.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 4
  %38 = ptrtoint ptr %ctrl19.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ctrl19.i, align 4
  br label %omap_enable_gpio_module.exit

omap_enable_gpio_module.exit:                     ; preds = %if.then8.i, %lor.lhs.false.i.omap_enable_gpio_module.exit_crit_edge, %land.lhs.true.i.omap_enable_gpio_module.exit_crit_edge, %if.end.i.omap_enable_gpio_module.exit_crit_edge
  %irq_usage = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 16
  %39 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_usage, align 4
  %or = or i32 %40, %shl
  store i32 %or, ptr %irq_usage, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  tail call void @omap_gpio_unmask_irq(ptr noundef %d)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_gpio_irq_shutdown(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %irq_usage = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 16
  %4 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_usage, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %irq_usage, align 4
  %call2 = tail call fastcc i32 @omap_set_gpio_triggering(ptr noundef %call1.i, i32 noundef %3, i32 noundef 0)
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call1.i, align 4
  %regs.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %irqstatus.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %irqstatus.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %irqstatus.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #5, !srcloc !92
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %irqstatus2.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %irqstatus2.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %irqstatus2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i.i, label %entry.omap_clear_gpio_irqstatus.exit_crit_edge, label %if.then.i.i

entry.omap_clear_gpio_irqstatus.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_clear_gpio_irqstatus.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call1.i, align 4
  %conv5.i.i = zext i16 %16 to i32
  %add.ptr6.i.i = getelementptr i8, ptr %18, i32 %conv5.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %12) #5, !srcloc !92
  br label %omap_clear_gpio_irqstatus.exit

omap_clear_gpio_irqstatus.exit:                   ; preds = %if.then.i.i, %entry.omap_clear_gpio_irqstatus.exit_crit_edge
  %reg.0.i.i = phi ptr [ %add.ptr6.i.i, %if.then.i.i ], [ %add.ptr.i.i, %entry.omap_clear_gpio_irqstatus.exit_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i.i) #5, !srcloc !93
  %20 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1.i, align 4
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %set_irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %set_irqenable.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %set_irqenable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i, label %omap_clear_gpio_irqstatus.exit.if.else15.i_crit_edge, label %land.lhs.true.i

omap_clear_gpio_irqstatus.exit.if.else15.i_crit_edge: ; preds = %omap_clear_gpio_irqstatus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else15.i

land.lhs.true.i:                                  ; preds = %omap_clear_gpio_irqstatus.exit
  %clr_irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %23, i32 0, i32 14
  %26 = ptrtoint ptr %clr_irqenable.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %clr_irqenable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool3.not.i = icmp eq i16 %27, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else15.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else15.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else15.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %irqenable114.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %irqenable114.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irqenable114.i, align 4
  %and.i = and i32 %29, %neg
  store i32 %and.i, ptr %irqenable114.i, align 4
  %conv.pn.i = zext i16 %27 to i32
  %reg.0.i = getelementptr i8, ptr %21, i32 %conv.pn.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i, i32 %12) #5, !srcloc !92
  br label %if.end25.i

if.else15.i:                                      ; preds = %land.lhs.true.i.if.else15.i_crit_edge, %omap_clear_gpio_irqstatus.exit.if.else15.i_crit_edge
  %irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %23, i32 0, i32 11
  %30 = ptrtoint ptr %irqenable.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %irqenable.i, align 2
  %conv17.i = zext i16 %31 to i32
  %add.ptr18.i = getelementptr i8, ptr %21, i32 %conv17.i
  %irqenable_inv.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %23, i32 0, i32 27
  %32 = ptrtoint ptr %irqenable_inv.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %irqenable_inv.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not.i = icmp eq i8 %33, 0
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !93
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %or.i.i = or i32 %35, %shl
  %and.i.i = and i32 %35, %neg
  %val.0.i.i = select i1 %tobool22.not.i, i32 %and.i.i, i32 %or.i.i
  %36 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %36) #5, !srcloc !92
  %irqenable124.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %irqenable124.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %val.0.i.i, ptr %irqenable124.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else15.i, %if.then.i
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %wkup_en.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %wkup_en.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %wkup_en.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool28.not.i = icmp eq i16 %41, 0
  br i1 %tobool28.not.i, label %if.end25.i.omap_set_gpio_irqenable.exit_crit_edge, label %land.lhs.true29.i

if.end25.i.omap_set_gpio_irqenable.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_set_gpio_irqenable.exit

land.lhs.true29.i:                                ; preds = %if.end25.i
  %edgectrl1.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %39, i32 0, i32 24
  %42 = ptrtoint ptr %edgectrl1.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %edgectrl1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool32.not.i = icmp eq i16 %43, 0
  br i1 %tobool32.not.i, label %lor.lhs.false.i, label %land.lhs.true29.i.if.then35.i_crit_edge

land.lhs.true29.i.if.then35.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true29.i
  %non_wakeup_gpios.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 3
  %44 = ptrtoint ptr %non_wakeup_gpios.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %non_wakeup_gpios.i, align 4
  %and33.i = and i32 %45, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %lor.lhs.false.i.if.then35.i_crit_edge, label %lor.lhs.false.i.omap_set_gpio_irqenable.exit_crit_edge

lor.lhs.false.i.omap_set_gpio_irqenable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_set_gpio_irqenable.exit

lor.lhs.false.i.if.then35.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false.i.if.then35.i_crit_edge, %land.lhs.true29.i.if.then35.i_crit_edge
  %46 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call1.i, align 4
  %conv39.i = zext i16 %41 to i32
  %add.ptr40.i = getelementptr i8, ptr %47, i32 %conv39.i
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #5, !srcloc !93
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  %and.i72.i = and i32 %49, %neg
  %50 = tail call i32 @llvm.bswap.i32(i32 %and.i72.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %50) #5, !srcloc !92
  %wake_en.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 3
  %51 = ptrtoint ptr %wake_en.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and.i72.i, ptr %wake_en.i, align 4
  br label %omap_set_gpio_irqenable.exit

omap_set_gpio_irqenable.exit:                     ; preds = %if.then35.i, %lor.lhs.false.i.omap_set_gpio_irqenable.exit_crit_edge, %if.end25.i.omap_set_gpio_irqenable.exit_crit_edge
  %mod_usage = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 15
  %52 = ptrtoint ptr %mod_usage to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mod_usage, align 4
  %and4 = and i32 %53, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then, label %omap_set_gpio_irqenable.exit.if.end_crit_edge

omap_set_gpio_irqenable.exit.if.end_crit_edge:    ; preds = %omap_set_gpio_irqenable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %omap_set_gpio_irqenable.exit
  %dbck_flag.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 20
  %54 = ptrtoint ptr %dbck_flag.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dbck_flag.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i31 = icmp eq i8 %55, 0
  br i1 %tobool.not.i31, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %dbck_enable_mask.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 17
  %56 = ptrtoint ptr %dbck_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dbck_enable_mask.i, align 4
  %and.i32 = and i32 %57, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool1.not.i = icmp eq i32 %and.i32, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %57, %neg
  %58 = ptrtoint ptr %dbck_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and5.i, ptr %dbck_enable_mask.i, align 4
  %debounce_en.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 12
  %59 = ptrtoint ptr %debounce_en.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debounce_en.i, align 4
  %and7.i = and i32 %60, %neg
  store i32 %and7.i, ptr %debounce_en.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %and7.i) #5
  %62 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call1.i, align 4
  %64 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i.i, align 4
  %debounce_en10.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %debounce_en10.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %debounce_en10.i, align 2
  %conv.i = zext i16 %67 to i32
  %add.ptr.i = getelementptr i8, ptr %63, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %61) #5, !srcloc !92
  %68 = ptrtoint ptr %dbck_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dbck_enable_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool12.not.i = icmp eq i32 %69, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then13.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %debounce.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 11
  %70 = ptrtoint ptr %debounce.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %debounce.i, align 4
  %71 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call1.i, align 4
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 4
  %debounce19.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %debounce19.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %debounce19.i, align 2
  %conv20.i = zext i16 %76 to i32
  %add.ptr21.i = getelementptr i8, ptr %72, i32 %conv20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 0) #5, !srcloc !92
  %dbck.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 12
  %77 = ptrtoint ptr %dbck.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dbck.i, align 4
  tail call void @clk_disable(ptr noundef %78) #5
  %dbck_enabled.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 18
  %79 = ptrtoint ptr %dbck_enabled.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %dbck_enabled.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13.i, %if.end3.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %omap_set_gpio_irqenable.exit.if.end_crit_edge
  %80 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i.i, align 4
  %ctrl.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %81, i32 0, i32 17
  %82 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %ctrl.i, align 2
  %conv.i36 = zext i16 %83 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool.not.i37 = icmp eq i16 %83, 0
  br i1 %tobool.not.i37, label %if.end.omap_disable_gpio_module.exit_crit_edge, label %land.lhs.true.i39

if.end.omap_disable_gpio_module.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_disable_gpio_module.exit

land.lhs.true.i39:                                ; preds = %if.end
  %84 = ptrtoint ptr %mod_usage to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mod_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool1.not.i38 = icmp eq i32 %85, 0
  br i1 %tobool1.not.i38, label %lor.lhs.false.i40, label %land.lhs.true.i39.omap_disable_gpio_module.exit_crit_edge

land.lhs.true.i39.omap_disable_gpio_module.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_disable_gpio_module.exit

lor.lhs.false.i40:                                ; preds = %land.lhs.true.i39
  %86 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool2.not.i = icmp eq i32 %87, 0
  br i1 %tobool2.not.i, label %if.then.i42, label %lor.lhs.false.i40.omap_disable_gpio_module.exit_crit_edge

lor.lhs.false.i40.omap_disable_gpio_module.exit_crit_edge: ; preds = %lor.lhs.false.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_disable_gpio_module.exit

if.then.i42:                                      ; preds = %lor.lhs.false.i40
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call1.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %89, i32 %conv.i36
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #5, !srcloc !93
  %91 = or i32 %90, 16777216
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %91) #5, !srcloc !92
  %ctrl7.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 4
  %93 = ptrtoint ptr %ctrl7.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %ctrl7.i, align 4
  br label %omap_disable_gpio_module.exit

omap_disable_gpio_module.exit:                    ; preds = %if.then.i42, %lor.lhs.false.i40.omap_disable_gpio_module.exit_crit_edge, %land.lhs.true.i39.omap_disable_gpio_module.exit_crit_edge, %if.end.omap_disable_gpio_module.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_gpio_mask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %call2 = tail call fastcc i32 @omap_set_gpio_triggering(ptr noundef %call1.i, i32 noundef %3, i32 noundef 0)
  %4 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1.i, align 4
  %shl.i = shl nuw i32 1, %3
  %regs.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %set_irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %set_irqenable.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %set_irqenable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %entry.if.else15.i_crit_edge, label %land.lhs.true.i

entry.if.else15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else15.i

land.lhs.true.i:                                  ; preds = %entry
  %clr_irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 14
  %10 = ptrtoint ptr %clr_irqenable.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %clr_irqenable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not.i = icmp eq i16 %11, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else15.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else15.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else15.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i = xor i32 %shl.i, -1
  %irqenable114.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %irqenable114.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irqenable114.i, align 4
  %and.i = and i32 %13, %neg.i
  store i32 %and.i, ptr %irqenable114.i, align 4
  %conv.pn.i = zext i16 %11 to i32
  %reg.0.i = getelementptr i8, ptr %5, i32 %conv.pn.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i, i32 %14) #5, !srcloc !92
  br label %if.end25.i

if.else15.i:                                      ; preds = %land.lhs.true.i.if.else15.i_crit_edge, %entry.if.else15.i_crit_edge
  %irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 11
  %15 = ptrtoint ptr %irqenable.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %irqenable.i, align 2
  %conv17.i = zext i16 %16 to i32
  %add.ptr18.i = getelementptr i8, ptr %5, i32 %conv17.i
  %irqenable_inv.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 27
  %17 = ptrtoint ptr %irqenable_inv.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %irqenable_inv.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not.i = icmp eq i8 %18, 0
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !93
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %or.i.i = or i32 %20, %shl.i
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %20, %neg.i.i
  %val.0.i.i = select i1 %tobool22.not.i, i32 %and.i.i, i32 %or.i.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %21) #5, !srcloc !92
  %irqenable124.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %irqenable124.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %val.0.i.i, ptr %irqenable124.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else15.i, %if.then.i
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %wkup_en.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %wkup_en.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %wkup_en.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool28.not.i = icmp eq i16 %26, 0
  br i1 %tobool28.not.i, label %if.end25.i.omap_set_gpio_irqenable.exit_crit_edge, label %land.lhs.true29.i

if.end25.i.omap_set_gpio_irqenable.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_set_gpio_irqenable.exit

land.lhs.true29.i:                                ; preds = %if.end25.i
  %edgectrl1.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %24, i32 0, i32 24
  %27 = ptrtoint ptr %edgectrl1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %edgectrl1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool32.not.i = icmp eq i16 %28, 0
  br i1 %tobool32.not.i, label %lor.lhs.false.i, label %land.lhs.true29.i.if.then35.i_crit_edge

land.lhs.true29.i.if.then35.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true29.i
  %non_wakeup_gpios.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 3
  %29 = ptrtoint ptr %non_wakeup_gpios.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %non_wakeup_gpios.i, align 4
  %and33.i = and i32 %30, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %lor.lhs.false.i.if.then35.i_crit_edge, label %lor.lhs.false.i.omap_set_gpio_irqenable.exit_crit_edge

lor.lhs.false.i.omap_set_gpio_irqenable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_set_gpio_irqenable.exit

lor.lhs.false.i.if.then35.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false.i.if.then35.i_crit_edge, %land.lhs.true29.i.if.then35.i_crit_edge
  %31 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call1.i, align 4
  %conv39.i = zext i16 %26 to i32
  %add.ptr40.i = getelementptr i8, ptr %32, i32 %conv39.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #5, !srcloc !93
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %neg.i71.i = xor i32 %shl.i, -1
  %and.i72.i = and i32 %34, %neg.i71.i
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.i72.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %35) #5, !srcloc !92
  %wake_en.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 3
  %36 = ptrtoint ptr %wake_en.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i72.i, ptr %wake_en.i, align 4
  br label %omap_set_gpio_irqenable.exit

omap_set_gpio_irqenable.exit:                     ; preds = %if.then35.i, %lor.lhs.false.i.omap_set_gpio_irqenable.exit_crit_edge, %if.end25.i.omap_set_gpio_irqenable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_gpio_unmask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 15
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %8 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1.i, align 4
  %shl.i = shl nuw i32 1, %3
  %regs.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %set_irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %set_irqenable.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %set_irqenable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %entry.if.else15.i_crit_edge, label %land.lhs.true.i

entry.if.else15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else15.i

land.lhs.true.i:                                  ; preds = %entry
  %clr_irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %clr_irqenable.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %clr_irqenable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool3.not.i = icmp eq i16 %15, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else15.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else15.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else15.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %irqenable1.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %irqenable1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irqenable1.i, align 4
  %or.i = or i32 %17, %shl.i
  store i32 %or.i, ptr %irqenable1.i, align 4
  %conv.pn.i = zext i16 %13 to i32
  %reg.0.i = getelementptr i8, ptr %9, i32 %conv.pn.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i, i32 %18) #5, !srcloc !92
  br label %if.end25.i

if.else15.i:                                      ; preds = %land.lhs.true.i.if.else15.i_crit_edge, %entry.if.else15.i_crit_edge
  %irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 11
  %19 = ptrtoint ptr %irqenable.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %irqenable.i, align 2
  %conv17.i = zext i16 %20 to i32
  %add.ptr18.i = getelementptr i8, ptr %9, i32 %conv17.i
  %irqenable_inv.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 27
  %21 = ptrtoint ptr %irqenable_inv.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %irqenable_inv.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %tobool22.not.i = icmp eq i8 %22, 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !93
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %or.i.i = or i32 %24, %shl.i
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %24, %neg.i.i
  %val.0.i.i = select i1 %tobool22.not.i, i32 %and.i.i, i32 %or.i.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %25) #5, !srcloc !92
  %irqenable124.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %irqenable124.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %val.0.i.i, ptr %irqenable124.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else15.i, %if.then.i
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %wkup_en.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %wkup_en.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %wkup_en.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool28.not.i = icmp eq i16 %30, 0
  br i1 %tobool28.not.i, label %if.end25.i.omap_set_gpio_irqenable.exit_crit_edge, label %land.lhs.true29.i

if.end25.i.omap_set_gpio_irqenable.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_set_gpio_irqenable.exit

land.lhs.true29.i:                                ; preds = %if.end25.i
  %edgectrl1.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %28, i32 0, i32 24
  %31 = ptrtoint ptr %edgectrl1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %edgectrl1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool32.not.i = icmp eq i16 %32, 0
  br i1 %tobool32.not.i, label %lor.lhs.false.i, label %land.lhs.true29.i.if.then35.i_crit_edge

land.lhs.true29.i.if.then35.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true29.i
  %non_wakeup_gpios.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 3
  %33 = ptrtoint ptr %non_wakeup_gpios.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %non_wakeup_gpios.i, align 4
  %and33.i = and i32 %34, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %lor.lhs.false.i.if.then35.i_crit_edge, label %lor.lhs.false.i.omap_set_gpio_irqenable.exit_crit_edge

lor.lhs.false.i.omap_set_gpio_irqenable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_set_gpio_irqenable.exit

lor.lhs.false.i.if.then35.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false.i.if.then35.i_crit_edge, %land.lhs.true29.i.if.then35.i_crit_edge
  %35 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call1.i, align 4
  %conv39.i = zext i16 %30 to i32
  %add.ptr40.i = getelementptr i8, ptr %36, i32 %conv39.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #5, !srcloc !93
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %or.i70.i = or i32 %38, %shl.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i70.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %39) #5, !srcloc !92
  %wake_en.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %wake_en.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i70.i, ptr %wake_en.i, align 4
  br label %omap_set_gpio_irqenable.exit

omap_set_gpio_irqenable.exit:                     ; preds = %if.then35.i, %lor.lhs.false.i.omap_set_gpio_irqenable.exit_crit_edge, %if.end25.i.omap_set_gpio_irqenable.exit_crit_edge
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %leveldetect0 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %leveldetect0 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %leveldetect0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.not = icmp eq i16 %44, 0
  br i1 %tobool.not, label %omap_set_gpio_irqenable.exit.if.end_crit_edge, label %land.lhs.true

omap_set_gpio_irqenable.exit.if.end_crit_edge:    ; preds = %omap_set_gpio_irqenable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %omap_set_gpio_irqenable.exit
  %wkup_en = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %42, i32 0, i32 18
  %45 = ptrtoint ptr %wkup_en to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %wkup_en, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool6.not = icmp eq i16 %46, 0
  %and = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %47 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call1.i, align 4
  %irqstatus.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %42, i32 0, i32 7
  %49 = ptrtoint ptr %irqstatus.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %irqstatus.i.i, align 2
  %conv.i.i = zext i16 %50 to i32
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %conv.i.i
  %51 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %51) #5, !srcloc !92
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %irqstatus2.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %irqstatus2.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %irqstatus2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i.i = icmp eq i16 %55, 0
  br i1 %tobool.not.i.i, label %if.then.if.end.thread_crit_edge, label %if.then.i.i

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call1.i, align 4
  %conv5.i.i = zext i16 %55 to i32
  %add.ptr6.i.i = getelementptr i8, ptr %57, i32 %conv5.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %51) #5, !srcloc !92
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then.i.i, %if.then.if.end.thread_crit_edge
  %reg.0.i.i = phi ptr [ %add.ptr6.i.i, %if.then.i.i ], [ %add.ptr.i.i, %if.then.if.end.thread_crit_edge ]
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i.i) #5, !srcloc !93
  br label %if.then10

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %omap_set_gpio_irqenable.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not = icmp eq i32 %and.i, 0
  br i1 %tobool9.not, label %if.end.do.body13_crit_edge, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end.do.body13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.thread
  %call11 = tail call fastcc i32 @omap_set_gpio_triggering(ptr noundef %call1.i, i32 noundef %3, i32 noundef %and.i)
  br label %do.body13

do.body13:                                        ; preds = %if.then10, %if.end.do.body13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_irq_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type)
  %tobool.not = icmp ult i32 %type, 16
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %leveldetect0 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %leveldetect0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %leveldetect0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp ne i16 %7, 0
  %and3 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %tobool4.not, %tobool2.not
  br i1 %or.cond, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 9
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %call8 = tail call fastcc i32 @omap_set_gpio_triggering(ptr noundef %call1.i, i32 noundef %3, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end20, label %do.body11

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #5
  br label %cleanup

if.end20:                                         ; preds = %do.body
  %mod_usage.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 15
  %8 = ptrtoint ptr %mod_usage.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mod_usage.i, align 4
  %shl.i = shl nuw i32 1, %3
  %and.i = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end20.omap_gpio_init_irq.exit_crit_edge

if.end20.omap_gpio_init_irq.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_init_irq.exit

if.then.i:                                        ; preds = %if.end20
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %pinctrl.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %pinctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pinctrl.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call1.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !93
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %or.i.i = or i32 %17, %shl.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #5, !srcloc !92
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %ctrl.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ctrl.i.i, align 2
  %conv4.i.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool5.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.omap_enable_gpio_module.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.omap_enable_gpio_module.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_enable_gpio_module.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %23 = ptrtoint ptr %mod_usage.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mod_usage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i.i, label %land.lhs.true.i.i.omap_enable_gpio_module.exit.i_crit_edge

land.lhs.true.i.i.omap_enable_gpio_module.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_enable_gpio_module.exit.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %irq_usage.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 16
  %25 = ptrtoint ptr %irq_usage.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_usage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool7.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %lor.lhs.false.i.i.omap_enable_gpio_module.exit.i_crit_edge

lor.lhs.false.i.i.omap_enable_gpio_module.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_enable_gpio_module.exit.i

if.then8.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call1.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %28, i32 %conv4.i.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #5, !srcloc !93
  %30 = and i32 %29, -16777217
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %30) #5, !srcloc !92
  %ctrl19.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %ctrl19.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ctrl19.i.i, align 4
  br label %omap_enable_gpio_module.exit.i

omap_enable_gpio_module.exit.i:                   ; preds = %if.then8.i.i, %lor.lhs.false.i.i.omap_enable_gpio_module.exit.i_crit_edge, %land.lhs.true.i.i.omap_enable_gpio_module.exit.i_crit_edge, %if.end.i.i.omap_enable_gpio_module.exit.i_crit_edge
  %33 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call1.i, align 4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %direction.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %direction.i.i, align 2
  %conv.i9.i = zext i16 %38 to i32
  %add.ptr.i10.i = getelementptr i8, ptr %34, i32 %conv.i9.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #5, !srcloc !93
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %or.i.i.i = or i32 %40, %shl.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %41) #5, !srcloc !92
  %oe.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 5, i32 5
  %42 = ptrtoint ptr %oe.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i.i.i, ptr %oe.i.i, align 4
  br label %omap_gpio_init_irq.exit

omap_gpio_init_irq.exit:                          ; preds = %omap_enable_gpio_module.exit.i, %if.end20.omap_gpio_init_irq.exit_crit_edge
  %irq_usage.i = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 16
  %43 = ptrtoint ptr %irq_usage.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq_usage.i, align 4
  %or.i = or i32 %44, %shl.i
  store i32 %or.i, ptr %irq_usage.i, align 4
  %45 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call1.i, align 4
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %direction.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %direction.i, align 2
  %conv.i = zext i16 %50 to i32
  %add.ptr.i = getelementptr i8, ptr %46, i32 %conv.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  %and.i74 = and i32 %52, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool22.not = icmp eq i32 %and.i74, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #5
  br i1 %tobool22.not, label %omap_gpio_init_irq.exit.cleanup_crit_edge, label %do.body34

omap_gpio_init_irq.exit.cleanup_crit_edge:        ; preds = %omap_gpio_init_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body34:                                        ; preds = %omap_gpio_init_irq.exit
  br i1 %tobool4.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %53 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @handle_level_irq, ptr %handle_irq.i, align 4
  br label %cleanup

if.else:                                          ; preds = %do.body34
  %and46 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else.cleanup_crit_edge, label %if.then48

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %common.i.i75 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %56 = ptrtoint ptr %common.i.i75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %common.i.i75, align 4
  %handle_irq.i76 = getelementptr inbounds %struct.irq_desc, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %handle_irq.i76 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @handle_simple_irq, ptr %handle_irq.i76, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.else.cleanup_crit_edge, %if.then45, %omap_gpio_init_irq.exit.cleanup_crit_edge, %do.body11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %if.then45 ], [ %call8, %do.body11 ], [ -22, %omap_gpio_init_irq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_wake_enable(ptr nocapture noundef readonly %d, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %irq = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %enable) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_gpio_irq_bus_lock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %parent = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_irq_bus_sync_unlock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %parent = getelementptr inbounds %struct.gpio_bank, ptr %call1.i, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_set_gpio_dataout_reg(ptr nocapture noundef %bank, i32 noundef %offset, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bank, align 4
  %shl = shl nuw i32 1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %regs1 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 1
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %set_dataout = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %set_dataout to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %set_dataout, align 2
  %dataout = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 10
  %6 = ptrtoint ptr %dataout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dataout, align 4
  %or = or i32 %7, %shl
  store i32 %or, ptr %dataout, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %clr_dataout = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %clr_dataout to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %clr_dataout, align 2
  %neg = xor i32 %shl, -1
  %dataout5 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 10
  %10 = ptrtoint ptr %dataout5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dataout5, align 4
  %and = and i32 %11, %neg
  store i32 %and, ptr %dataout5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv.pn.in = phi i16 [ %5, %if.then ], [ %9, %if.else ]
  %conv.pn = zext i16 %conv.pn.in to i32
  %reg.0 = getelementptr i8, ptr %1, i32 %conv.pn
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0, i32 %12) #5, !srcloc !92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_set_gpio_dataout_mask(ptr nocapture noundef %bank, i32 noundef %offset, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bank, align 4
  %regs = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %dataout = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dataout to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dataout, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %shl = shl nuw i32 1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %or.i = or i32 %7, %shl
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %7, %neg.i
  %val.0.i = select i1 %tobool.not, i32 %and.i, i32 %or.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !92
  %dataout1 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 10
  %9 = ptrtoint ptr %dataout1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %val.0.i, ptr %dataout1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_omap_cpu_notifier(ptr noundef %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -524
  %lock = getelementptr i8, ptr %nb, i32 -440
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %is_suspended = getelementptr i8, ptr %nb, i32 12
  %0 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.do.body11_crit_edge

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

if.end:                                           ; preds = %entry
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.do.body11_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %if.end.sw.bb10_crit_edge
    i32 5, label %if.end.sw.bb10_crit_edge27
  ]

if.end.sw.bb10_crit_edge27:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

if.end.do.body11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

sw.bb:                                            ; preds = %if.end
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %width.i = getelementptr i8, ptr %nb, i32 40
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  %regs.i = getelementptr i8, ptr %nb, i32 -520
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %irqenable.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %irqenable.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %irqenable_inv.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %irqenable_inv.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %irqenable_inv.i, align 2, !range !91
  %sext.i = sub nsw i8 0, %15
  %neg.i = sext i8 %sext.i to i32
  %spec.select.i = xor i32 %11, %neg.i
  %notmask.i = shl nsw i32 -1, %5
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %spec.select.i, %sub.i
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %irqstatus = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %irqstatus to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %irqstatus, align 2
  %conv3 = zext i16 %19 to i32
  %add.ptr4 = getelementptr i8, ptr %17, i32 %conv3
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !93
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %and = and i32 %and.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb.do.body11_crit_edge

sw.bb.do.body11_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @omap_gpio_idle(ptr noundef %add.ptr)
  br label %do.body11

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge27
  tail call fastcc void @omap_gpio_unidle(ptr noundef %add.ptr)
  br label %do.body11

do.body11:                                        ; preds = %sw.bb10, %if.end9, %sw.bb.do.body11_crit_edge, %if.end.do.body11_crit_edge, %entry.do.body11_crit_edge
  %ret.0 = phi i32 [ 1, %entry.do.body11_crit_edge ], [ 1, %if.end.do.body11_crit_edge ], [ 1, %sw.bb10 ], [ 1, %if.end9 ], [ 32770, %sw.bb.do.body11_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_set_gpio_triggering(ptr nocapture noundef %bank, i32 noundef %gpio, i32 noundef %trigger) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bank, align 4
  %regs = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %leveldetect0 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %leveldetect0 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %leveldetect0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %wkup_en = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %wkup_en to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wkup_en, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool3.not = icmp eq i16 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %shl.i = shl nuw i32 1, %gpio
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %and.i = and i32 %trigger, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %or.i.i = or i32 %9, %shl.i
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %9, %neg.i.i
  %val.0.i.i = select i1 %tobool.not.i, i32 %and.i.i, i32 %or.i.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #5, !srcloc !92
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %leveldetect1.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %leveldetect1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %leveldetect1.i, align 2
  %conv3.i = zext i16 %14 to i32
  %add.ptr4.i = getelementptr i8, ptr %1, i32 %conv3.i
  %and5.i = and i32 %trigger, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !93
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %or.i107.i = or i32 %16, %shl.i
  %and.i109.i = and i32 %16, %neg.i.i
  %val.0.i110.i = select i1 %tobool6.not.i, i32 %and.i109.i, i32 %or.i107.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %val.0.i110.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %17) #5, !srcloc !92
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %risingdetect.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %risingdetect.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %risingdetect.i, align 2
  %conv9.i = zext i16 %21 to i32
  %add.ptr10.i = getelementptr i8, ptr %1, i32 %conv9.i
  %and11.i = and i32 %trigger, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #5, !srcloc !93
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %or.i111.i = or i32 %23, %shl.i
  %and.i113.i = and i32 %23, %neg.i.i
  %val.0.i114.i = select i1 %tobool12.not.i, i32 %and.i113.i, i32 %or.i111.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %val.0.i114.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %24) #5, !srcloc !92
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %fallingdetect.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %fallingdetect.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fallingdetect.i, align 2
  %conv15.i = zext i16 %28 to i32
  %add.ptr16.i = getelementptr i8, ptr %1, i32 %conv15.i
  %and17.i = and i32 %trigger, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #5, !srcloc !93
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %or.i115.i = or i32 %30, %shl.i
  %and.i117.i = and i32 %30, %neg.i.i
  %val.0.i118.i = select i1 %tobool18.not.i, i32 %and.i117.i, i32 %or.i115.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %val.0.i118.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %31) #5, !srcloc !92
  %32 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bank, align 4
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %leveldetect022.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %leveldetect022.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %leveldetect022.i, align 2
  %conv23.i = zext i16 %37 to i32
  %add.ptr24.i = getelementptr i8, ptr %33, i32 %conv23.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #5, !srcloc !93
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %leveldetect026.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 6
  %40 = ptrtoint ptr %leveldetect026.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %leveldetect026.i, align 4
  %41 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bank, align 4
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %leveldetect130.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %44, i32 0, i32 20
  %45 = ptrtoint ptr %leveldetect130.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %leveldetect130.i, align 2
  %conv31.i = zext i16 %46 to i32
  %add.ptr32.i = getelementptr i8, ptr %42, i32 %conv31.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #5, !srcloc !93
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %leveldetect136.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 7
  %49 = ptrtoint ptr %leveldetect136.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %leveldetect136.i, align 4
  %50 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bank, align 4
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %risingdetect40.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %53, i32 0, i32 21
  %54 = ptrtoint ptr %risingdetect40.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %risingdetect40.i, align 2
  %conv41.i = zext i16 %55 to i32
  %add.ptr42.i = getelementptr i8, ptr %51, i32 %conv41.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #5, !srcloc !93
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  %risingdetect46.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 8
  %58 = ptrtoint ptr %risingdetect46.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %risingdetect46.i, align 4
  %59 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bank, align 4
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %fallingdetect50.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %62, i32 0, i32 22
  %63 = ptrtoint ptr %fallingdetect50.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %fallingdetect50.i, align 2
  %conv51.i = zext i16 %64 to i32
  %add.ptr52.i = getelementptr i8, ptr %60, i32 %conv51.i
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #5, !srcloc !93
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  %fallingdetect56.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 9
  %67 = ptrtoint ptr %fallingdetect56.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %fallingdetect56.i, align 4
  %68 = ptrtoint ptr %leveldetect026.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %leveldetect026.i, align 4
  %70 = ptrtoint ptr %leveldetect136.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %leveldetect136.i, align 4
  %or.i = or i32 %71, %69
  %level_mask.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 7
  %72 = ptrtoint ptr %level_mask.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or.i, ptr %level_mask.i, align 4
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %irqctrl.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %74, i32 0, i32 23
  %75 = ptrtoint ptr %irqctrl.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %irqctrl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool62.not.i = icmp eq i16 %76, 0
  br i1 %tobool62.not.i, label %land.lhs.true.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %non_wakeup_gpios.i.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 3
  %77 = ptrtoint ptr %non_wakeup_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %non_wakeup_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i.i = icmp ne i32 %78, 0
  %neg.i119.i = xor i32 %78, -1
  %and.i120.i = and i32 %neg.i119.i, %gpio
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120.i)
  %tobool1.i.i = icmp ne i32 %and.i120.i, 0
  %retval.0.i.i = select i1 %tobool.not.i.i, i1 %tobool1.i.i, i1 false
  br i1 %retval.0.i.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %and64.i = and i32 %trigger, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  %enabled_non_wakeup_gpios68.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 4
  %79 = ptrtoint ptr %enabled_non_wakeup_gpios68.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %enabled_non_wakeup_gpios68.i, align 4
  %or67.i = or i32 %80, %shl.i
  %and69.i = and i32 %80, %neg.i.i
  %or67.sink.i = select i1 %tobool65.not.i, i32 %and69.i, i32 %or67.i
  store i32 %or67.sink.i, ptr %enabled_non_wakeup_gpios68.i, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %irqctrl = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 23
  %81 = ptrtoint ptr %irqctrl to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %irqctrl, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool5.not = icmp eq i16 %82, 0
  br i1 %tobool5.not, label %if.else26, label %if.then6

if.then6:                                         ; preds = %if.else
  %conv9 = zext i16 %82 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv9
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !93
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %and = and i32 %trigger, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %if.then11, label %if.then6.if.end_crit_edge

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %gpio
  %toggle_mask = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 8
  %85 = ptrtoint ptr %toggle_mask to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %toggle_mask, align 4
  %or = or i32 %86, %shl
  store i32 %or, ptr %toggle_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then6.if.end_crit_edge
  %and12 = and i32 %trigger, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else17, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl15 = shl nuw i32 1, %gpio
  %or16 = or i32 %84, %shl15
  br label %if.end25

if.else17:                                        ; preds = %if.end
  %and18 = and i32 %trigger, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else17.cleanup_crit_edge, label %if.then20

if.else17.cleanup_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  %shl21 = shl nuw i32 1, %gpio
  %neg = xor i32 %shl21, -1
  %and22 = and i32 %84, %neg
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then14
  %l.0 = phi i32 [ %or16, %if.then14 ], [ %and22, %if.then20 ]
  %87 = tail call i32 @llvm.bswap.i32(i32 %l.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %87) #5, !srcloc !92
  br label %cleanup

if.else26:                                        ; preds = %if.else
  %edgectrl1 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 24
  %88 = ptrtoint ptr %edgectrl1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %edgectrl1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool28.not = icmp eq i16 %89, 0
  br i1 %tobool28.not, label %if.else26.cleanup_crit_edge, label %if.then29

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.else26
  %and30 = and i32 %gpio, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then29.if.end41_crit_edge, label %if.then32

if.then29.if.end41_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %edgectrl2 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 25
  %90 = ptrtoint ptr %edgectrl2 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %edgectrl2, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %if.then29.if.end41_crit_edge
  %conv34.pn.in = phi i16 [ %91, %if.then32 ], [ %89, %if.then29.if.end41_crit_edge ]
  %conv34.pn = zext i16 %conv34.pn.in to i32
  %reg.0 = getelementptr i8, ptr %1, i32 %conv34.pn
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0) #5, !srcloc !93
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %and42 = shl i32 %gpio, 1
  %shl46 = and i32 %and42, 14
  %shl47 = shl nuw nsw i32 3, %shl46
  %neg48 = xor i32 %shl47, -1
  %and49 = and i32 %93, %neg48
  %and50 = and i32 %trigger, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %shl54 = shl nuw nsw i32 2, %shl46
  %or55 = select i1 %tobool51.not, i32 0, i32 %shl54
  %and57 = and i32 %trigger, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %shl61 = shl nuw nsw i32 1, %shl46
  %or62 = select i1 %tobool58.not, i32 0, i32 %shl61
  %l.1 = or i32 %or62, %or55
  %l.2 = or i32 %l.1, %and49
  %94 = tail call i32 @llvm.bswap.i32(i32 %l.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0, i32 %94) #5, !srcloc !92
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.else26.cleanup_crit_edge, %if.end25, %if.else17.cleanup_crit_edge, %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else17.cleanup_crit_edge ], [ 0, %if.end25 ], [ 0, %if.end41 ], [ 0, %if.else26.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mpuio_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %stride = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stride, align 4
  %div = sdiv i32 44, %5
  %add.ptr = getelementptr i8, ptr %3, i32 %div
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %wake_en = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %wake_en to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wake_en, align 4
  %neg = and i32 %7, 65535
  %and = xor i32 %neg, 65535
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !92
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mpuio_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %stride = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stride, align 4
  %div = sdiv i32 44, %5
  %add.ptr = getelementptr i8, ptr %3, i32 %div
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %wake_en = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %wake_en to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wake_en, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !92
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #5
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %regs.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %pinctrl.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pinctrl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %shl.i = shl nuw i32 1, %offset
  %or.i = or i32 %9, %shl.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #5, !srcloc !92
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %ctrl.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ctrl.i, align 2
  %conv4.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool5.not.i = icmp eq i16 %14, 0
  br i1 %tobool5.not.i, label %if.end.i.omap_enable_gpio_module.exit_crit_edge, label %land.lhs.true.i

if.end.i.omap_enable_gpio_module.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_enable_gpio_module.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %mod_usage.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %mod_usage.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mod_usage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.i = icmp eq i32 %16, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.omap_enable_gpio_module.exit_crit_edge

land.lhs.true.i.omap_enable_gpio_module.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_enable_gpio_module.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %irq_usage.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 16
  %17 = ptrtoint ptr %irq_usage.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_usage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i = icmp eq i32 %18, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %lor.lhs.false.i.omap_enable_gpio_module.exit_crit_edge

lor.lhs.false.i.omap_enable_gpio_module.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_enable_gpio_module.exit

if.then8.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %add.ptr14.i = getelementptr i8, ptr %20, i32 %conv4.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #5, !srcloc !93
  %22 = and i32 %21, -16777217
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %22) #5, !srcloc !92
  %ctrl19.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %ctrl19.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ctrl19.i, align 4
  br label %omap_enable_gpio_module.exit

omap_enable_gpio_module.exit:                     ; preds = %if.then8.i, %lor.lhs.false.i.omap_enable_gpio_module.exit_crit_edge, %land.lhs.true.i.omap_enable_gpio_module.exit_crit_edge, %if.end.i.omap_enable_gpio_module.exit_crit_edge
  %shl = shl nuw i32 1, %offset
  %mod_usage = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 15
  %25 = ptrtoint ptr %mod_usage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mod_usage, align 4
  %or = or i32 %26, %shl
  store i32 %or, ptr %mod_usage, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_gpio_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %shl = shl nuw i32 1, %offset
  %neg = xor i32 %shl, -1
  %mod_usage = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %mod_usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mod_usage, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %mod_usage, align 4
  %irq_usage = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_usage, align 4
  %and3 = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %regs.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %direction.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %direction.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %or.i.i = or i32 %11, %shl
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #5, !srcloc !92
  %oe.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 5, i32 5
  %13 = ptrtoint ptr %oe.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i, ptr %oe.i, align 4
  %dbck_flag.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 20
  %14 = ptrtoint ptr %dbck_flag.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dbck_flag.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %dbck_enable_mask.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 17
  %16 = ptrtoint ptr %dbck_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dbck_enable_mask.i, align 4
  %and.i = and i32 %17, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %17, %neg
  %18 = ptrtoint ptr %dbck_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and5.i, ptr %dbck_enable_mask.i, align 4
  %debounce_en.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 5, i32 12
  %19 = ptrtoint ptr %debounce_en.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debounce_en.i, align 4
  %and7.i = and i32 %20, %neg
  store i32 %and7.i, ptr %debounce_en.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %and7.i) #5
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %debounce_en10.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %debounce_en10.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %debounce_en10.i, align 2
  %conv.i27 = zext i16 %27 to i32
  %add.ptr.i28 = getelementptr i8, ptr %23, i32 %conv.i27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %21) #5, !srcloc !92
  %28 = ptrtoint ptr %dbck_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dbck_enable_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.not.i = icmp eq i32 %29, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then13.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %debounce.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 5, i32 11
  %30 = ptrtoint ptr %debounce.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %debounce.i, align 4
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 4
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %debounce19.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %debounce19.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %debounce19.i, align 2
  %conv20.i = zext i16 %36 to i32
  %add.ptr21.i = getelementptr i8, ptr %32, i32 %conv20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 0) #5, !srcloc !92
  %dbck.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 12
  %37 = ptrtoint ptr %dbck.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dbck.i, align 4
  tail call void @clk_disable(ptr noundef %38) #5
  %dbck_enabled.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 18
  %39 = ptrtoint ptr %dbck_enabled.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %dbck_enabled.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13.i, %if.end3.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %regs.i29 = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 1
  %40 = ptrtoint ptr %regs.i29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i29, align 4
  %ctrl.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ctrl.i, align 2
  %conv.i30 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i31 = icmp eq i16 %43, 0
  br i1 %tobool.not.i31, label %if.end.omap_disable_gpio_module.exit_crit_edge, label %land.lhs.true.i

if.end.omap_disable_gpio_module.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_disable_gpio_module.exit

land.lhs.true.i:                                  ; preds = %if.end
  %44 = ptrtoint ptr %mod_usage to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mod_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool1.not.i32 = icmp eq i32 %45, 0
  br i1 %tobool1.not.i32, label %lor.lhs.false.i, label %land.lhs.true.i.omap_disable_gpio_module.exit_crit_edge

land.lhs.true.i.omap_disable_gpio_module.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_disable_gpio_module.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %46 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool2.not.i = icmp eq i32 %47, 0
  br i1 %tobool2.not.i, label %if.then.i, label %lor.lhs.false.i.omap_disable_gpio_module.exit_crit_edge

lor.lhs.false.i.omap_disable_gpio_module.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_disable_gpio_module.exit

if.then.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call, align 4
  %add.ptr.i33 = getelementptr i8, ptr %49, i32 %conv.i30
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #5, !srcloc !93
  %51 = or i32 %50, 16777216
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %51) #5, !srcloc !92
  %ctrl7.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 5, i32 4
  %53 = ptrtoint ptr %ctrl7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ctrl7.i, align 4
  br label %omap_disable_gpio_module.exit

omap_disable_gpio_module.exit:                    ; preds = %if.then.i, %lor.lhs.false.i.omap_disable_gpio_module.exit_crit_edge, %land.lhs.true.i.omap_disable_gpio_module.exit_crit_edge, %if.end.omap_disable_gpio_module.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %54 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %55, i32 noundef 5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regs = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %direction = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %direction, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = lshr i32 %7, %offset
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regs.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %direction.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %direction.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %shl.i = shl nuw i32 1, %offset
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %or.i.i = or i32 %7, %shl.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !92
  %oe.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 5, i32 5
  %9 = ptrtoint ptr %oe.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i.i, ptr %oe.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regs.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %direction.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %direction.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %shl.i = shl nuw i32 1, %offset
  %and.i = and i32 %7, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %dataout = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 4
  %datain = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 3
  %dataout.sink = select i1 %tobool.not, ptr %dataout, ptr %datain
  %12 = ptrtoint ptr %dataout.sink to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dataout.sink, align 2
  %conv4 = zext i16 %13 to i32
  %add.ptr5 = getelementptr i8, ptr %9, i32 %conv4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !93
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = lshr i32 %15, %offset
  %17 = and i32 %16, 1
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_get_multiple(ptr noundef %chip, ptr nocapture noundef readonly %mask, ptr nocapture noundef writeonly %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regs = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %direction2 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %direction2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %direction2, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %and = and i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %datain = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %datain to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %datain, align 2
  %conv6 = zext i16 %13 to i32
  %add.ptr7 = getelementptr i8, ptr %1, i32 %conv6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !93
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and10 = and i32 %15, %and
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %and10, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %neg = xor i32 %7, -1
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %and11 = and i32 %17, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end22_crit_edge, label %if.then13

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %dataout = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %dataout to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dataout, align 2
  %conv16 = zext i16 %21 to i32
  %add.ptr17 = getelementptr i8, ptr %1, i32 %conv16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !93
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %and20 = and i32 %23, %and11
  %or21 = or i32 %and20, %val.0
  br label %if.end22

if.end22:                                         ; preds = %if.then13, %if.end.if.end22_crit_edge
  %val.1 = phi i32 [ %or21, %if.then13 ], [ %val.0, %if.end.if.end22_crit_edge ]
  %24 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %val.1, ptr %bits, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %set_dataout = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %set_dataout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_dataout, align 4
  tail call void %1(ptr noundef %call, i32 noundef %offset, i32 noundef %value) #5
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %regs.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %direction.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %direction.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %shl.i = shl nuw i32 1, %offset
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %9, %neg.i.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #5, !srcloc !92
  %oe.i = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 5, i32 5
  %11 = ptrtoint ptr %oe.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i.i, ptr %oe.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  %0 = add nsw i32 %and.i, -1
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 31)
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge9
    i32 1, label %entry.sw.bb_crit_edge10
    i32 5, label %sw.bb2
  ]

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10
  %call1 = tail call i32 @gpiochip_generic_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %shr.i = lshr i32 %config, 8
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %lock.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 9
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %tobool.not.i.i = icmp ult i32 %config, 256
  %dbck_flag.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 20
  %3 = ptrtoint ptr %dbck_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dbck_flag.i.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i.i, label %sw.bb2.do.end14.i_crit_edge, label %if.end.i.i

sw.bb2.do.end14.i_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i

if.end.i.i:                                       ; preds = %sw.bb2
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = add nuw nsw i32 %shr.i, 30
  %div.i.i = udiv i32 %sub.i.i, 31
  %sub5.i.i = add nsw i32 %div.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub5.i.i)
  %5 = icmp ult i32 %sub5.i.i, 256
  br i1 %5, label %if.then4.i.i.if.end8.i.i_crit_edge, label %if.then4.i.i.do.end14.i_crit_edge

if.then4.i.i.do.end14.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i

if.then4.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then4.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %debounce.addr.0.i.i = phi i32 [ %sub5.i.i, %if.then4.i.i.if.end8.i.i_crit_edge ], [ 0, %if.end.i.i.if.end8.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %offset
  %dbck.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 12
  %6 = ptrtoint ptr %dbck.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dbck.i.i, align 4
  %call.i.i = tail call i32 @clk_enable(ptr noundef %7) #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %debounce.addr.0.i.i) #5
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %regs.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  %debounce9.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %debounce9.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %debounce9.i.i, align 2
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #5, !srcloc !92
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %debounce_en.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %debounce_en.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %debounce_en.i.i, align 2
  %conv12.i.i = zext i16 %20 to i32
  %add.ptr13.i.i = getelementptr i8, ptr %16, i32 %conv12.i.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #5, !srcloc !93
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %or.i.i.i = or i32 %22, %shl.i.i
  %neg.i.i.i = xor i32 %shl.i.i, -1
  %and.i.i.i = and i32 %22, %neg.i.i.i
  %val.0.i.i.i = select i1 %tobool.not.i.i, i32 %and.i.i.i, i32 %or.i.i.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %23) #5, !srcloc !92
  %dbck_enable_mask.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 17
  %24 = ptrtoint ptr %dbck_enable_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %val.0.i.i.i, ptr %dbck_enable_mask.i.i, align 4
  %25 = ptrtoint ptr %dbck.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dbck.i.i, align 4
  tail call void @clk_disable(ptr noundef %26) #5
  %27 = ptrtoint ptr %dbck_enable_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dbck_enable_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i, label %if.end8.i.i.omap2_set_gpio_debounce.exit.thread.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.omap2_set_gpio_debounce.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap2_set_gpio_debounce.exit.thread.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i
  %dbck_enabled.i.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 18
  %29 = ptrtoint ptr %dbck_enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dbck_enabled.i.i.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool1.not.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.omap_gpio_dbck_enable.exit.i.i_crit_edge

land.lhs.true.i.i.i.omap_gpio_dbck_enable.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_dbck_enable.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dbck.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dbck.i.i, align 4
  %call.i.i.i = tail call i32 @clk_enable(ptr noundef %32) #5
  %33 = ptrtoint ptr %dbck_enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dbck_enabled.i.i.i, align 4
  %34 = ptrtoint ptr %dbck_enable_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dbck_enable_mask.i.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 4
  %debounce_en.i.i.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %debounce_en.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %debounce_en.i.i.i, align 2
  %conv.i.i.i = zext i16 %42 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %conv.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %36) #5, !srcloc !92
  br label %omap_gpio_dbck_enable.exit.i.i

omap_gpio_dbck_enable.exit.i.i:                   ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.omap_gpio_dbck_enable.exit.i.i_crit_edge
  %43 = ptrtoint ptr %dbck_enable_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr.i.i = load i32, ptr %dbck_enable_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool18.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool18.not.i.i, label %omap_gpio_dbck_enable.exit.i.i.omap2_set_gpio_debounce.exit.thread.i_crit_edge, label %if.then19.i.i

omap_gpio_dbck_enable.exit.i.i.omap2_set_gpio_debounce.exit.thread.i_crit_edge: ; preds = %omap_gpio_dbck_enable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap2_set_gpio_debounce.exit.thread.i

if.then19.i.i:                                    ; preds = %omap_gpio_dbck_enable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %debounce20.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 5, i32 11
  %44 = ptrtoint ptr %debounce20.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %debounce.addr.0.i.i, ptr %debounce20.i.i, align 4
  %debounce_en22.i.i = getelementptr inbounds %struct.gpio_bank, ptr %call.i, i32 0, i32 5, i32 12
  %45 = ptrtoint ptr %debounce_en22.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %val.0.i.i.i, ptr %debounce_en22.i.i, align 4
  br label %omap2_set_gpio_debounce.exit.thread.i

omap2_set_gpio_debounce.exit.thread.i:            ; preds = %if.then19.i.i, %omap_gpio_dbck_enable.exit.i.i.omap2_set_gpio_debounce.exit.thread.i_crit_edge, %if.end8.i.i.omap2_set_gpio_debounce.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #5
  br label %sw.epilog

do.end14.i:                                       ; preds = %if.then4.i.i.do.end14.i_crit_edge, %sw.bb2.do.end14.i_crit_edge
  %retval.0.i.i = phi i32 [ -524, %sw.bb2.do.end14.i_crit_edge ], [ -22, %if.then4.i.i.do.end14.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #5
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %46 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.15, i32 noundef %offset, i32 noundef %shr.i, i32 noundef %retval.0.i.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end14.i, %omap2_set_gpio_debounce.exit.thread.i, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -524, %entry.sw.epilog_crit_edge ], [ %call1, %sw.bb ], [ 0, %omap2_set_gpio_debounce.exit.thread.i ], [ %retval.0.i.i, %do.end14.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %set_dataout = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %set_dataout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_dataout, align 4
  tail call void %1(ptr noundef %call, i32 noundef %offset, i32 noundef %value) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_gpio_set_multiple(ptr noundef %chip, ptr nocapture noundef readonly %mask, ptr nocapture noundef readonly %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regs = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %dataout = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dataout to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dataout, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %7, %neg
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits, align 4
  %and5 = and i32 %11, %9
  %or = or i32 %and5, %and
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #5, !srcloc !92
  %dataout6 = getelementptr inbounds %struct.gpio_bank, ptr %call, i32 0, i32 5, i32 10
  %13 = ptrtoint ptr %dataout6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %dataout6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_irq_handler(i32 noundef %irq, ptr noundef %gpiobank) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpiobank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiobank, align 4
  %regs = getelementptr inbounds %struct.gpio_bank, ptr %gpiobank, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %irqstatus = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %irqstatus to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %irqstatus, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %do.end, label %if.end23.critedge, !prof !95

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 568, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23.critedge:                                ; preds = %entry
  %parent = getelementptr inbounds %struct.gpio_bank, ptr %gpiobank, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.end23.critedge.while.cond.preheader_crit_edge, label %lor.rhs.i

if.end23.critedge.while.cond.preheader_crit_edge: ; preds = %if.end23.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.rhs.i.while.cond.preheader_crit_edge, %if.end23.critedge.while.cond.preheader_crit_edge
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %gpiobank, i32 0, i32 9
  %width.i = getelementptr inbounds %struct.gpio_bank, ptr %gpiobank, i32 0, i32 24
  %level_mask = getelementptr inbounds %struct.gpio_bank, ptr %gpiobank, i32 0, i32 7
  %wa_lock = getelementptr inbounds %struct.gpio_bank, ptr %gpiobank, i32 0, i32 10
  %domain = getelementptr inbounds %struct.gpio_bank, ptr %gpiobank, i32 0, i32 11, i32 37, i32 1
  br label %while.cond

lor.rhs.i:                                        ; preds = %if.end23.critedge
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 15
  %10 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %lor.rhs.i.while.cond.preheader_crit_edge, label %land.rhs

lor.rhs.i.while.cond.preheader_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

land.rhs:                                         ; preds = %lor.rhs.i
  %.b190 = load i1, ptr @omap_gpio_irq_handler.__already_done, align 1
  br i1 %.b190, label %land.rhs.cleanup_crit_edge, label %if.then41, !prof !96

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then41:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @omap_gpio_irq_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 572, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %irq) #5
  br label %cleanup

while.cond:                                       ; preds = %while.body106.while.cond_crit_edge, %while.cond.preheader
  %call82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %11 = ptrtoint ptr %gpiobank to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpiobank, align 4
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width.i, align 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %irqenable.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %irqenable.i, align 2
  %conv.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %12, i32 %conv.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %irqenable_inv.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %irqenable_inv.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %irqenable_inv.i, align 2, !range !91
  %sext.i = sub nsw i8 0, %24
  %neg.i = sext i8 %sext.i to i32
  %spec.select.i = xor i32 %20, %neg.i
  %notmask.i = shl nsw i32 -1, %14
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %spec.select.i, %sub.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr) #5, !srcloc !93
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %and = and i32 %and.i, %26
  %27 = ptrtoint ptr %level_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %level_mask, align 4
  %neg = xor i32 %28, -1
  %and88 = and i32 %and, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %while.cond.do.body92_crit_edge, label %if.then90

while.cond.do.body92_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

if.then90:                                        ; preds = %while.cond
  %29 = ptrtoint ptr %gpiobank to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpiobank, align 4
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %irqstatus.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %irqstatus.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %irqstatus.i, align 2
  %conv.i193 = zext i16 %34 to i32
  %add.ptr.i194 = getelementptr i8, ptr %30, i32 %conv.i193
  %35 = tail call i32 @llvm.bswap.i32(i32 %and88) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %35) #5, !srcloc !92
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %irqstatus2.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %irqstatus2.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %irqstatus2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i, label %if.then90.omap_clear_gpio_irqbank.exit_crit_edge, label %if.then.i

if.then90.omap_clear_gpio_irqbank.exit_crit_edge: ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_clear_gpio_irqbank.exit

if.then.i:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %gpiobank to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpiobank, align 4
  %conv5.i = zext i16 %39 to i32
  %add.ptr6.i = getelementptr i8, ptr %41, i32 %conv5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %35) #5, !srcloc !92
  br label %omap_clear_gpio_irqbank.exit

omap_clear_gpio_irqbank.exit:                     ; preds = %if.then.i, %if.then90.omap_clear_gpio_irqbank.exit_crit_edge
  %reg.0.i = phi ptr [ %add.ptr6.i, %if.then.i ], [ %add.ptr.i194, %if.then90.omap_clear_gpio_irqbank.exit_crit_edge ]
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i) #5, !srcloc !93
  br label %do.body92

do.body92:                                        ; preds = %omap_clear_gpio_irqbank.exit, %while.cond.do.body92_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call82) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  br i1 %tobool101.not, label %do.body92.cleanup_crit_edge, label %do.body92.while.body106_crit_edge

do.body92.while.body106_crit_edge:                ; preds = %do.body92
  br label %while.body106

do.body92.cleanup_crit_edge:                      ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body106:                                    ; preds = %while.body106.while.body106_crit_edge, %do.body92.while.body106_crit_edge
  %isr.0196 = phi i32 [ %and109, %while.body106.while.body106_crit_edge ], [ %and, %do.body92.while.body106_crit_edge ]
  %43 = tail call i32 @llvm.cttz.i32(i32 %isr.0196, i1 true) #5, !range !97
  %shl = shl nuw i32 1, %43
  %neg108 = xor i32 %shl, -1
  %and109 = and i32 %isr.0196, %neg108
  %call117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call117) #5
  %call140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wa_lock) #5
  %44 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %domain, align 4
  %call145 = tail call i32 @generic_handle_domain_irq(ptr noundef %45, i32 noundef %43) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wa_lock, i32 noundef %call140) #5
  %tobool105.not = icmp eq i32 %and109, 0
  br i1 %tobool105.not, label %while.body106.while.cond_crit_edge, label %while.body106.while.body106_crit_edge

while.body106.while.body106_crit_edge:            ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body106

while.body106.while.cond_crit_edge:               ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

cleanup:                                          ; preds = %do.body92.cleanup_crit_edge, %if.then41, %land.rhs.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.then41 ], [ 1, %do.end ], [ 0, %land.rhs.cleanup_crit_edge ], [ 1, %do.body92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_gpio_idle(ptr nocapture noundef %bank) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %2 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank, align 4
  %regs = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %datain = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %datain to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %datain, align 2
  %conv = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !93
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %saved_datain = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 6
  %10 = ptrtoint ptr %saved_datain to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %saved_datain, align 4
  %loses_context = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 21
  %11 = ptrtoint ptr %loses_context to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %loses_context, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %sysconfig = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sysconfig to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sysconfig, align 2
  %conv4 = zext i16 %16 to i32
  %add.ptr5 = getelementptr i8, ptr %3, i32 %conv4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !93
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %context = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5
  %19 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %context, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enabled_non_wakeup_gpios = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 4
  %20 = ptrtoint ptr %enabled_non_wakeup_gpios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enabled_non_wakeup_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  br i1 %tobool9.not, label %if.end.update_gpio_context_count_crit_edge, label %if.end11

if.end.update_gpio_context_count_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_gpio_context_count

if.end11:                                         ; preds = %if.end
  %fallingdetect = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 9
  %22 = ptrtoint ptr %fallingdetect to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fallingdetect, align 4
  %and = and i32 %23, %21
  %risingdetect = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 8
  %24 = ptrtoint ptr %risingdetect to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %risingdetect, align 4
  %neg = xor i32 %25, -1
  %and15 = and i32 %and, %neg
  %26 = ptrtoint ptr %saved_datain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %saved_datain, align 4
  %or = or i32 %27, %and15
  %and20 = and i32 %25, %21
  %and20.not = xor i32 %and20, -1
  %neg25 = or i32 %23, %and20.not
  %and27 = and i32 %or, %neg25
  store i32 %and27, ptr %saved_datain, align 4
  %28 = ptrtoint ptr %loses_context to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %loses_context, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  br i1 %tobool32.not, label %if.then35, label %if.end11.update_gpio_context_count_crit_edge

if.end11.update_gpio_context_count_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_gpio_context_count

if.then35:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %fallingdetect38 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %fallingdetect38 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fallingdetect38, align 2
  %conv39 = zext i16 %33 to i32
  %add.ptr40 = getelementptr i8, ptr %3, i32 %conv39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool42.not = icmp eq i32 %21, -1
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #5, !srcloc !93
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %or.i = or i32 %35, %21
  %neg.i = xor i32 %21, -1
  %and.i = and i32 %35, %neg.i
  %val.0.i = select i1 %tobool42.not, i32 %and.i, i32 %or.i
  %36 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %36) #5, !srcloc !92
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %risingdetect45 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %38, i32 0, i32 21
  %39 = ptrtoint ptr %risingdetect45 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %risingdetect45, align 2
  %conv46 = zext i16 %40 to i32
  %add.ptr47 = getelementptr i8, ptr %3, i32 %conv46
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #5, !srcloc !93
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  %or.i1 = or i32 %42, %21
  %and.i3 = and i32 %42, %neg.i
  %val.0.i4 = select i1 %tobool42.not, i32 %and.i3, i32 %or.i1
  %43 = tail call i32 @llvm.bswap.i32(i32 %val.0.i4) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %43) #5, !srcloc !92
  br label %update_gpio_context_count

update_gpio_context_count:                        ; preds = %if.then35, %if.end11.update_gpio_context_count_crit_edge, %if.end.update_gpio_context_count_crit_edge
  %get_context_loss_count = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 27
  %44 = ptrtoint ptr %get_context_loss_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_context_loss_count, align 4
  %tobool52.not = icmp eq ptr %45, null
  br i1 %tobool52.not, label %update_gpio_context_count.if.end56_crit_edge, label %if.then53

update_gpio_context_count.if.end56_crit_edge:     ; preds = %update_gpio_context_count
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then53:                                        ; preds = %update_gpio_context_count
  call void @__sanitizer_cov_trace_pc() #7
  %call55 = tail call i32 %45(ptr noundef %1) #5
  %context_loss_count = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 25
  %46 = ptrtoint ptr %context_loss_count to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call55, ptr %context_loss_count, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %update_gpio_context_count.if.end56_crit_edge
  %dbck_enable_mask.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 17
  %47 = ptrtoint ptr %dbck_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dbck_enable_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %if.end56.omap_gpio_dbck_disable.exit_crit_edge, label %land.lhs.true.i

if.end56.omap_gpio_dbck_disable.exit_crit_edge:   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_dbck_disable.exit

land.lhs.true.i:                                  ; preds = %if.end56
  %dbck_enabled.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 18
  %49 = ptrtoint ptr %dbck_enabled.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dbck_enabled.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool1.not.i = icmp eq i8 %50, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.omap_gpio_dbck_disable.exit_crit_edge, label %if.then.i

land.lhs.true.i.omap_gpio_dbck_disable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_dbck_disable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bank, align 4
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %debounce_en.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %debounce_en.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %debounce_en.i, align 2
  %conv.i = zext i16 %56 to i32
  %add.ptr.i = getelementptr i8, ptr %52, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !92
  %dbck.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 12
  %57 = ptrtoint ptr %dbck.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dbck.i, align 4
  tail call void @clk_disable(ptr noundef %58) #5
  %59 = ptrtoint ptr %dbck_enabled.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %dbck_enabled.i, align 4
  br label %omap_gpio_dbck_disable.exit

omap_gpio_dbck_disable.exit:                      ; preds = %if.then.i, %land.lhs.true.i.omap_gpio_dbck_disable.exit_crit_edge, %if.end56.omap_gpio_dbck_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_gpio_unidle(ptr noundef %bank) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %loses_context = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 21
  %2 = ptrtoint ptr %loses_context to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %loses_context, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %context_valid = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 22
  %4 = ptrtoint ptr %context_valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %context_valid, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %regs1.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 1
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %8 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bank, align 4
  %sysconfig.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %sysconfig.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sysconfig.i, align 2
  %conv.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !93
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %context.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5
  %14 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %context.i, align 4
  %ctrl.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 17
  %15 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ctrl.i, align 2
  %conv5.i = zext i16 %16 to i32
  %add.ptr6.i = getelementptr i8, ptr %9, i32 %conv5.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #5, !srcloc !93
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %ctrl10.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 4
  %19 = ptrtoint ptr %ctrl10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ctrl10.i, align 4
  %direction.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %direction.i, align 2
  %conv12.i = zext i16 %21 to i32
  %add.ptr13.i = getelementptr i8, ptr %9, i32 %conv12.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #5, !srcloc !93
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %oe.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %oe.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %oe.i, align 4
  %wkup_en.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 18
  %25 = ptrtoint ptr %wkup_en.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %wkup_en.i, align 2
  %conv18.i = zext i16 %26 to i32
  %add.ptr19.i = getelementptr i8, ptr %9, i32 %conv18.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #5, !srcloc !93
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %wake_en.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %wake_en.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %wake_en.i, align 4
  %leveldetect0.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 19
  %30 = ptrtoint ptr %leveldetect0.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %leveldetect0.i, align 2
  %conv24.i = zext i16 %31 to i32
  %add.ptr25.i = getelementptr i8, ptr %9, i32 %conv24.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #5, !srcloc !93
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %leveldetect029.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 6
  %34 = ptrtoint ptr %leveldetect029.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %leveldetect029.i, align 4
  %leveldetect1.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 20
  %35 = ptrtoint ptr %leveldetect1.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %leveldetect1.i, align 2
  %conv31.i = zext i16 %36 to i32
  %add.ptr32.i = getelementptr i8, ptr %9, i32 %conv31.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #5, !srcloc !93
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %leveldetect136.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 7
  %39 = ptrtoint ptr %leveldetect136.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %leveldetect136.i, align 4
  %risingdetect.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 21
  %40 = ptrtoint ptr %risingdetect.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %risingdetect.i, align 2
  %conv38.i = zext i16 %41 to i32
  %add.ptr39.i = getelementptr i8, ptr %9, i32 %conv38.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #5, !srcloc !93
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %risingdetect43.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 8
  %44 = ptrtoint ptr %risingdetect43.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %risingdetect43.i, align 4
  %fallingdetect.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 22
  %45 = ptrtoint ptr %fallingdetect.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %fallingdetect.i, align 2
  %conv45.i = zext i16 %46 to i32
  %add.ptr46.i = getelementptr i8, ptr %9, i32 %conv45.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #5, !srcloc !93
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %fallingdetect50.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 9
  %49 = ptrtoint ptr %fallingdetect50.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fallingdetect50.i, align 4
  %irqenable.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 11
  %50 = ptrtoint ptr %irqenable.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %irqenable.i, align 2
  %conv52.i = zext i16 %51 to i32
  %add.ptr53.i = getelementptr i8, ptr %9, i32 %conv52.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i) #5, !srcloc !93
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  %irqenable1.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %irqenable1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %irqenable1.i, align 4
  %irqenable2.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 12
  %55 = ptrtoint ptr %irqenable2.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %irqenable2.i, align 2
  %conv58.i = zext i16 %56 to i32
  %add.ptr59.i = getelementptr i8, ptr %9, i32 %conv58.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #5, !srcloc !93
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  %irqenable263.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %irqenable263.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %irqenable263.i, align 4
  %dataout.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 4
  %60 = ptrtoint ptr %dataout.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %dataout.i, align 2
  %conv65.i = zext i16 %61 to i32
  %add.ptr66.i = getelementptr i8, ptr %9, i32 %conv65.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i) #5, !srcloc !93
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %dataout70.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 10
  %64 = ptrtoint ptr %dataout70.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %dataout70.i, align 4
  %65 = ptrtoint ptr %context_valid to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %context_valid, align 4
  %get_context_loss_count = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 27
  %66 = ptrtoint ptr %get_context_loss_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %get_context_loss_count, align 4
  %tobool2.not = icmp eq ptr %67, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %67(ptr noundef %1) #5
  %context_loss_count = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 25
  %68 = ptrtoint ptr %context_loss_count to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call, ptr %context_loss_count, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %dbck_enable_mask.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 17
  %69 = ptrtoint ptr %dbck_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dbck_enable_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %if.end5.omap_gpio_dbck_enable.exit_crit_edge, label %land.lhs.true.i

if.end5.omap_gpio_dbck_enable.exit_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_dbck_enable.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %dbck_enabled.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 18
  %71 = ptrtoint ptr %dbck_enabled.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %dbck_enabled.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool1.not.i = icmp eq i8 %72, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.omap_gpio_dbck_enable.exit_crit_edge

land.lhs.true.i.omap_gpio_dbck_enable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_gpio_dbck_enable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %dbck.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 12
  %73 = ptrtoint ptr %dbck.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dbck.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %74) #5
  %75 = ptrtoint ptr %dbck_enabled.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %dbck_enabled.i, align 4
  %76 = ptrtoint ptr %dbck_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dbck_enable_mask.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  %79 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bank, align 4
  %regs.i = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 1
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %debounce_en.i = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %82, i32 0, i32 16
  %83 = ptrtoint ptr %debounce_en.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %debounce_en.i, align 2
  %conv.i181 = zext i16 %84 to i32
  %add.ptr.i182 = getelementptr i8, ptr %80, i32 %conv.i181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %78) #5, !srcloc !92
  br label %omap_gpio_dbck_enable.exit

omap_gpio_dbck_enable.exit:                       ; preds = %if.then.i, %land.lhs.true.i.omap_gpio_dbck_enable.exit_crit_edge, %if.end5.omap_gpio_dbck_enable.exit_crit_edge
  %85 = ptrtoint ptr %loses_context to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %loses_context, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool7.not = icmp eq i8 %86, 0
  br i1 %tobool7.not, label %if.else19, label %if.then8

if.then8:                                         ; preds = %omap_gpio_dbck_enable.exit
  %get_context_loss_count9 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 27
  %87 = ptrtoint ptr %get_context_loss_count9 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %get_context_loss_count9, align 4
  %tobool10.not = icmp eq ptr %88, null
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @omap_gpio_restore_context(ptr noundef %bank)
  br label %if.end27

if.else:                                          ; preds = %if.then8
  %call13 = tail call i32 %88(ptr noundef %1) #5
  %context_loss_count14 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 25
  %89 = ptrtoint ptr %context_loss_count14 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %context_loss_count14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %90)
  %cmp.not = icmp eq i32 %call13, %90
  br i1 %cmp.not, label %if.else.cleanup_crit_edge, label %if.then15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @omap_gpio_restore_context(ptr noundef %bank)
  br label %if.end27

if.else19:                                        ; preds = %omap_gpio_dbck_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %fallingdetect = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 9
  %91 = ptrtoint ptr %fallingdetect to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fallingdetect, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %94 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bank, align 4
  %regs = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 1
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %fallingdetect20 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %97, i32 0, i32 22
  %98 = ptrtoint ptr %fallingdetect20 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %fallingdetect20, align 2
  %conv = zext i16 %99 to i32
  %add.ptr = getelementptr i8, ptr %95, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %93) #5, !srcloc !92
  %risingdetect = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 8
  %100 = ptrtoint ptr %risingdetect to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %risingdetect, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %103 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bank, align 4
  %105 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs, align 4
  %risingdetect24 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %106, i32 0, i32 21
  %107 = ptrtoint ptr %risingdetect24 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %risingdetect24, align 2
  %conv25 = zext i16 %108 to i32
  %add.ptr26 = getelementptr i8, ptr %104, i32 %conv25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %102) #5, !srcloc !92
  br label %if.end27

if.end27:                                         ; preds = %if.else19, %if.then15, %if.then11
  %109 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bank, align 4
  %regs29 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 1
  %111 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs29, align 4
  %datain = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %datain to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %datain, align 2
  %conv30 = zext i16 %114 to i32
  %add.ptr31 = getelementptr i8, ptr %110, i32 %conv30
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #5, !srcloc !93
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %saved_datain = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 6
  %117 = ptrtoint ptr %saved_datain to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %saved_datain, align 4
  %xor = xor i32 %116, %118
  %enabled_non_wakeup_gpios = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 4
  %119 = ptrtoint ptr %enabled_non_wakeup_gpios to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %enabled_non_wakeup_gpios, align 4
  %and = and i32 %xor, %120
  %fallingdetect34 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 9
  %121 = ptrtoint ptr %fallingdetect34 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fallingdetect34, align 4
  %and35 = and i32 %122, %118
  %and37 = and i32 %and35, %and
  %risingdetect39 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 8
  %123 = ptrtoint ptr %risingdetect39 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %risingdetect39, align 4
  %neg = xor i32 %118, -1
  %and40 = and i32 %and, %neg
  %and42 = and i32 %and40, %124
  %and49.demorgan = or i32 %124, %122
  %and49 = xor i32 %and49.demorgan, -1
  %and50 = and i32 %and, %and49
  %or = or i32 %and42, %and37
  %or51 = or i32 %or, %and50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or51)
  %tobool52.not = icmp eq i32 %or51, 0
  br i1 %tobool52.not, label %if.end27.cleanup_crit_edge, label %if.then53

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then53:                                        ; preds = %if.end27
  %125 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bank, align 4
  %127 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs29, align 4
  %leveldetect0 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %128, i32 0, i32 19
  %129 = ptrtoint ptr %leveldetect0 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %leveldetect0, align 2
  %conv57 = zext i16 %130 to i32
  %add.ptr58 = getelementptr i8, ptr %126, i32 %conv57
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #5, !srcloc !93
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  %133 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bank, align 4
  %135 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs29, align 4
  %leveldetect1 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %136, i32 0, i32 20
  %137 = ptrtoint ptr %leveldetect1 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %leveldetect1, align 2
  %conv64 = zext i16 %138 to i32
  %add.ptr65 = getelementptr i8, ptr %134, i32 %conv64
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #5, !srcloc !93
  %140 = tail call i32 @llvm.bswap.i32(i32 %139)
  %141 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs29, align 4
  %irqstatus_raw0 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %142, i32 0, i32 9
  %143 = ptrtoint ptr %irqstatus_raw0 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %irqstatus_raw0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool69.not = icmp eq i16 %144, 0
  br i1 %tobool69.not, label %if.then70, label %if.then53.if.end83_crit_edge

if.then53.if.end83_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then70:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %or71 = or i32 %132, %or51
  %145 = tail call i32 @llvm.bswap.i32(i32 %or71)
  %146 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bank, align 4
  %leveldetect074 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %142, i32 0, i32 19
  %148 = ptrtoint ptr %leveldetect074 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %leveldetect074, align 2
  %conv75 = zext i16 %149 to i32
  %add.ptr76 = getelementptr i8, ptr %147, i32 %conv75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %145) #5, !srcloc !92
  %or77 = or i32 %140, %or51
  %150 = tail call i32 @llvm.bswap.i32(i32 %or77)
  %151 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bank, align 4
  %153 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs29, align 4
  %leveldetect180 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %154, i32 0, i32 20
  %155 = ptrtoint ptr %leveldetect180 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %leveldetect180, align 2
  %conv81 = zext i16 %156 to i32
  %add.ptr82 = getelementptr i8, ptr %152, i32 %conv81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %150) #5, !srcloc !92
  br label %if.end83

if.end83:                                         ; preds = %if.then70, %if.then53.if.end83_crit_edge
  %157 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs29, align 4
  %irqstatus_raw085 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %158, i32 0, i32 9
  %159 = ptrtoint ptr %irqstatus_raw085 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %irqstatus_raw085, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool86.not = icmp eq i16 %160, 0
  br i1 %tobool86.not, label %if.end83.if.end100_crit_edge, label %if.then87

if.end83.if.end100_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %or88 = or i32 %132, %and
  %161 = tail call i32 @llvm.bswap.i32(i32 %or88)
  %162 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bank, align 4
  %leveldetect091 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %158, i32 0, i32 19
  %164 = ptrtoint ptr %leveldetect091 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %leveldetect091, align 2
  %conv92 = zext i16 %165 to i32
  %add.ptr93 = getelementptr i8, ptr %163, i32 %conv92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %161) #5, !srcloc !92
  %or94 = or i32 %140, %and
  %166 = tail call i32 @llvm.bswap.i32(i32 %or94)
  %167 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bank, align 4
  %169 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs29, align 4
  %leveldetect197 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %170, i32 0, i32 20
  %171 = ptrtoint ptr %leveldetect197 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %leveldetect197, align 2
  %conv98 = zext i16 %172 to i32
  %add.ptr99 = getelementptr i8, ptr %168, i32 %conv98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %166) #5, !srcloc !92
  br label %if.end100

if.end100:                                        ; preds = %if.then87, %if.end83.if.end100_crit_edge
  %173 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %bank, align 4
  %175 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs29, align 4
  %leveldetect0103 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %176, i32 0, i32 19
  %177 = ptrtoint ptr %leveldetect0103 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %leveldetect0103, align 2
  %conv104 = zext i16 %178 to i32
  %add.ptr105 = getelementptr i8, ptr %174, i32 %conv104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %131) #5, !srcloc !92
  %179 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bank, align 4
  %181 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs29, align 4
  %leveldetect1108 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %182, i32 0, i32 20
  %183 = ptrtoint ptr %leveldetect1108 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %leveldetect1108, align 2
  %conv109 = zext i16 %184 to i32
  %add.ptr110 = getelementptr i8, ptr %180, i32 %conv109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %139) #5, !srcloc !92
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %if.end27.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_gpio_restore_context(ptr nocapture noundef readonly %bank) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 1
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %2 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank, align 4
  %context = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %context, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %sysconfig3 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %sysconfig3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sysconfig3, align 2
  %conv = zext i16 %8 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !92
  %wake_en = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %wake_en to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wake_en, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %wkup_en = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %wkup_en to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wkup_en, align 2
  %conv5 = zext i16 %13 to i32
  %add.ptr6 = getelementptr i8, ptr %3, i32 %conv5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %11) #5, !srcloc !92
  %ctrl = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %ctrl8 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %ctrl8 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ctrl8, align 2
  %conv9 = zext i16 %18 to i32
  %add.ptr10 = getelementptr i8, ptr %3, i32 %conv9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %16) #5, !srcloc !92
  %leveldetect0 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 6
  %19 = ptrtoint ptr %leveldetect0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %leveldetect0, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %leveldetect012 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %leveldetect012 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %leveldetect012, align 2
  %conv13 = zext i16 %23 to i32
  %add.ptr14 = getelementptr i8, ptr %3, i32 %conv13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %21) #5, !srcloc !92
  %leveldetect1 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 7
  %24 = ptrtoint ptr %leveldetect1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %leveldetect1, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %leveldetect116 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %leveldetect116 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %leveldetect116, align 2
  %conv17 = zext i16 %28 to i32
  %add.ptr18 = getelementptr i8, ptr %3, i32 %conv17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %26) #5, !srcloc !92
  %risingdetect = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 8
  %29 = ptrtoint ptr %risingdetect to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %risingdetect, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %risingdetect20 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 21
  %32 = ptrtoint ptr %risingdetect20 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %risingdetect20, align 2
  %conv21 = zext i16 %33 to i32
  %add.ptr22 = getelementptr i8, ptr %3, i32 %conv21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %31) #5, !srcloc !92
  %fallingdetect = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 9
  %34 = ptrtoint ptr %fallingdetect to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fallingdetect, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %fallingdetect24 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 22
  %37 = ptrtoint ptr %fallingdetect24 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fallingdetect24, align 2
  %conv25 = zext i16 %38 to i32
  %add.ptr26 = getelementptr i8, ptr %3, i32 %conv25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %36) #5, !srcloc !92
  %dataout = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 10
  %39 = ptrtoint ptr %dataout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dataout, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %dataout28 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %dataout28 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dataout28, align 2
  %conv29 = zext i16 %43 to i32
  %add.ptr30 = getelementptr i8, ptr %3, i32 %conv29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %41) #5, !srcloc !92
  %oe = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 5
  %44 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oe, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %direction = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %direction, align 2
  %conv32 = zext i16 %48 to i32
  %add.ptr33 = getelementptr i8, ptr %3, i32 %conv32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %46) #5, !srcloc !92
  %dbck_enable_mask = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 17
  %49 = ptrtoint ptr %dbck_enable_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dbck_enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %debounce = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 11
  %51 = ptrtoint ptr %debounce to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debounce, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %debounce35 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %debounce35 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %debounce35, align 2
  %conv36 = zext i16 %55 to i32
  %add.ptr37 = getelementptr i8, ptr %3, i32 %conv36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %53) #5, !srcloc !92
  %debounce_en = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 12
  %56 = ptrtoint ptr %debounce_en to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debounce_en, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %debounce_en39 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 16
  %59 = ptrtoint ptr %debounce_en39 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %debounce_en39, align 2
  %conv40 = zext i16 %60 to i32
  %add.ptr41 = getelementptr i8, ptr %3, i32 %conv40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %58) #5, !srcloc !92
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irqenable1 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %irqenable1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irqenable1, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %irqenable = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 11
  %64 = ptrtoint ptr %irqenable to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %irqenable, align 2
  %conv43 = zext i16 %65 to i32
  %add.ptr44 = getelementptr i8, ptr %3, i32 %conv43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %63) #5, !srcloc !92
  %irqenable2 = getelementptr inbounds %struct.gpio_bank, ptr %bank, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %irqenable2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irqenable2, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %irqenable246 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %1, i32 0, i32 12
  %69 = ptrtoint ptr %irqenable246 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %irqenable246, align 2
  %conv47 = zext i16 %70 to i32
  %add.ptr48 = getelementptr i8, ptr %3, i32 %conv47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %68) #5, !srcloc !92
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_suspended = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set = or i8 %bf.load, 64
  %3 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set, ptr %is_suspended, align 4
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 9
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  tail call fastcc void @omap_gpio_idle(ptr noundef %5) #5
  %is_suspended.i = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %is_suspended.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %is_suspended.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %is_suspended.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %needs_resume = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %needs_resume to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %needs_resume, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear3 = and i8 %bf.load, -65
  %4 = ptrtoint ptr %needs_resume to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear3, ptr %needs_resume, align 4
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.gpio_bank, ptr %6, i32 0, i32 9
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  tail call fastcc void @omap_gpio_unidle(ptr noundef %6) #5
  %is_suspended.i = getelementptr inbounds %struct.gpio_bank, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %is_suspended.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %is_suspended.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %is_suspended.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  tail call fastcc void @omap_gpio_idle(ptr noundef %1)
  %is_suspended = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_suspended, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %is_suspended, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gpio_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  tail call fastcc void @omap_gpio_unidle(ptr noundef %1)
  %is_suspended = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_suspended, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %is_suspended, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !55, !56, !57, !58, !60, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_gpio_omap__228_1576_omap_gpio_drv_reg2, !1, !"__initcall__kmod_gpio_omap__228_1576_omap_gpio_drv_reg2", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-omap.c", i32 1576, i32 1}
!2 = !{ptr @__exitcall_omap_gpio_exit, !3, !"__exitcall_omap_gpio_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-omap.c", i32 1582, i32 1}
!4 = !{ptr @__UNIQUE_ID_description229, !5, !"__UNIQUE_ID_description229", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-omap.c", i32 1584, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias230, !7, !"__UNIQUE_ID_alias230", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-omap.c", i32 1585, i32 1}
!8 = !{ptr @__UNIQUE_ID_file231, !9, !"__UNIQUE_ID_file231", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-omap.c", i32 1586, i32 1}
!10 = !{ptr @__UNIQUE_ID_license232, !9, !"__UNIQUE_ID_license232", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-omap.c", i32 1561, i32 11}
!13 = !{ptr @omap_gpio_driver, !14, !"omap_gpio_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-omap.c", i32 1557, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-omap.c", i32 1411, i32 40}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-omap.c", i32 1424, i32 36}
!19 = !{ptr @omap_gpio_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-omap.c", i32 1439, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap_gpio_probe.__key.4, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-omap.c", i32 1440, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-omap.c", i32 1449, i32 34}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-omap.c", i32 1451, i32 4}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @omap_gpio_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @omap_gpio_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-omap.c", i32 755, i32 11}
!37 = !{ptr @omap_mpuio_device, !38, !"omap_mpuio_device", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-omap.c", i32 754, i32 31}
!39 = !{ptr @omap_mpuio_driver, !40, !"omap_mpuio_driver", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-omap.c", i32 747, i32 31}
!41 = !{ptr @omap_mpuio_dev_pm_ops, !42, !"omap_mpuio_dev_pm_ops", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-omap.c", i32 741, i32 32}
!43 = !{ptr @omap_gpio_chip_init.gpio, !44, !"gpio", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-omap.c", i32 992, i32 13}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-omap.c", i32 1017, i32 57}
!47 = !{ptr @omap_gpio_chip_init.lock_key, !48, !"lock_key", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-omap.c", i32 1051, i32 8}
!49 = !{ptr @omap_gpio_chip_init.request_key, !48, !"request_key", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-omap.c", i32 1053, i32 48}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-omap.c", i32 889, i32 3}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @omap_gpio_debounce._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @omap_gpio_debounce._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-omap.c", i32 571, i32 6}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"called", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-omap.c", i32 949, i32 14}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-omap.c", i32 956, i32 2}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @omap_gpio_show_rev._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @omap_gpio_show_rev._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @omap_gpio_match, !69, !"omap_gpio_match", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpio-omap.c", i32 1354, i32 34}
!70 = !{ptr @omap4_pdata, !71, !"omap4_pdata", i1 false, i1 false}
!71 = !{!"../drivers/gpio/gpio-omap.c", i32 1348, i32 45}
!72 = !{ptr @omap4_gpio_regs, !73, !"omap4_gpio_regs", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpio-omap.c", i32 1310, i32 40}
!74 = !{ptr @omap3_pdata, !75, !"omap3_pdata", i1 false, i1 false}
!75 = !{!"../drivers/gpio/gpio-omap.c", i32 1342, i32 45}
!76 = !{ptr @omap2_gpio_regs, !77, !"omap2_gpio_regs", i1 false, i1 false}
!77 = !{!"../drivers/gpio/gpio-omap.c", i32 1286, i32 40}
!78 = !{ptr @omap2_pdata, !79, !"omap2_pdata", i1 false, i1 false}
!79 = !{!"../drivers/gpio/gpio-omap.c", i32 1336, i32 45}
!80 = !{ptr @gpio_pm_ops, !81, !"gpio_pm_ops", i1 false, i1 false}
!81 = !{!"../drivers/gpio/gpio-omap.c", i32 1551, i32 32}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i8 0, i8 2}
!92 = !{i64 4657113}
!93 = !{i64 4657531}
!94 = !{i64 4656693}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i32 0, i32 33}
