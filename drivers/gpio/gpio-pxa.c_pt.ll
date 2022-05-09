; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-pxa.c_pt.bc'
source_filename = "../drivers/gpio/gpio-pxa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pxa_gpio_id = type { i32, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pxa_gpio_chip = type { ptr, %struct.gpio_chip, ptr, ptr, i32, i32, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
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
%struct.pxa_gpio_platform_data = type { i32, ptr }
%struct.pxa_gpio_bank = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@pxa_gpio_chip = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_gpio_pxa__228_749_pxa_gpio_legacy_init2 = internal global ptr @pxa_gpio_legacy_init, section ".initcall2.init", align 4
@__initcall__kmod_gpio_pxa__229_758_pxa_gpio_dt_init6 = internal global ptr @pxa_gpio_dt_init, section ".initcall6.init", align 4
@__initcall__kmod_gpio_pxa__230_816_pxa_gpio_sysinit2 = internal global ptr @pxa_gpio_sysinit, section ".initcall2.init", align 4
@pxa_last_gpio = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@pxa_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxa_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @gpio_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxa-gpio\00", [23 x i8] zeroinitializer }, align 32
@pxa_gpio_dt_ids = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,pxa25x-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa25x_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,pxa26x-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa26x_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,pxa27x-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa27x_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,pxa3xx-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa3xx_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa93x-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa93x_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp2-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa1928_id }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@gpio_id_table = internal constant { [9 x %struct.platform_device_id], [40 x i8] } { [9 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa25x-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa25x_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa26x-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa26x_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa27x-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa27x_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa3xx-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa3xx_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa93x-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa93x_id to i32) }, %struct.platform_device_id { [20 x i8] c"mmp-gpio\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mmp_id to i32) }, %struct.platform_device_id { [20 x i8] c"mmp2-gpio\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mmp2_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa1928-gpio\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa1928_id to i32) }, %struct.platform_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@irq_base = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pxa_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @pxa_irq_domain_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_mux\00", [23 x i8] zeroinitializer }, align 32
@pxa_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 667, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error %ld to get gpio clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxa_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/gpio/gpio-pxa.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa_gpio_probe._entry_ptr = internal global ptr @pxa_gpio_probe._entry, section ".printk_index", align 4
@gpio_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio-0\00", [25 x i8] zeroinitializer }, align 32
@pxa_gpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 699, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"request of gpio0 irq failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pxa_gpio_probe._entry_ptr.12 = internal global ptr @pxa_gpio_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio-1\00", [25 x i8] zeroinitializer }, align 32
@pxa_gpio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 707, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"request of gpio1 irq failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pxa_gpio_probe._entry_ptr.16 = internal global ptr @pxa_gpio_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-mux\00", [23 x i8] zeroinitializer }, align 32
@pxa_gpio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 714, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"request of gpio-mux irq failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@pxa_gpio_probe._entry_ptr.20 = internal global ptr @pxa_gpio_probe._entry.18, section ".printk_index", align 4
@pxa_gpio_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 604, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate IRQ numbers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pxa_gpio_probe_dt\00", [46 x i8] zeroinitializer }, align 32
@pxa_gpio_probe_dt._entry_ptr = internal global ptr @pxa_gpio_probe_dt._entry, section ".printk_index", align 4
@pxa_muxed_gpio_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr @pxa_ack_muxed_gpio, ptr @pxa_mask_muxed_gpio, ptr null, ptr @pxa_unmask_muxed_gpio, ptr null, ptr null, ptr null, ptr @pxa_gpio_irq_type, ptr @pxa_gpio_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@pxa_gpio_irq_type.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 0, i8 109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_pxa\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pxa_gpio_irq_type\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: IRQ%d (GPIO%d) - edge%s%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" rising\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" falling\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-pxa\00", [23 x i8] zeroinitializer }, align 32
@pxa_init_gpio_chip.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pxa_init_gpio_chip.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_lock\00", [22 x i8] zeroinitializer }, align 32
@pxa_gpio_direct_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s() unknown irq %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pxa_gpio_direct_handler\00", [40 x i8] zeroinitializer }, align 32
@pxa_gpio_direct_handler._entry_ptr = internal global ptr @pxa_gpio_direct_handler._entry, section ".printk_index", align 4
@pxa25x_id = internal global { %struct.pxa_gpio_id, [24 x i8] } { %struct.pxa_gpio_id { i32 0, i32 85 }, [24 x i8] zeroinitializer }, align 32
@pxa26x_id = internal global { %struct.pxa_gpio_id, [24 x i8] } { %struct.pxa_gpio_id { i32 1, i32 90 }, [24 x i8] zeroinitializer }, align 32
@pxa27x_id = internal global { %struct.pxa_gpio_id, [24 x i8] } { %struct.pxa_gpio_id { i32 2, i32 121 }, [24 x i8] zeroinitializer }, align 32
@pxa3xx_id = internal global { %struct.pxa_gpio_id, [24 x i8] } { %struct.pxa_gpio_id { i32 3, i32 128 }, [24 x i8] zeroinitializer }, align 32
@pxa93x_id = internal global { %struct.pxa_gpio_id, [24 x i8] } { %struct.pxa_gpio_id { i32 4, i32 192 }, [24 x i8] zeroinitializer }, align 32
@mmp_id = internal global { %struct.pxa_gpio_id, [24 x i8] } { %struct.pxa_gpio_id { i32 16, i32 128 }, [24 x i8] zeroinitializer }, align 32
@mmp2_id = internal global { %struct.pxa_gpio_id, [24 x i8] } { %struct.pxa_gpio_id { i32 17, i32 192 }, [24 x i8] zeroinitializer }, align 32
@pxa1928_id = internal global { %struct.pxa_gpio_id, [24 x i8] } { %struct.pxa_gpio_id { i32 18, i32 224 }, [24 x i8] zeroinitializer }, align 32
@pxa_gpio_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @pxa_gpio_suspend, ptr @pxa_gpio_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 17]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 17]
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"pxa_gpio_chip\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 107, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"pxa_last_gpio\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 62, i32 5 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"pxa_gpio_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 733, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 736, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"pxa_gpio_dt_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 578, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"gpio_id_table\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 721, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"irq_base\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 63, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"pxa_irq_domain_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 572, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 650, i32 48 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 651, i32 48 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 652, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 666, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"gpio_type\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 108, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 696, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 698, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 704, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 706, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 711, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 713, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 604, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"pxa_muxed_gpio_chip\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 528, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 529, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 434, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 357, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 377, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant [10 x i8] c"gpio_lock\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 106, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 476, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [10 x i8] c"pxa25x_id\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 110, i32 27 }
@___asan_gen_.177 = private unnamed_addr constant [10 x i8] c"pxa26x_id\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 115, i32 27 }
@___asan_gen_.180 = private unnamed_addr constant [10 x i8] c"pxa27x_id\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 120, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant [10 x i8] c"pxa3xx_id\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 125, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant [10 x i8] c"pxa93x_id\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 130, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"mmp_id\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 135, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant [8 x i8] c"mmp2_id\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 140, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant [11 x i8] c"pxa1928_id\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 145, i32 27 }
@___asan_gen_.198 = private unnamed_addr constant [21 x i8] c"pxa_gpio_syscore_ops\00", align 1
@___asan_gen_.199 = private constant [27 x i8] c"../drivers/gpio/gpio-pxa.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 806, i32 27 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__initcall__kmod_gpio_pxa__228_749_pxa_gpio_legacy_init2, ptr @__initcall__kmod_gpio_pxa__229_758_pxa_gpio_dt_init6, ptr @__initcall__kmod_gpio_pxa__230_816_pxa_gpio_sysinit2, ptr @pxa_gpio_direct_handler._entry, ptr @pxa_gpio_direct_handler._entry_ptr, ptr @pxa_gpio_probe._entry, ptr @pxa_gpio_probe._entry.10, ptr @pxa_gpio_probe._entry.14, ptr @pxa_gpio_probe._entry.18, ptr @pxa_gpio_probe._entry_ptr, ptr @pxa_gpio_probe._entry_ptr.12, ptr @pxa_gpio_probe._entry_ptr.16, ptr @pxa_gpio_probe._entry_ptr.20, ptr @pxa_gpio_probe_dt._entry, ptr @pxa_gpio_probe_dt._entry_ptr, ptr @pxa_gpio_chip, ptr @pxa_last_gpio, ptr @pxa_gpio_driver, ptr @.str, ptr @pxa_gpio_dt_ids, ptr @gpio_id_table, ptr @irq_base, ptr @pxa_irq_domain_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @gpio_type, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @pxa_muxed_gpio_chip, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @pxa_init_gpio_chip.lock_key, ptr @pxa_init_gpio_chip.request_key, ptr @gpio_lock, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @pxa25x_id, ptr @pxa26x_id, ptr @pxa27x_id, ptr @pxa3xx_id, ptr @pxa93x_id, ptr @mmp_id, ptr @mmp2_id, ptr @pxa1928_id, ptr @pxa_gpio_syscore_ops], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_chip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_last_gpio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_dt_ids to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_id_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_muxed_gpio_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_init_gpio_chip.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_init_gpio_chip.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_direct_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa25x_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa26x_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa27x_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa3xx_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa93x_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa1928_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_gpio_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pxa_irq_to_gpio(i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pxa_gpio_chip, align 4
  %irqdomain = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %irqdomain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %irq.i, align 4, !annotation !113
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  br label %6

irq_find_mapping.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  %sub = sub i32 %irq, %5
  %spec.select = select i1 %cmp, i32 %sub, i32 %5
  br label %6

6:                                                ; preds = %irq_find_mapping.exit, %irq_find_mapping.exit.thread
  %7 = phi i32 [ 0, %irq_find_mapping.exit.thread ], [ %spec.select, %irq_find_mapping.exit ]
  ret i32 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_legacy_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %0 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa_gpio_driver, ptr noundef null) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_dt_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %0 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa_gpio_driver, ptr noundef null) #8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_sysinit() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_syscore_ops(ptr noundef nonnull @pxa_gpio_syscore_ops) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 372, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  store i32 %4, ptr @irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.end8

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.then6
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %5 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data.i, align 4
  %9 = inttoptr i32 %8 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end8.pxa_gpio_nums.exit_crit_edge [
    i32 0, label %if.end8.sw.bb.i_crit_edge
    i32 1, label %if.end8.sw.bb.i_crit_edge193
    i32 2, label %if.end8.sw.bb.i_crit_edge194
    i32 3, label %if.end8.sw.bb.i_crit_edge195
    i32 4, label %if.end8.sw.bb.i_crit_edge196
    i32 16, label %if.end8.sw.bb.i_crit_edge197
    i32 17, label %if.end8.sw.bb.i_crit_edge198
    i32 18, label %if.end8.sw.bb.i_crit_edge199
  ]

if.end8.sw.bb.i_crit_edge199:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge198:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge197:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge196:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge195:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge194:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge193:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end8.pxa_gpio_nums.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %pxa_gpio_nums.exit

sw.bb.i:                                          ; preds = %if.end8.sw.bb.i_crit_edge, %if.end8.sw.bb.i_crit_edge193, %if.end8.sw.bb.i_crit_edge194, %if.end8.sw.bb.i_crit_edge195, %if.end8.sw.bb.i_crit_edge196, %if.end8.sw.bb.i_crit_edge197, %if.end8.sw.bb.i_crit_edge198, %if.end8.sw.bb.i_crit_edge199
  store i32 %11, ptr @gpio_type, align 4
  %gpio_nums.i = getelementptr inbounds %struct.pxa_gpio_id, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %gpio_nums.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_nums.i, align 4
  %sub.i = add i32 %14, -1
  br label %pxa_gpio_nums.exit

pxa_gpio_nums.exit:                               ; preds = %sw.bb.i, %if.end8.pxa_gpio_nums.exit_crit_edge
  %count.0.i = phi i32 [ %sub.i, %sw.bb.i ], [ -22, %if.end8.pxa_gpio_nums.exit_crit_edge ]
  store i32 %count.0.i, ptr @pxa_last_gpio, align 4
  %gpio_set_wake = getelementptr inbounds %struct.pxa_gpio_platform_data, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %gpio_set_wake to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpio_set_wake, align 4
  %set_wake = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %set_wake to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %set_wake, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call.i179 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %18 = ptrtoint ptr %call.i179 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i179, align 4
  store i32 %19, ptr @gpio_type, align 4
  %gpio_nums.i180 = getelementptr inbounds %struct.pxa_gpio_id, ptr %call.i179, i32 0, i32 1
  %20 = ptrtoint ptr %gpio_nums.i180 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpio_nums.i180, align 4
  %sub.i181 = add i32 %21, -1
  store i32 %sub.i181, ptr @pxa_last_gpio, align 4
  %call2.i = tail call i32 @__devm_irq_alloc_descs(ptr noundef %dev, i32 noundef -1, i32 noundef 0, i32 noundef %21, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  store i32 %call2.i, ptr @irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %pxa_gpio_probe_dt.exit, label %if.else.if.end14thread-pre-split_crit_edge

if.else.if.end14thread-pre-split_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14thread-pre-split

pxa_gpio_probe_dt.exit:                           ; preds = %if.else
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  %22 = load i32, ptr @irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp11 = icmp slt i32 %22, 0
  br i1 %cmp11, label %pxa_gpio_probe_dt.exit.cleanup_crit_edge, label %pxa_gpio_probe_dt.exit.if.end14thread-pre-split_crit_edge

pxa_gpio_probe_dt.exit.if.end14thread-pre-split_crit_edge: ; preds = %pxa_gpio_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14thread-pre-split

pxa_gpio_probe_dt.exit.cleanup_crit_edge:         ; preds = %pxa_gpio_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14thread-pre-split:                         ; preds = %pxa_gpio_probe_dt.exit.if.end14thread-pre-split_crit_edge, %if.else.if.end14thread-pre-split_crit_edge
  %.pr = load i32, ptr @pxa_last_gpio, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14thread-pre-split, %pxa_gpio_nums.exit
  %23 = phi i32 [ %.pr, %if.end14thread-pre-split ], [ %count.0.i, %pxa_gpio_nums.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool15.not = icmp eq i32 %23, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %add = add i32 %23, 1
  %26 = load i32, ptr @irq_base, align 4
  %call19 = tail call ptr @irq_domain_add_legacy(ptr noundef %25, i32 noundef %add, i32 noundef %26, i32 noundef 0, ptr noundef nonnull @pxa_irq_domain_ops, ptr noundef nonnull %call.i) #8
  %irqdomain = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %irqdomain to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call19, ptr %irqdomain, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %call24 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.1) #8
  %call25 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.2) #8
  %call26 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp27 = icmp sgt i32 %call24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp28 = icmp slt i32 %call25, 1
  %or.cond = select i1 %cmp27, i1 %cmp28, i1 false
  br i1 %or.cond, label %if.end23.cleanup_crit_edge, label %lor.lhs.false

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp29 = icmp slt i32 %call24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp31 = icmp sgt i32 %call25, 0
  %or.cond177 = select i1 %cmp29, i1 %cmp31, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26)
  %cmp33 = icmp slt i32 %call26, 1
  %or.cond178 = select i1 %or.cond177, i1 true, i1 %cmp33
  br i1 %or.cond178, label %lor.lhs.false.cleanup_crit_edge, label %if.end35

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false
  %irq036 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %irq036 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call24, ptr %irq036, align 4
  %irq137 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %irq137 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call25, ptr %irq137, align 4
  %call38 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i182 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %call44 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #8
  %cmp.i183 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %do.end, label %if.end50

do.end:                                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %call44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %31) #11
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  %call51 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_put(ptr noundef %call44) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %32 = load i32, ptr @pxa_last_gpio, align 4
  %add55 = add i32 %32, 1
  %call56 = tail call fastcc i32 @pxa_init_gpio_chip(ptr noundef nonnull %call.i, i32 noundef %add55, ptr noundef %call38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_put(ptr noundef %call44) #8
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  %33 = load i32, ptr @pxa_last_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp60.not189 = icmp slt i32 %33, 0
  br i1 %cmp60.not189, label %if.end59.for.end_crit_edge, label %for.body.preheader

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end59
  %banks = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %gpio.0192 = phi i32 [ %add71, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %c.0190 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %35, %for.body.preheader ]
  %36 = ptrtoint ptr %c.0190 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %c.0190, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !114
  %38 = ptrtoint ptr %c.0190 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %c.0190, align 4
  %add.ptr62 = getelementptr i8, ptr %39, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #8, !srcloc !114
  %40 = ptrtoint ptr %c.0190 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %c.0190, align 4
  %add.ptr64 = getelementptr i8, ptr %41, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 -1) #8, !srcloc !114
  %42 = load i32, ptr @gpio_type, align 4
  %43 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool66.not = icmp eq i32 %43, 0
  br i1 %tobool66.not, label %for.body.for.inc_crit_edge, label %if.then67

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then67:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %c.0190 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %c.0190, align 4
  %add.ptr69 = getelementptr i8, ptr %45, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 -1) #8, !srcloc !114
  br label %for.inc

for.inc:                                          ; preds = %if.then67, %for.body.for.inc_crit_edge
  %add71 = add i32 %gpio.0192, 32
  %incdec.ptr = getelementptr %struct.pxa_gpio_bank, ptr %c.0190, i32 1
  %46 = load i32, ptr @pxa_last_gpio, align 4
  %cmp60.not = icmp sgt i32 %add71, %46
  br i1 %cmp60.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end59.for.end_crit_edge
  br i1 %cmp27, label %if.then73, label %for.end.if.end83_crit_edge

for.end.if.end83_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then73:                                        ; preds = %for.end
  %call.i184 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call24, ptr noundef nonnull @pxa_gpio_direct_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool76.not = icmp eq i32 %call.i184, 0
  br i1 %tobool76.not, label %if.then73.if.end83_crit_edge, label %do.end80

if.then73.if.end83_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.end80:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call.i184) #11
  br label %if.end83

if.end83:                                         ; preds = %do.end80, %if.then73.if.end83_crit_edge, %for.end.if.end83_crit_edge
  br i1 %cmp31, label %if.then85, label %if.end83.if.end95_crit_edge

if.end83.if.end95_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then85:                                        ; preds = %if.end83
  %call.i185 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call25, ptr noundef nonnull @pxa_gpio_direct_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool88.not = icmp eq i32 %call.i185, 0
  br i1 %tobool88.not, label %if.then85.if.end95_crit_edge, label %do.end92

if.then85.if.end95_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

do.end92:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call.i185) #11
  br label %if.end95

if.end95:                                         ; preds = %do.end92, %if.then85.if.end95_crit_edge, %if.end83.if.end95_crit_edge
  %call.i186 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call26, ptr noundef nonnull @pxa_gpio_demux_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool98.not = icmp eq i32 %call.i186, 0
  br i1 %tobool98.not, label %if.end95.if.end104_crit_edge, label %do.end102

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

do.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i186) #11
  br label %if.end104

if.end104:                                        ; preds = %do.end102, %if.end95.if.end104_crit_edge
  store ptr %call.i, ptr @pxa_gpio_chip, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.then58, %if.then53, %do.end, %if.then40, %lor.lhs.false.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %pxa_gpio_probe_dt.exit.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then40 ], [ %31, %do.end ], [ %call51, %if.then53 ], [ %call56, %if.then58 ], [ 0, %if.end104 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %pxa_gpio_probe_dt.exit.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pxa_init_gpio_chip(ptr noundef %pchip, i32 noundef %ngpio, ptr noundef %regbase) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %ngpio, 31
  %div = sdiv i32 %sub, 32
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 32) #8
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !115

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %banks53 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 2
  %2 = ptrtoint ptr %banks53 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %banks53, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %3 = ptrtoint ptr %pchip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pchip, align 4
  %5 = extractvalue { i32, i1 } %0, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %5, i32 noundef 3520) #8
  %banks = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 2
  %6 = ptrtoint ptr %banks to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %banks, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit
  %7 = ptrtoint ptr %pchip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pchip, align 4
  %chip = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1
  %parent = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %parent, align 4
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.30, ptr %chip, align 4
  %direction_input = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pxa_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 9
  %12 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @pxa_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @pxa_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pxa_gpio_set, ptr %set, align 4
  %to_irq = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 15
  %15 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pxa_gpio_to_irq, ptr %to_irq, align 4
  %conv = trunc i32 %ngpio to i16
  %ngpio10 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 20
  %16 = ptrtoint ptr %ngpio10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %ngpio10, align 4
  %request = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 6
  %18 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %of_xlate = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 41
  %19 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pxa_gpio_of_xlate, ptr %of_xlate, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.pxa_gpio_chip, ptr %pchip, i32 0, i32 1, i32 40
  %20 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub)
  %cmp55 = icmp sgt i32 %sub, 31
  br i1 %cmp55, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %21 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %banks, align 4
  %add.ptr = getelementptr %struct.pxa_gpio_bank, ptr %22, i32 %i.056
  %i.056.frozen = freeze i32 %i.056
  %div17 = udiv i32 %i.056.frozen, 3
  %shl = shl i32 %div17, 8
  %add.ptr18 = getelementptr i8, ptr %regbase, i32 %shl
  %23 = mul i32 %div17, 3
  %rem.decomposed = sub i32 %i.056.frozen, %23
  %shl19 = shl nuw nsw i32 %rem.decomposed, 2
  %add.ptr20 = getelementptr i8, ptr %add.ptr18, i32 %shl19
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr20, ptr %add.ptr, align 4
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call24 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef %pchip, ptr noundef nonnull @pxa_init_gpio_chip.lock_key, ptr noundef nonnull @pxa_init_gpio_chip.request_key) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ %call24, %for.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_direct_handler(i32 noundef %in_irq, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq0 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %in_irq)
  %cmp = icmp eq i32 %1, %in_irq
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irqdomain = getelementptr inbounds %struct.pxa_gpio_chip, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irqdomain, align 4
  %call = tail call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef 0) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %irq1 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %d, i32 0, i32 5
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %in_irq)
  %cmp1 = icmp eq i32 %5, %in_irq
  br i1 %cmp1, label %if.then2, label %do.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %irqdomain3 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %d, i32 0, i32 3
  %6 = ptrtoint ptr %irqdomain3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irqdomain3, align 4
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %7, i32 noundef 1) #8
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %in_irq) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then2 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_demux_handler(i32 noundef %in_irq, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  %gedr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gedr) #8
  %0 = ptrtoint ptr %gedr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gedr, align 4, !annotation !113
  %banks = getelementptr inbounds %struct.pxa_gpio_chip, ptr %d, i32 0, i32 2
  %irqdomain = getelementptr inbounds %struct.pxa_gpio_chip, ptr %d, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %for.end12.do.body_crit_edge, %entry
  %handled.0 = phi i32 [ 0, %entry ], [ %add13, %for.end12.do.body_crit_edge ]
  %1 = load i32, ptr @pxa_last_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not27 = icmp slt i32 %1, 0
  br i1 %cmp.not27, label %do.body.do.end_crit_edge, label %for.body.preheader

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.preheader:                               ; preds = %do.body
  %2 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc10.for.body_crit_edge, %for.body.preheader
  %loop.031 = phi i32 [ %loop.1.lcssa, %for.inc10.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %gpio.029 = phi i32 [ %add11, %for.inc10.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %c.028 = phi ptr [ %incdec.ptr, %for.inc10.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %4 = ptrtoint ptr %c.028 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c.028, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 72
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !116
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %irq_mask = getelementptr inbounds %struct.pxa_gpio_bank, ptr %c.028, i32 0, i32 1
  %8 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_mask, align 4
  %and = and i32 %9, %7
  %10 = ptrtoint ptr %gedr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %gedr, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %and)
  %12 = ptrtoint ptr %c.028 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c.028, align 4
  %add.ptr2 = getelementptr i8, ptr %13, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %11) #8, !srcloc !114
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %gedr, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call3)
  %cmp525 = icmp slt i32 %call3, 32
  br i1 %cmp525, label %for.body.for.body6_crit_edge, label %for.body.for.inc10_crit_edge

for.body.for.inc10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc10

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %n.026 = phi i32 [ %call9, %for.body6.for.body6_crit_edge ], [ %call3, %for.body.for.body6_crit_edge ]
  %14 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irqdomain, align 4
  %add = add i32 %n.026, %gpio.029
  %call7 = call i32 @generic_handle_domain_irq(ptr noundef %15, i32 noundef %add) #8
  %add8 = add nsw i32 %n.026, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %gedr, i32 noundef 32, i32 noundef %add8) #8
  %cmp5 = icmp slt i32 %call9, 32
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.inc10_crit_edge

for.body6.for.inc10_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc10

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc10:                                        ; preds = %for.body6.for.inc10_crit_edge, %for.body.for.inc10_crit_edge
  %loop.1.lcssa = phi i32 [ %loop.031, %for.body.for.inc10_crit_edge ], [ 1, %for.body6.for.inc10_crit_edge ]
  %add11 = add i32 %gpio.029, 32
  %incdec.ptr = getelementptr %struct.pxa_gpio_bank, ptr %c.028, i32 1
  %16 = load i32, ptr @pxa_last_gpio, align 4
  %cmp.not = icmp sgt i32 %add11, %16
  br i1 %cmp.not, label %for.end12, label %for.inc10.for.body_crit_edge

for.inc10.for.body_crit_edge:                     ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end12:                                        ; preds = %for.inc10
  %add13 = add i32 %loop.1.lcssa, %handled.0
  %tobool.not = icmp eq i32 %loop.1.lcssa, 0
  br i1 %tobool.not, label %for.end12.do.end_crit_edge, label %for.end12.do.body_crit_edge

for.end12.do.body_crit_edge:                      ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end12.do.end_crit_edge:                       ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end12.do.end_crit_edge, %do.body.do.end_crit_edge
  %add1335 = phi i32 [ %add13, %for.end12.do.end_crit_edge ], [ %handled.0, %do.body.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1335)
  %tobool14.not = icmp ne i32 %add1335, 0
  %cond = zext i1 %tobool14.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gedr) #8
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @pxa_muxed_gpio_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #8
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_ack_muxed_gpio(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %chip = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %banks.i, align 4
  %div.i = sdiv i32 %3, 32
  %add.ptr.i = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %7, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_mask_muxed_gpio(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %chip = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 1
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %banks.i, align 4
  %div1.i = lshr i32 %3, 5
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i30 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %banks.i30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %banks.i30, align 4
  %div.i = sdiv i32 %3, 32
  %add.ptr.i31 = getelementptr %struct.pxa_gpio_bank, ptr %7, i32 %div.i
  %8 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i31, align 4
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  %neg = xor i32 %shl, -1
  %irq_mask = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 1
  %10 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_mask, align 4
  %and5 = and i32 %11, %neg
  store i32 %and5, ptr %irq_mask, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 48
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !116
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %and10 = and i32 %13, %neg
  %add.ptr12 = getelementptr i8, ptr %9, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !116
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and18 = and i32 %15, %neg
  %16 = tail call i32 @llvm.bswap.i32(i32 %and10)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #8, !srcloc !114
  %17 = tail call i32 @llvm.bswap.i32(i32 %and18)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %17) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_unmask_muxed_gpio(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %chip = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 1
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %banks.i, align 4
  %div1.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  %irq_mask = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 1
  %6 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mask, align 4
  %or = or i32 %7, %shl
  store i32 %or, ptr %irq_mask, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !116
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %12 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_mask, align 4
  %neg.i = xor i32 %13, -1
  %and.i = and i32 %11, %neg.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 60
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !116
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_mask, align 4
  %neg7.i = xor i32 %19, -1
  %and8.i = and i32 %17, %neg7.i
  %irq_edge_rise.i = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 2
  %20 = ptrtoint ptr %irq_edge_rise.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_edge_rise.i, align 4
  %and10.i = and i32 %21, %19
  %or.i = or i32 %and10.i, %and.i
  %irq_edge_fall.i = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 3
  %22 = ptrtoint ptr %irq_edge_fall.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_edge_fall.i, align 4
  %and12.i = and i32 %23, %19
  %or13.i = or i32 %and12.i, %and8.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %24) #8, !srcloc !114
  %27 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #8
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %29, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %27) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_irq_type(ptr nocapture noundef readonly %d, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %chip = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 1
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %banks.i, align 4
  %div1.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type)
  %cmp = icmp eq i32 %type, 16
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %irq_edge_rise = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 2
  %6 = ptrtoint ptr %irq_edge_rise to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_edge_rise, align 4
  %irq_edge_fall = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 3
  %8 = ptrtoint ptr %irq_edge_fall to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_edge_fall, align 4
  %or = or i32 %9, %7
  %and5 = and i32 %or, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i87 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i.i = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i.i87, i32 0, i32 2
  %10 = ptrtoint ptr %banks.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %banks.i.i, align 4
  %div.i.i = sdiv i32 %3, 32
  %add.ptr.i.i = getelementptr %struct.pxa_gpio_bank, ptr %11, i32 %div.i.i
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #8, !srcloc !116
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = load i32, ptr @gpio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %switch.i = icmp ult i32 %16, 3
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end
  %add.ptr3.i = getelementptr i8, ptr %13, i32 84
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !116
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %and.i = shl i32 %3, 1
  %mul.i = and i32 %and.i, 30
  %shr.i = lshr i32 %18, %mul.i
  %and6.i = and i32 %shr.i, 3
  %and8.i = and i32 %15, %shl
  %19 = load i32, ptr @gpio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i = icmp ne i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %3)
  %cmp1.i.i = icmp slt i32 %3, 86
  %tobool.not.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and6.i)
  %cmp.not.i = icmp ne i32 %and6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %cmp10.i = icmp eq i32 %and8.i, 0
  %narrow.i = select i1 %cmp.not.i, i1 true, i1 %cmp10.i
  %20 = zext i1 %narrow.i to i32
  br label %__gpio_is_occupied.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp11.not.i = icmp ne i32 %and6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %cmp13.i = icmp ne i32 %and8.i, 0
  %narrow28.i = select i1 %cmp11.not.i, i1 true, i1 %cmp13.i
  %21 = zext i1 %narrow28.i to i32
  br label %__gpio_is_occupied.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and18.i = and i32 %15, %shl
  br label %__gpio_is_occupied.exit

__gpio_is_occupied.exit:                          ; preds = %sw.default.i, %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %and18.i, %sw.default.i ], [ %20, %if.then.i ], [ %21, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool8.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool8.not, label %__gpio_is_occupied.exit.if.end11_crit_edge, label %__gpio_is_occupied.exit.cleanup_crit_edge

__gpio_is_occupied.exit.cleanup_crit_edge:        ; preds = %__gpio_is_occupied.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__gpio_is_occupied.exit.if.end11_crit_edge:       ; preds = %__gpio_is_occupied.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %__gpio_is_occupied.exit.if.end11_crit_edge, %entry.if.end11_crit_edge
  %type.addr.0 = phi i32 [ %type, %entry.if.end11_crit_edge ], [ 3, %__gpio_is_occupied.exit.if.end11_crit_edge ]
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !116
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = load i32, ptr @gpio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp ne i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %3)
  %cmp1.i = icmp slt i32 %3, 86
  %tobool14.not = or i1 %cmp1.i, %cmp.i
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %or16 = or i32 %25, %shl
  %27 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr18 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %27) #8, !srcloc !114
  br label %if.end22

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl, -1
  %and19 = and i32 %25, %neg
  %30 = tail call i32 @llvm.bswap.i32(i32 %and19)
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr21 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %30) #8, !srcloc !114
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %and23 = and i32 %type.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else28, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %irq_edge_rise26 = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 2
  %33 = ptrtoint ptr %irq_edge_rise26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_edge_rise26, align 4
  %or27 = or i32 %34, %shl
  store i32 %or27, ptr %irq_edge_rise26, align 4
  br label %if.end32

if.else28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %neg29 = xor i32 %shl, -1
  %irq_edge_rise30 = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 2
  %35 = ptrtoint ptr %irq_edge_rise30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq_edge_rise30, align 4
  %and31 = and i32 %36, %neg29
  store i32 %and31, ptr %irq_edge_rise30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then25
  %and33 = and i32 %type.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else38, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %irq_edge_fall36 = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 3
  %37 = ptrtoint ptr %irq_edge_fall36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq_edge_fall36, align 4
  %or37 = or i32 %38, %shl
  store i32 %or37, ptr %irq_edge_fall36, align 4
  br label %if.end42

if.else38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %neg39 = xor i32 %shl, -1
  %irq_edge_fall40 = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 3
  %39 = ptrtoint ptr %irq_edge_fall40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_edge_fall40, align 4
  %and41 = and i32 %40, %neg39
  store i32 %and41, ptr %irq_edge_fall40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then35
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %42, i32 48
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #8, !srcloc !116
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  %irq_mask.i = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 1
  %45 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq_mask.i, align 4
  %neg.i = xor i32 %46, -1
  %and.i91 = and i32 %44, %neg.i
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr3.i92 = getelementptr i8, ptr %48, i32 60
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i92) #8, !srcloc !116
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  %51 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq_mask.i, align 4
  %neg7.i = xor i32 %52, -1
  %and8.i93 = and i32 %50, %neg7.i
  %irq_edge_rise.i = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 2
  %53 = ptrtoint ptr %irq_edge_rise.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq_edge_rise.i, align 4
  %and10.i = and i32 %54, %52
  %or.i = or i32 %and10.i, %and.i91
  %irq_edge_fall.i = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %div1.i, i32 3
  %55 = ptrtoint ptr %irq_edge_fall.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq_edge_fall.i, align 4
  %and12.i = and i32 %56, %52
  %or13.i = or i32 %and12.i, %and8.i93
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %59, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %57) #8, !srcloc !114
  %60 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #8
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %62, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %60) #8, !srcloc !114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_gpio_irq_type.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa_gpio_irq_type, %cleanup)) #8
          to label %if.then49 [label %cleanup], !srcloc !117

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %63 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq, align 4
  %cond = select i1 %tobool24.not, ptr @.str.28, ptr @.str.27
  %cond54 = select i1 %tobool34.not, ptr @.str.28, ptr @.str.29
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pxa_gpio_irq_type.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %64, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef nonnull %cond54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end42, %__gpio_is_occupied.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %set_wake = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %set_wake to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_wake, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %call3 = tail call i32 %3(i32 noundef %5, i32 noundef %on) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks.i, align 4
  %div.i = sdiv i32 %offset, 32
  %add.ptr.i = getelementptr %struct.pxa_gpio_bank, ptr %1, i32 %div.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %and = and i32 %offset, 31
  %shl = shl nuw i32 1, %and
  %4 = load i32, ptr @gpio_type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %4, label %if.then [
    i32 17, label %entry.do.body6_crit_edge
    i32 3, label %entry.do.body6_crit_edge35
  ]

entry.do.body6_crit_edge35:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

if.then:                                          ; preds = %entry
  %base2 = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %6 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base2, align 4
  %add = add i32 %7, %offset
  %call3 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.do.body6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.do.body6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

do.body6:                                         ; preds = %if.then.do.body6_crit_edge, %entry.do.body6_crit_edge, %entry.do.body6_crit_edge35
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #8
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !116
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %base13 = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %10 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base13, align 4
  %add14 = add i32 %11, %offset
  %12 = load i32, ptr @gpio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp ne i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %add14)
  %cmp1.i = icmp slt i32 %add14, 86
  %tobool16.not = or i1 %cmp1.i, %cmp.i
  %or = or i32 %9, %shl
  %neg = xor i32 %shl, -1
  %and18 = and i32 %9, %neg
  %value.0 = select i1 %tobool16.not, i32 %and18, i32 %or
  %13 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #8, !srcloc !114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body6 ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks.i, align 4
  %div.i = sdiv i32 %offset, 32
  %add.ptr.i = getelementptr %struct.pxa_gpio_bank, ptr %1, i32 %div.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %and = and i32 %offset, 31
  %shl = shl nuw i32 1, %and
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, i32 36, i32 24
  %add.ptr = getelementptr i8, ptr %3, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !114
  %5 = load i32, ptr @gpio_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %5, label %if.then [
    i32 17, label %entry.do.body7_crit_edge
    i32 3, label %entry.do.body7_crit_edge40
  ]

entry.do.body7_crit_edge40:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

if.then:                                          ; preds = %entry
  %base2 = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %7 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base2, align 4
  %add = add i32 %8, %offset
  %call3 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.do.body7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.do.body7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.body7:                                         ; preds = %if.then.do.body7_crit_edge, %entry.do.body7_crit_edge, %entry.do.body7_crit_edge40
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #8
  %add.ptr13 = getelementptr i8, ptr %3, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !116
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %base16 = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %11 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base16, align 4
  %add17 = add i32 %12, %offset
  %13 = load i32, ptr @gpio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp ne i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %add17)
  %cmp1.i = icmp slt i32 %add17, 86
  %tobool19.not = or i1 %cmp1.i, %cmp.i
  %neg = xor i32 %shl, -1
  %and21 = and i32 %10, %neg
  %or = or i32 %10, %shl
  %tmp.0 = select i1 %tobool19.not, i32 %or, i32 %and21
  %14 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %14) #8, !srcloc !114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %call10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body7 ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks.i, align 4
  %div.i = sdiv i32 %offset, 32
  %add.ptr.i = getelementptr %struct.pxa_gpio_bank, ptr %1, i32 %div.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !116
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %offset, 31
  %6 = lshr i32 %5, %and
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %banks.i = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks.i, align 4
  %div.i = sdiv i32 %offset, 32
  %add.ptr.i = getelementptr %struct.pxa_gpio_bank, ptr %1, i32 %div.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %and = and i32 %offset, 31
  %shl = shl nuw i32 1, %and
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, i32 36, i32 24
  %add.ptr = getelementptr i8, ptr %3, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_to_irq(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %irqdomain = getelementptr inbounds %struct.pxa_gpio_chip, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irqdomain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !113
  %call.i2 = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef %offset, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i2, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxa_gpio_of_xlate(ptr nocapture noundef readnone %gc, ptr nocapture noundef readonly %gpiospec, ptr noundef writeonly %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %2 = load i32, ptr @pxa_last_gpio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %flags, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  %retval.0 = phi i32 [ %7, %if.end4 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_gpio_suspend() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pxa_gpio_chip, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @pxa_last_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not31 = icmp slt i32 %1, 0
  br i1 %cmp.not31, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %banks = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %c.033 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %gpio.032 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = ptrtoint ptr %c.033 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c.033, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !116
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %saved_gplr = getelementptr inbounds %struct.pxa_gpio_bank, ptr %c.033, i32 0, i32 4
  %8 = ptrtoint ptr %saved_gplr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %saved_gplr, align 4
  %9 = ptrtoint ptr %c.033 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.033, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !116
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %saved_gpdr = getelementptr inbounds %struct.pxa_gpio_bank, ptr %c.033, i32 0, i32 5
  %13 = ptrtoint ptr %saved_gpdr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %saved_gpdr, align 4
  %14 = ptrtoint ptr %c.033 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c.033, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !116
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %saved_grer = getelementptr inbounds %struct.pxa_gpio_bank, ptr %c.033, i32 0, i32 6
  %18 = ptrtoint ptr %saved_grer to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %saved_grer, align 4
  %19 = ptrtoint ptr %c.033 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %c.033, align 4
  %add.ptr13 = getelementptr i8, ptr %20, i32 60
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !116
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %saved_gfer = getelementptr inbounds %struct.pxa_gpio_bank, ptr %c.033, i32 0, i32 7
  %23 = ptrtoint ptr %saved_gfer to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %saved_gfer, align 4
  %24 = ptrtoint ptr %c.033 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %c.033, align 4
  %add.ptr17 = getelementptr i8, ptr %25, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -1) #8, !srcloc !114
  %add = add i32 %gpio.032, 32
  %incdec.ptr = getelementptr %struct.pxa_gpio_bank, ptr %c.033, i32 1
  %26 = load i32, ptr @pxa_last_gpio, align 4
  %cmp.not = icmp sgt i32 %add, %26
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_gpio_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pxa_gpio_chip, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @pxa_last_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not24 = icmp slt i32 %1, 0
  br i1 %cmp.not24, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %banks = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %gpio.026 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %c.025 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %saved_gplr = getelementptr inbounds %struct.pxa_gpio_bank, ptr %c.025, i32 0, i32 4
  %4 = ptrtoint ptr %saved_gplr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saved_gplr, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %c.025 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c.025, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !114
  %9 = ptrtoint ptr %saved_gplr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %saved_gplr, align 4
  %neg = xor i32 %10, -1
  %11 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %12 = ptrtoint ptr %c.025 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c.025, align 4
  %add.ptr3 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %11) #8, !srcloc !114
  %saved_grer = getelementptr inbounds %struct.pxa_gpio_bank, ptr %c.025, i32 0, i32 6
  %14 = ptrtoint ptr %saved_grer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saved_grer, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %c.025 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %c.025, align 4
  %add.ptr5 = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %16) #8, !srcloc !114
  %saved_gfer = getelementptr inbounds %struct.pxa_gpio_bank, ptr %c.025, i32 0, i32 7
  %19 = ptrtoint ptr %saved_gfer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %saved_gfer, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %c.025 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c.025, align 4
  %add.ptr7 = getelementptr i8, ptr %23, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %21) #8, !srcloc !114
  %saved_gpdr = getelementptr inbounds %struct.pxa_gpio_bank, ptr %c.025, i32 0, i32 5
  %24 = ptrtoint ptr %saved_gpdr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saved_gpdr, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %c.025 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c.025, align 4
  %add.ptr9 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %26) #8, !srcloc !114
  %add = add i32 %gpio.026, 32
  %incdec.ptr = getelementptr %struct.pxa_gpio_bank, ptr %c.025, i32 1
  %29 = load i32, ptr @pxa_last_gpio, align 4
  %cmp.not = icmp sgt i32 %add, %29
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !69, !71, !72, !74, !75, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_gpio_pxa__228_749_pxa_gpio_legacy_init2, !1, !"__initcall__kmod_gpio_pxa__228_749_pxa_gpio_legacy_init2", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-pxa.c", i32 749, i32 1}
!2 = !{ptr @__initcall__kmod_gpio_pxa__229_758_pxa_gpio_dt_init6, !3, !"__initcall__kmod_gpio_pxa__229_758_pxa_gpio_dt_init6", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-pxa.c", i32 758, i32 1}
!4 = !{ptr @__initcall__kmod_gpio_pxa__230_816_pxa_gpio_sysinit2, !5, !"__initcall__kmod_gpio_pxa__230_816_pxa_gpio_sysinit2", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-pxa.c", i32 816, i32 1}
!6 = !{ptr @pxa_last_gpio, !7, !"pxa_last_gpio", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-pxa.c", i32 62, i32 5}
!8 = !{ptr @pxa_gpio_chip, !9, !"pxa_gpio_chip", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-pxa.c", i32 107, i32 30}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-pxa.c", i32 736, i32 11}
!12 = !{ptr @pxa_gpio_driver, !13, !"pxa_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-pxa.c", i32 733, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-pxa.c", i32 650, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-pxa.c", i32 651, i32 48}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-pxa.c", i32 652, i32 42}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-pxa.c", i32 666, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pxa_gpio_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @pxa_gpio_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-pxa.c", i32 696, i32 12}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-pxa.c", i32 698, i32 4}
!32 = !{ptr @pxa_gpio_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pxa_gpio_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-pxa.c", i32 704, i32 12}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-pxa.c", i32 706, i32 4}
!38 = !{ptr @pxa_gpio_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pxa_gpio_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-pxa.c", i32 711, i32 12}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-pxa.c", i32 713, i32 3}
!44 = !{ptr @pxa_gpio_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pxa_gpio_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @irq_base, !47, !"irq_base", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-pxa.c", i32 63, i32 12}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-pxa.c", i32 604, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pxa_gpio_probe_dt._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @pxa_gpio_probe_dt._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @pxa_irq_domain_ops, !54, !"pxa_irq_domain_ops", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-pxa.c", i32 572, i32 36}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-pxa.c", i32 529, i32 11}
!57 = !{ptr @pxa_muxed_gpio_chip, !58, !"pxa_muxed_gpio_chip", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-pxa.c", i32 528, i32 24}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-pxa.c", i32 434, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pxa_gpio_irq_type.__UNIQUE_ID_ddebug227, !60, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!64 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-pxa.c", i32 357, i32 22}
!69 = !{ptr @pxa_init_gpio_chip.lock_key, !70, !"lock_key", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-pxa.c", i32 377, i32 9}
!71 = !{ptr @pxa_init_gpio_chip.request_key, !70, !"request_key", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpio-pxa.c", i32 106, i32 8}
!74 = !{ptr @gpio_lock, !73, !"gpio_lock", i1 false, i1 false}
!75 = !{ptr @gpio_type, !76, !"gpio_type", i1 false, i1 false}
!76 = !{!"../drivers/gpio/gpio-pxa.c", i32 108, i32 27}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpio/gpio-pxa.c", i32 476, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pxa_gpio_direct_handler._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @pxa_gpio_direct_handler._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @pxa_gpio_dt_ids, !83, !"pxa_gpio_dt_ids", i1 false, i1 false}
!83 = !{!"../drivers/gpio/gpio-pxa.c", i32 578, i32 34}
!84 = !{ptr @pxa25x_id, !85, !"pxa25x_id", i1 false, i1 false}
!85 = !{!"../drivers/gpio/gpio-pxa.c", i32 110, i32 27}
!86 = !{ptr @pxa26x_id, !87, !"pxa26x_id", i1 false, i1 false}
!87 = !{!"../drivers/gpio/gpio-pxa.c", i32 115, i32 27}
!88 = !{ptr @pxa27x_id, !89, !"pxa27x_id", i1 false, i1 false}
!89 = !{!"../drivers/gpio/gpio-pxa.c", i32 120, i32 27}
!90 = !{ptr @pxa3xx_id, !91, !"pxa3xx_id", i1 false, i1 false}
!91 = !{!"../drivers/gpio/gpio-pxa.c", i32 125, i32 27}
!92 = !{ptr @pxa93x_id, !93, !"pxa93x_id", i1 false, i1 false}
!93 = !{!"../drivers/gpio/gpio-pxa.c", i32 130, i32 27}
!94 = !{ptr @mmp_id, !95, !"mmp_id", i1 false, i1 false}
!95 = !{!"../drivers/gpio/gpio-pxa.c", i32 135, i32 27}
!96 = !{ptr @mmp2_id, !97, !"mmp2_id", i1 false, i1 false}
!97 = !{!"../drivers/gpio/gpio-pxa.c", i32 140, i32 27}
!98 = !{ptr @pxa1928_id, !99, !"pxa1928_id", i1 false, i1 false}
!99 = !{!"../drivers/gpio/gpio-pxa.c", i32 145, i32 27}
!100 = !{ptr @gpio_id_table, !101, !"gpio_id_table", i1 false, i1 false}
!101 = !{!"../drivers/gpio/gpio-pxa.c", i32 721, i32 40}
!102 = !{ptr @pxa_gpio_syscore_ops, !103, !"pxa_gpio_syscore_ops", i1 false, i1 false}
!103 = !{!"../drivers/gpio/gpio-pxa.c", i32 806, i32 27}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i64 4889053}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 4889471}
!117 = !{i64 2148971793, i64 2148971798, i64 2148971811, i64 2148971855, i64 2148971889, i64 2148971910}
