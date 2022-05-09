; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/spear/pinctrl-plgpio.c_pt.bc'
source_filename = "../drivers/pinctrl/spear/pinctrl-plgpio.c"
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
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.plgpio = type { %struct.spinlock, ptr, ptr, %struct.gpio_chip, ptr, ptr, i32, %struct.plgpio_regs, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.plgpio_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pinctrl_plgpio__223_737_plgpio_init4 = internal global ptr @plgpio_init, section ".initcall4.init", align 4
@plgpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @plgpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @plgpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @plgpio_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spear-plgpio\00", [19 x i8] zeroinitializer }, align 32
@plgpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear-plgpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@plgpio_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @plgpio_suspend, ptr @plgpio_resume, ptr @plgpio_suspend, ptr @plgpio_resume, ptr @plgpio_suspend, ptr @plgpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regmap\00", [25 x i8] zeroinitializer }, align 32
@plgpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 540, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Retrieve regmap failed (%pe)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"plgpio_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pinctrl/spear/pinctrl-plgpio.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@plgpio_probe._entry_ptr = internal global ptr @plgpio_probe._entry, section ".printk_index", align 4
@plgpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Init regmap failed (%pe)\0A\00", [38 x i8] zeroinitializer }, align 32
@plgpio_probe._entry_ptr.9 = internal global ptr @plgpio_probe._entry.7, section ".printk_index", align 4
@plgpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DT probe failed\0A\00", [47 x i8] zeroinitializer }, align 32
@plgpio_probe._entry_ptr.12 = internal global ptr @plgpio_probe._entry.10, section ".printk_index", align 4
@plgpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 560, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"clk_get() failed, work without it\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@plgpio_probe._entry_ptr.16 = internal global ptr @plgpio_probe._entry.13, section ".printk_index", align 4
@plgpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&plgpio->lock\00", [18 x i8] zeroinitializer }, align 32
@plgpio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 588, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk prepare failed\0A\00", [44 x i8] zeroinitializer }, align 32
@plgpio_probe._entry_ptr.20 = internal global ptr @plgpio_probe._entry.18, section ".printk_index", align 4
@plgpio_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.57, ptr null, ptr null, ptr @plgpio_irq_enable, ptr @plgpio_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @plgpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@plgpio_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 609, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PLGPIO registering with IRQs\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@plgpio_probe._entry_ptr.24 = internal global ptr @plgpio_probe._entry.21, section ".printk_index", align 4
@plgpio_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 611, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PLGPIO registering without IRQs\0A\00", [63 x i8] zeroinitializer }, align 32
@plgpio_probe._entry_ptr.27 = internal global ptr @plgpio_probe._entry.25, section ".printk_index", align 4
@plgpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@plgpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@plgpio_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 616, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to add gpio chip\0A\00", [39 x i8] zeroinitializer }, align 32
@plgpio_probe._entry_ptr.30 = internal global ptr @plgpio_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,spear310\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st-plgpio,ngpio\00", [16 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 469, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DT: Invalid ngpio field\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"plgpio_probe_dt\00", [16 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry_ptr = internal global ptr @plgpio_probe_dt._entry, section ".printk_index", align 4
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st-plgpio,enb-reg\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st-plgpio,wdata-reg\00", [44 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.4, i32 481, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DT: Invalid wdata reg\0A\00", [41 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry_ptr.39 = internal global ptr @plgpio_probe_dt._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st-plgpio,dir-reg\00", [46 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DT: Invalid dir reg\0A\00", [43 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry_ptr.43 = internal global ptr @plgpio_probe_dt._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st-plgpio,ie-reg\00", [47 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.34, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DT: Invalid ie reg\0A\00", [44 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry_ptr.47 = internal global ptr @plgpio_probe_dt._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st-plgpio,rdata-reg\00", [44 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.34, ptr @.str.4, i32 502, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DT: Invalid rdata reg\0A\00", [41 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry_ptr.51 = internal global ptr @plgpio_probe_dt._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st-plgpio,mis-reg\00", [46 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.34, ptr @.str.4, i32 509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DT: Invalid mis reg\0A\00", [43 x i8] zeroinitializer }, align 32
@plgpio_probe_dt._entry_ptr.55 = internal global ptr @plgpio_probe_dt._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st-plgpio,eit-reg\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLGPIO\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"plgpio_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 724, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 727, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"plgpio_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 719, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"plgpio_dev_pm_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 717, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 534, i32 50 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 539, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 546, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 554, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 560, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 572, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 588, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [15 x i8] c"plgpio_irqchip\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 359, i32 24 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 609, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 611, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 614, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 616, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 459, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 466, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 469, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 473, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 478, i32 32 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 481, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 485, i32 32 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 488, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 492, i32 32 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 495, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 499, i32 32 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 502, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 506, i32 32 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 509, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 513, i32 32 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private constant [42 x i8] c"../drivers/pinctrl/spear/pinctrl-plgpio.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 360, i32 11 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__initcall__kmod_pinctrl_plgpio__223_737_plgpio_init4, ptr @plgpio_probe._entry, ptr @plgpio_probe._entry.10, ptr @plgpio_probe._entry.13, ptr @plgpio_probe._entry.18, ptr @plgpio_probe._entry.21, ptr @plgpio_probe._entry.25, ptr @plgpio_probe._entry.28, ptr @plgpio_probe._entry.7, ptr @plgpio_probe._entry_ptr, ptr @plgpio_probe._entry_ptr.12, ptr @plgpio_probe._entry_ptr.16, ptr @plgpio_probe._entry_ptr.20, ptr @plgpio_probe._entry_ptr.24, ptr @plgpio_probe._entry_ptr.27, ptr @plgpio_probe._entry_ptr.30, ptr @plgpio_probe._entry_ptr.9, ptr @plgpio_probe_dt._entry, ptr @plgpio_probe_dt._entry.37, ptr @plgpio_probe_dt._entry.41, ptr @plgpio_probe_dt._entry.45, ptr @plgpio_probe_dt._entry.49, ptr @plgpio_probe_dt._entry.53, ptr @plgpio_probe_dt._entry_ptr, ptr @plgpio_probe_dt._entry_ptr.39, ptr @plgpio_probe_dt._entry_ptr.43, ptr @plgpio_probe_dt._entry_ptr.47, ptr @plgpio_probe_dt._entry_ptr.51, ptr @plgpio_probe_dt._entry_ptr.55, ptr @plgpio_driver, ptr @.str, ptr @plgpio_of_match, ptr @plgpio_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @plgpio_probe.__key, ptr @.str.17, ptr @.str.19, ptr @plgpio_irqchip, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @plgpio_probe.lock_key, ptr @plgpio_probe.request_key, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe_dt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe_dt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe_dt._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe_dt._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plgpio_probe_dt._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @plgpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @plgpio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plgpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 444, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup121_crit_edge, label %if.end

entry.cleanup121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i192 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool.not.i = icmp eq i32 %call.i192, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.else

of_parse_phandle.exit:                            ; preds = %if.end
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %of_parse_phandle.exit.if.else_crit_edge, label %if.then4

of_parse_phandle.exit.if.else_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then4:                                         ; preds = %of_parse_phandle.exit
  %call5 = call ptr @device_node_to_regmap(ptr noundef nonnull %4) #7
  %regmap = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %regmap, align 4
  call void @of_node_put(ptr noundef nonnull %4) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then4.if.end29_crit_edge

if.then4.if.end29_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup121

if.else:                                          ; preds = %of_parse_phandle.exit.if.else_crit_edge, %of_parse_phandle.exit.thread
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call16 = call ptr @device_node_to_regmap(ptr noundef %12) #7
  %regmap17 = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %regmap17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %regmap17, align 4
  %cmp.i193 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %do.end23, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull %call16) #10
  %14 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap17, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup121

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %if.then4.if.end29_crit_edge
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i, align 4, !annotation !112
  %call.i194 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i195, label %if.end29.if.end.i196_crit_edge, label %if.then.i

if.end29.if.end.i196_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i196

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %p2o.i = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %p2o.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @spear310_p2o, ptr %p2o.i, align 4
  %o2p.i = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %o2p.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @spear310_o2p, ptr %o2p.i, align 4
  %p2o_regs.i = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %p2o_regs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 62, ptr %p2o_regs.i, align 4
  br label %if.end.i196

if.end.i196:                                      ; preds = %if.then.i, %if.end29.if.end.i196_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.32, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i196.do.end35_crit_edge

if.end.i196.do.end35_crit_edge:                   ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then3.i:                                       ; preds = %if.end.i196
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %24 to i16
  %ngpio.i = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 20
  %25 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %call.i.i98.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.35, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i98.i)
  %tobool7.not.i = icmp sgt i32 %call.i.i98.i, -1
  br i1 %tobool7.not.i, label %if.then8.i, label %if.then3.i.if.end12.i_crit_edge

if.then3.i.if.end12.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.then3.i.if.end12.i_crit_edge
  %.sink.i = phi i32 [ %27, %if.then8.i ], [ -1, %if.then3.i.if.end12.i_crit_edge ]
  %28 = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i, ptr %28, align 4
  %call.i.i99.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.36, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i99.i)
  %tobool14.not.i = icmp sgt i32 %call.i.i99.i, -1
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end12.i.do.end35_crit_edge

if.end12.i.do.end35_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then15.i:                                      ; preds = %if.end12.i
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i, align 4
  %wdata.i = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %wdata.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %wdata.i, align 4
  %call.i.i100.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.40, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i100.i)
  %tobool24.not.i = icmp sgt i32 %call.i.i100.i, -1
  br i1 %tobool24.not.i, label %if.then25.i, label %if.then15.i.do.end35_crit_edge

if.then15.i.do.end35_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then25.i:                                      ; preds = %if.then15.i
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %dir.i = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dir.i, align 4
  %call.i.i101.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.44, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i101.i)
  %tobool34.not.i = icmp sgt i32 %call.i.i101.i, -1
  br i1 %tobool34.not.i, label %if.then35.i, label %if.then25.i.do.end35_crit_edge

if.then25.i.do.end35_crit_edge:                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then35.i:                                      ; preds = %if.then25.i
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  %ie.i = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 7, i32 4
  %38 = ptrtoint ptr %ie.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ie.i, align 4
  %call.i.i102.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.48, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i102.i)
  %tobool44.not.i = icmp sgt i32 %call.i.i102.i, -1
  br i1 %tobool44.not.i, label %if.then45.i, label %if.then35.i.do.end35_crit_edge

if.then35.i.do.end35_crit_edge:                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then45.i:                                      ; preds = %if.then35.i
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i, align 4
  %rdata.i = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 7, i32 3
  %41 = ptrtoint ptr %rdata.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %rdata.i, align 4
  %call.i.i103.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.52, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i103.i)
  %tobool54.not.i = icmp sgt i32 %call.i.i103.i, -1
  br i1 %tobool54.not.i, label %if.then55.i, label %if.then45.i.do.end35_crit_edge

if.then45.i.do.end35_crit_edge:                   ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then55.i:                                      ; preds = %if.then45.i
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  %mis.i = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 7, i32 5
  %44 = ptrtoint ptr %mis.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %mis.i, align 4
  %call.i.i104.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.56, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i104.i)
  %tobool64.not.i = icmp sgt i32 %call.i.i104.i, -1
  br i1 %tobool64.not.i, label %if.then65.i, label %if.then55.i.if.end37_crit_edge

if.then55.i.if.end37_crit_edge:                   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then65.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i, align 4
  br label %if.end37

do.end35:                                         ; preds = %if.then45.i.do.end35_crit_edge, %if.then35.i.do.end35_crit_edge, %if.then25.i.do.end35_crit_edge, %if.then15.i.do.end35_crit_edge, %if.end12.i.do.end35_crit_edge, %if.end.i196.do.end35_crit_edge
  %.str.54.sink = phi ptr [ @.str.33, %if.end.i196.do.end35_crit_edge ], [ @.str.38, %if.end12.i.do.end35_crit_edge ], [ @.str.42, %if.then15.i.do.end35_crit_edge ], [ @.str.46, %if.then25.i.do.end35_crit_edge ], [ @.str.50, %if.then35.i.do.end35_crit_edge ], [ @.str.54, %if.then45.i.do.end35_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.54.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup121

if.end37:                                         ; preds = %if.then65.i, %if.then55.i.if.end37_crit_edge
  %.sink = phi i32 [ %46, %if.then65.i ], [ -1, %if.then55.i.if.end37_crit_edge ]
  %47 = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 7, i32 6
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %47, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %call39 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call39, ptr %clk, align 4
  %cmp.i198 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %do.end45, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %if.end37.if.end47_crit_edge
  %chip = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3
  %50 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ngpio.i, align 4
  %conv = zext i16 %51 to i32
  %sub = add nuw nsw i32 %conv, 31
  %div191 = lshr i32 %sub, 5
  %52 = mul nuw nsw i32 %div191, 28
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %52, i32 noundef 3520) #7
  %csave_regs = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 8
  %53 = ptrtoint ptr %csave_regs to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call5.i.i, ptr %csave_regs, align 4
  %tobool51.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool51.not, label %if.end47.cleanup121_crit_edge, label %if.end53

if.end47.cleanup121_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

if.end53:                                         ; preds = %if.end47
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @plgpio_probe.__key, i16 noundef signext 3) #7
  %base = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 19
  %55 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %base, align 4
  %request = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 5
  %56 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @plgpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 6
  %57 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @plgpio_free, ptr %free, align 4
  %direction_input = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @plgpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 9
  %59 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @plgpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 10
  %60 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @plgpio_get_value, ptr %get, align 4
  %set = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 12
  %61 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @plgpio_set_value, ptr %set, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %62 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i199 = icmp eq ptr %63, null
  br i1 %tobool.not.i199, label %if.end.i200, label %if.end53.dev_name.exit_crit_edge

if.end53.dev_name.exit_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i200:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i200, %if.end53.dev_name.exit_crit_edge
  %retval.0.i201 = phi ptr [ %65, %if.end.i200 ], [ %63, %if.end53.dev_name.exit_crit_edge ]
  %66 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %retval.0.i201, ptr %chip, align 4
  %parent = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 2
  %67 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %dev, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 4
  %68 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %owner, align 4
  %69 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk, align 4
  %cmp.i202 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %dev_name.exit.if.end83_crit_edge, label %if.then73

dev_name.exit.if.end83_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then73:                                        ; preds = %dev_name.exit
  %call75 = call i32 @clk_prepare(ptr noundef %70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then73.if.end83_crit_edge, label %do.end80

if.then73.if.end83_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

do.end80:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup121

if.end83:                                         ; preds = %if.then73.if.end83_crit_edge, %dev_name.exit.if.end83_crit_edge
  %call84 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp = icmp sgt i32 %call84, 0
  br i1 %cmp, label %if.then86, label %if.end83.if.end106_crit_edge

if.end83.if.end106_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then86:                                        ; preds = %if.end83
  %irq88 = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 37
  %71 = ptrtoint ptr %irq88 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @plgpio_irqchip, ptr %irq88, align 4
  %parent_handler = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 37, i32 13
  %72 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @plgpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 37, i32 15
  %73 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i203 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #7
  %parents = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 37, i32 16
  %74 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call5.i.i203, ptr %parents, align 4
  %tobool93.not = icmp eq ptr %call5.i.i203, null
  br i1 %tobool93.not, label %if.then86.cleanup121_crit_edge, label %if.end95

if.then86.cleanup121_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

if.end95:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %call5.i.i203 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call84, ptr %call5.i.i203, align 4
  %default_type = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 37, i32 10
  %76 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.plgpio, ptr %call.i, i32 0, i32 3, i32 37, i32 9
  %77 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @handle_simple_irq, ptr %handler, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.end95, %if.end83.if.end106_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %if.end95 ], [ @.str.26, %if.end83.if.end106_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.22.sink) #10
  %call108 = call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef nonnull %call.i, ptr noundef nonnull @plgpio_probe.lock_key, ptr noundef nonnull @plgpio_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end106.cleanup121_crit_edge, label %do.end113

if.end106.cleanup121_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

do.end113:                                        ; preds = %if.end106
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #10
  %78 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk, align 4
  %cmp.i206 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %do.end113.cleanup121_crit_edge, label %if.then118

do.end113.cleanup121_crit_edge:                   ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup121

if.then118:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %79) #7
  br label %cleanup121

cleanup121:                                       ; preds = %if.then118, %do.end113.cleanup121_crit_edge, %if.end106.cleanup121_crit_edge, %if.then86.cleanup121_crit_edge, %do.end80, %if.end47.cleanup121_crit_edge, %do.end35, %do.end23, %do.end, %entry.cleanup121_crit_edge
  %retval.1 = phi i32 [ %10, %do.end ], [ -22, %do.end35 ], [ %call75, %do.end80 ], [ %16, %do.end23 ], [ -12, %entry.cleanup121_crit_edge ], [ -12, %if.end47.cleanup121_crit_edge ], [ 0, %if.end106.cleanup121_crit_edge ], [ %call108, %if.then118 ], [ %call108, %do.end113.cleanup121_crit_edge ], [ -12, %if.then86.cleanup121_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plgpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %offset)
  %cmp.not = icmp ugt i32 %conv, %offset
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pinctrl_gpio_request(i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.if.end12_crit_edge, label %if.then6

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %call8 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then6.err0_crit_edge

if.then6.err0_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %regs = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp13 = icmp eq i32 %7, -1
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @plgpio_direction_input(ptr noundef %chip, i32 noundef %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.err1_crit_edge

if.end16.err1_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

if.end20:                                         ; preds = %if.end16
  %p2o = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %p2o to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p2o, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %if.end20.do.body31_crit_edge, label %land.lhs.true

if.end20.do.body31_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

land.lhs.true:                                    ; preds = %if.end20
  %p2o_regs = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p2o_regs, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.lhs.true.do.body31_crit_edge, label %if.then23

land.lhs.true.do.body31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.then23:                                        ; preds = %land.lhs.true
  %call25 = tail call i32 %9(i32 noundef %offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then23.err1_crit_edge, label %if.then23.do.body31_crit_edge

if.then23.do.body31_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.then23.err1_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

do.body31:                                        ; preds = %if.then23.do.body31_crit_edge, %land.lhs.true.do.body31_crit_edge, %if.end20.do.body31_crit_edge
  %offset.addr.0 = phi i32 [ %call25, %if.then23.do.body31_crit_edge ], [ %offset, %land.lhs.true.do.body31_crit_edge ], [ %offset, %if.end20.do.body31_crit_edge ]
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #7
  %regmap = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regs, align 4
  %rem.i = and i32 %offset.addr.0, 31
  %16 = lshr i32 %offset.addr.0, 3
  %mul.i = and i32 %16, 536870908
  %add1.i = add i32 %15, %mul.i
  %shl.i = shl nuw i32 1, %rem.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add1.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call35) #7
  br label %cleanup

err1:                                             ; preds = %if.then23.err1_crit_edge, %if.end16.err1_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end16.err1_crit_edge ], [ -22, %if.then23.err1_crit_edge ]
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %cmp.i73 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %err1.err0_crit_edge, label %if.then43

err1.err0_crit_edge:                              ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.then43:                                        ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %18) #7
  br label %err0

err0:                                             ; preds = %if.then43, %err1.err0_crit_edge, %if.then6.err0_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err1.err0_crit_edge ], [ %ret.0, %if.then43 ], [ %call8, %if.then6.err0_crit_edge ]
  tail call void @pinctrl_gpio_free(i32 noundef %add) #7
  br label %cleanup

cleanup:                                          ; preds = %err0, %do.body31, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err0 ], [ 0, %do.body31 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plgpio_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %offset)
  %cmp.not = icmp ugt i32 %conv, %offset
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp2 = icmp eq i32 %5, -1
  br i1 %cmp2, label %if.end.disable_clk_crit_edge, label %if.end5

if.end.disable_clk_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end5:                                          ; preds = %if.end
  %p2o = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %p2o to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p2o, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end5.do.body15_crit_edge, label %land.lhs.true

if.end5.do.body15_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

land.lhs.true:                                    ; preds = %if.end5
  %p2o_regs = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p2o_regs, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.do.body15_crit_edge, label %if.then7

land.lhs.true.do.body15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

if.then7:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 %7(i32 noundef %offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then7.cleanup_crit_edge, label %if.then7.do.body15_crit_edge

if.then7.do.body15_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %if.then7.do.body15_crit_edge, %land.lhs.true.do.body15_crit_edge, %if.end5.do.body15_crit_edge
  %offset.addr.0 = phi i32 [ %call9, %if.then7.do.body15_crit_edge ], [ %offset, %land.lhs.true.do.body15_crit_edge ], [ %offset, %if.end5.do.body15_crit_edge ]
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #7
  %regmap = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regs, align 4
  %rem.i = and i32 %offset.addr.0, 31
  %14 = lshr i32 %offset.addr.0, 3
  %mul.i = and i32 %14, 536870908
  %add1.i = add i32 %13, %mul.i
  %shl.i = shl nuw i32 1, %rem.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add1.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call19) #7
  br label %disable_clk

disable_clk:                                      ; preds = %do.body15, %if.end.disable_clk_crit_edge
  %clk = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %disable_clk.if.end28_crit_edge, label %if.then26

disable_clk.if.end28_crit_edge:                   ; preds = %disable_clk
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %disable_clk
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %16) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %disable_clk.if.end28_crit_edge
  tail call void @pinctrl_gpio_free(i32 noundef %add) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plgpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %p2o = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %p2o to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2o, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %land.lhs.true

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

land.lhs.true:                                    ; preds = %entry
  %p2o_regs = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p2o_regs, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.do.body6_crit_edge, label %if.then

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 %1(i32 noundef %offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.do.body6_crit_edge

if.then.do.body6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body6:                                         ; preds = %if.then.do.body6_crit_edge, %land.lhs.true.do.body6_crit_edge, %entry.do.body6_crit_edge
  %offset.addr.0 = phi i32 [ %call3, %if.then.do.body6_crit_edge ], [ %offset, %land.lhs.true.do.body6_crit_edge ], [ %offset, %entry.do.body6_crit_edge ]
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #7
  %regmap = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %dir = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir, align 4
  %rem.i = and i32 %offset.addr.0, 31
  %8 = lshr i32 %offset.addr.0, 3
  %mul.i = and i32 %8, 536870908
  %add1.i = add i32 %7, %mul.i
  %shl.i = shl nuw i32 1, %rem.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add1.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body6 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plgpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %p2o = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %p2o to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2o, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body16_crit_edge, label %land.lhs.true

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

land.lhs.true:                                    ; preds = %entry
  %p2o_regs = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p2o_regs, align 4
  %and = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.do.body16_crit_edge, label %if.then

land.lhs.true.do.body16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 %1(i32 noundef %offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p2o_regs, align 4
  %and6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %spec.select = select i1 %tobool7.not, i32 %offset, i32 %call3
  %and11 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.select53 = select i1 %tobool12.not, i32 %offset, i32 %call3
  br label %do.body16

do.body16:                                        ; preds = %if.end, %land.lhs.true.do.body16_crit_edge, %entry.do.body16_crit_edge
  %dir_offset.1 = phi i32 [ %offset, %land.lhs.true.do.body16_crit_edge ], [ %offset, %entry.do.body16_crit_edge ], [ %spec.select, %if.end ]
  %wdata_offset.0 = phi i32 [ %offset, %land.lhs.true.do.body16_crit_edge ], [ %offset, %entry.do.body16_crit_edge ], [ %spec.select53, %if.end ]
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool23.not = icmp eq i32 %value, 0
  %regmap25 = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap25, align 4
  %wdata27 = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %wdata27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wdata27, align 4
  %rem.i54 = and i32 %wdata_offset.0, 31
  %10 = lshr i32 %wdata_offset.0, 3
  %mul.i55 = and i32 %10, 536870908
  %add1.i56 = add i32 %9, %mul.i55
  %shl.i57 = shl nuw i32 1, %rem.i54
  %.shl.i57 = select i1 %tobool23.not, i32 0, i32 %shl.i57
  %call.i.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add1.i56, i32 noundef %shl.i57, i32 noundef %.shl.i57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %regmap29 = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap29, align 4
  %dir = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dir, align 4
  %rem.i59 = and i32 %dir_offset.1, 31
  %15 = lshr i32 %dir_offset.1, 3
  %mul.i60 = and i32 %15, 536870908
  %add1.i61 = add i32 %14, %mul.i60
  %shl.i62 = shl nuw i32 1, %rem.i59
  %call.i.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %add1.i61, i32 noundef %shl.i62, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call20) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body16, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body16 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plgpio_get_value(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %offset)
  %cmp.not = icmp ugt i32 %conv, %offset
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %p2o = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %p2o to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p2o, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %p2o_regs = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p2o_regs, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end10_crit_edge, label %if.then3

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then3:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 %3(i32 noundef %offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then3.cleanup_crit_edge, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %offset.addr.0 = phi i32 [ %call5, %if.then3.if.end10_crit_edge ], [ %offset, %land.lhs.true.if.end10_crit_edge ], [ %offset, %if.end.if.end10_crit_edge ]
  %regmap = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %rdata = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdata, align 4
  %rem.i = and i32 %offset.addr.0, 31
  %10 = lshr i32 %offset.addr.0, 3
  %mul.i = and i32 %10, 536870908
  %add1.i = add i32 %mul.i, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !112
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %add1.i, ptr noundef nonnull %val.i) #7
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %14 = lshr i32 %13, %rem.i
  %15 = and i32 %14, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plgpio_set_value(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %offset)
  %cmp.not = icmp ugt i32 %conv, %offset
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %p2o = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %p2o to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p2o, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %p2o_regs = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p2o_regs, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end10_crit_edge, label %if.then3

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then3:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 %3(i32 noundef %offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then3.cleanup_crit_edge, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %offset.addr.0 = phi i32 [ %call5, %if.then3.if.end10_crit_edge ], [ %offset, %land.lhs.true.if.end10_crit_edge ], [ %offset, %if.end.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool11.not = icmp eq i32 %value, 0
  %regmap13 = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap13, align 4
  %wdata15 = getelementptr inbounds %struct.plgpio, ptr %call, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %wdata15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wdata15, align 4
  %rem.i28 = and i32 %offset.addr.0, 31
  %10 = lshr i32 %offset.addr.0, 3
  %mul.i29 = and i32 %10, 536870908
  %add1.i30 = add i32 %9, %mul.i29
  %shl.i31 = shl nuw i32 1, %rem.i28
  %.shl.i31 = select i1 %tobool11.not, i32 0, i32 %shl.i31
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add1.i30, i32 noundef %shl.i31, i32 noundef %.shl.i31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plgpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  %pendingl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #7
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pending, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pendingl) #7
  %5 = ptrtoint ptr %pendingl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pendingl, align 4, !annotation !112
  %ngpio = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 3, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  %sub = add nuw nsw i32 %conv, 31
  %div68 = lshr i32 %sub, 5
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
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
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %13(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
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

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp77.not = icmp eq i16 %7, 0
  br i1 %cmp77.not, label %chained_irq_enter.exit.for.end41_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end41_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %regmap = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 1
  %mis = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 7, i32 5
  %o2p = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 5
  %p2o_regs = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 6
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  %smax = call i32 @llvm.smax.i32(i32 %div68, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc40.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc40.for.body_crit_edge ]
  %count.078 = phi i32 [ %conv, %for.body.lr.ph ], [ %count.1, %for.inc40.for.body_crit_edge ]
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %mis to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mis, align 4
  %mul = shl i32 %i.079, 2
  %add4 = add i32 %19, %mul
  %call5 = call i32 @regmap_read(ptr noundef %17, i32 noundef %add4, ptr noundef nonnull %pending) #7
  %20 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %for.body.for.inc40_crit_edge, label %if.end

for.body.for.inc40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc40

if.end:                                           ; preds = %for.body
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %24 = ptrtoint ptr %mis to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mis, align 4
  %add10 = add i32 %25, %mul
  %neg = xor i32 %21, -1
  %call11 = call i32 @regmap_write(ptr noundef %23, i32 noundef %add10, i32 noundef %neg) #7
  %mul12 = shl i32 %i.079, 5
  %sub13 = sub i32 %count.078, %mul12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub13)
  %cmp14 = icmp slt i32 %sub13, 32
  br i1 %cmp14, label %if.then16, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %notmask = shl nsw i32 -1, %sub13
  %sub17 = xor i32 %notmask, -1
  %26 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pending, align 4
  %and = and i32 %27, %sub17
  store i32 %and, ptr %pending, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  %28 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pending, align 4
  %30 = ptrtoint ptr %pendingl to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pendingl, align 4
  %call19 = call i32 @_find_next_bit_be(ptr noundef nonnull %pendingl, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call19)
  %cmp2173 = icmp slt i32 %call19, 32
  br i1 %cmp2173, label %if.end18.for.body23_crit_edge, label %if.end18.for.inc40_crit_edge

if.end18.for.inc40_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc40

if.end18.for.body23_crit_edge:                    ; preds = %if.end18
  br label %for.body23

for.body23:                                       ; preds = %for.inc.for.body23_crit_edge, %if.end18.for.body23_crit_edge
  %offset.074 = phi i32 [ %call39, %for.inc.for.body23_crit_edge ], [ %call19, %if.end18.for.body23_crit_edge ]
  %31 = ptrtoint ptr %o2p to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %o2p, align 4
  %tobool24.not = icmp eq ptr %32, null
  br i1 %tobool24.not, label %for.body23.if.end34_crit_edge, label %land.lhs.true

for.body23.if.end34_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %for.body23
  %33 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p2o_regs, align 4
  %and25 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end34_crit_edge, label %if.then27

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then27:                                        ; preds = %land.lhs.true
  %call29 = call i32 %32(i32 noundef %offset.074) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29)
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %if.then27.for.inc_crit_edge, label %if.then27.if.end34_crit_edge

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end34:                                         ; preds = %if.then27.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %for.body23.if.end34_crit_edge
  %pin.0 = phi i32 [ %call29, %if.then27.if.end34_crit_edge ], [ %offset.074, %land.lhs.true.if.end34_crit_edge ], [ %offset.074, %for.body23.if.end34_crit_edge ]
  %add36 = add i32 %pin.0, %mul12
  %35 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %domain, align 4
  %call37 = call i32 @generic_handle_domain_irq(ptr noundef %36, i32 noundef %add36) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.then27.for.inc_crit_edge
  %add38 = add nsw i32 %offset.074, 1
  %call39 = call i32 @_find_next_bit_be(ptr noundef nonnull %pendingl, i32 noundef 32, i32 noundef %add38) #7
  %cmp21 = icmp slt i32 %call39, 32
  br i1 %cmp21, label %for.inc.for.body23_crit_edge, label %for.inc.for.inc40_crit_edge

for.inc.for.inc40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc40

for.inc.for.body23_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

for.inc40:                                        ; preds = %for.inc.for.inc40_crit_edge, %if.end18.for.inc40_crit_edge, %for.body.for.inc40_crit_edge
  %count.1 = phi i32 [ %count.078, %for.body.for.inc40_crit_edge ], [ %sub13, %if.end18.for.inc40_crit_edge ], [ %sub13, %for.inc.for.inc40_crit_edge ]
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc40.for.end41_crit_edge, label %for.inc40.for.body_crit_edge

for.inc40.for.body_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc40.for.end41_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41

for.end41:                                        ; preds = %for.inc40.for.end41_crit_edge, %chained_irq_enter.exit.for.end41_crit_edge
  %37 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i70 = icmp eq ptr %38, null
  br i1 %tobool.not.i70, label %if.else.i71, label %for.end41.chained_irq_exit.exit_crit_edge

for.end41.chained_irq_exit.exit_crit_edge:        ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i71:                                      ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i71, %for.end41.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %40, %if.else.i71 ], [ %38, %for.end41.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pendingl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spear310_p2o(i32 noundef %pin) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %pin)
  %cmp = icmp slt i32 %pin, 28
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nsw i32 %pin, 4
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %pin)
  %cmp1 = icmp ult i32 %pin, 34
  br i1 %cmp1, label %if.else.if.end13_crit_edge, label %if.else3

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %pin)
  %cmp4 = icmp ult i32 %pin, 98
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %pin, -2
  br label %if.end13

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %pin)
  %cmp7 = icmp ult i32 %pin, 102
  %sub9 = sub nsw i32 101, %pin
  %spec.select = select i1 %cmp7, i32 %sub9, i32 -1
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.then5, %if.else.if.end13_crit_edge, %if.then
  %offset.0 = phi i32 [ %add, %if.then ], [ %sub, %if.then5 ], [ -1, %if.else.if.end13_crit_edge ], [ %spec.select, %if.else6 ]
  ret i32 %offset.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spear310_o2p(i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %offset)
  %cmp = icmp slt i32 %offset, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 101, %offset
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %offset)
  %cmp1 = icmp ult i32 %offset, 32
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub3 = add nsw i32 %offset, -4
  br label %return

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw i32 %offset, 2
  br label %return

return:                                           ; preds = %if.else4, %if.then2, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub3, %if.then2 ], [ %add, %if.else4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plgpio_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
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
  %p2o = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %p2o to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p2o, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.body7_crit_edge, label %land.lhs.true

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

land.lhs.true:                                    ; preds = %entry
  %p2o_regs = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 6
  %6 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p2o_regs, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body7_crit_edge, label %if.then

land.lhs.true.do.body7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 %5(i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp eq i32 %call4, -1
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.do.body7_crit_edge

if.then.do.body7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7:                                         ; preds = %if.then.do.body7_crit_edge, %land.lhs.true.do.body7_crit_edge, %entry.do.body7_crit_edge
  %offset.0 = phi i32 [ %call4, %if.then.do.body7_crit_edge ], [ %3, %land.lhs.true.do.body7_crit_edge ], [ %3, %entry.do.body7_crit_edge ]
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #7
  %regmap = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %ie = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ie, align 4
  %rem.i = and i32 %offset.0, 31
  %12 = lshr i32 %offset.0, 3
  %mul.i = and i32 %12, 536870908
  %add1.i = add i32 %11, %mul.i
  %shl.i = shl nuw i32 1, %rem.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add1.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plgpio_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
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
  %p2o = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %p2o to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p2o, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.body7_crit_edge, label %land.lhs.true

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

land.lhs.true:                                    ; preds = %entry
  %p2o_regs = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 6
  %6 = ptrtoint ptr %p2o_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p2o_regs, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body7_crit_edge, label %if.then

land.lhs.true.do.body7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 %5(i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp eq i32 %call4, -1
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.do.body7_crit_edge

if.then.do.body7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7:                                         ; preds = %if.then.do.body7_crit_edge, %land.lhs.true.do.body7_crit_edge, %entry.do.body7_crit_edge
  %offset.0 = phi i32 [ %call4, %if.then.do.body7_crit_edge ], [ %3, %land.lhs.true.do.body7_crit_edge ], [ %3, %entry.do.body7_crit_edge ]
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #7
  %regmap = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %ie = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ie, align 4
  %rem.i = and i32 %offset.0, 31
  %12 = lshr i32 %offset.0, 3
  %mul.i = and i32 %12, 536870908
  %add1.i = add i32 %11, %mul.i
  %shl.i = shl nuw i32 1, %rem.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add1.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plgpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %trigger) #2 align 64 {
entry:
  %val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !112
  %ngpio = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 3, i32 20
  %5 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp slt i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %eit = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 7, i32 6
  %7 = ptrtoint ptr %eit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp3 = icmp eq i32 %8, -1
  %. = select i1 %cmp3, i32 4, i32 3
  %and = and i32 %., %trigger
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp3
  %.mux = select i1 %tobool.not, i32 -22, i32 0
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div = sdiv i32 %3, 32
  %mul = shl nsw i32 %div, 2
  %add17 = add i32 %8, %mul
  %regmap = getelementptr inbounds %struct.plgpio, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add17, ptr noundef nonnull %val) #7
  %and19 = and i32 %trigger, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %rem50 = and i32 %3, 31
  %shl26 = shl nuw i32 1, %rem50
  %or = or i32 %14, %shl26
  %neg = xor i32 %shl26, -1
  %and27 = and i32 %14, %neg
  %or.sink = select i1 %tobool20.not, i32 %and27, i32 %or
  %call23 = call i32 @regmap_write(ptr noundef %12, i32 noundef %add17, i32 noundef %or.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %.mux, %if.end.cleanup_crit_edge ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plgpio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ngpio = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp73.not = icmp eq i16 %3, 0
  br i1 %cmp73.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %3 to i32
  %sub = add nuw nsw i32 %conv, 31
  %div72 = lshr i32 %sub, 5
  %regs = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7
  %regmap = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 1
  %csave_regs = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 8
  %eit = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7, i32 6
  %wdata = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7, i32 1
  %dir = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7, i32 2
  %ie = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end21.for.body_crit_edge ]
  %mul = shl i32 %i.074, 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp2.not = icmp eq i32 %5, -1
  br i1 %cmp2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %add6 = add i32 %5, %mul
  %8 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csave_regs, align 4
  %arrayidx = getelementptr %struct.plgpio_regs, ptr %9, i32 %i.074
  %call8 = tail call i32 @regmap_read(ptr noundef %7, i32 noundef %add6, ptr noundef %arrayidx) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %10 = ptrtoint ptr %eit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp10.not = icmp eq i32 %11, -1
  br i1 %cmp10.not, label %if.end.if.end21_crit_edge, label %if.then12

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %add16 = add i32 %11, %mul
  %14 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csave_regs, align 4
  %eit19 = getelementptr %struct.plgpio_regs, ptr %15, i32 %i.074, i32 6
  %call20 = tail call i32 @regmap_read(ptr noundef %13, i32 noundef %add16, ptr noundef %eit19) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %if.end.if.end21_crit_edge
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wdata, align 4
  %add24 = add i32 %19, %mul
  %20 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csave_regs, align 4
  %wdata27 = getelementptr %struct.plgpio_regs, ptr %21, i32 %i.074, i32 1
  %call28 = tail call i32 @regmap_read(ptr noundef %17, i32 noundef %add24, ptr noundef %wdata27) #7
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %24 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dir, align 4
  %add31 = add i32 %25, %mul
  %26 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csave_regs, align 4
  %dir34 = getelementptr %struct.plgpio_regs, ptr %27, i32 %i.074, i32 2
  %call35 = tail call i32 @regmap_read(ptr noundef %23, i32 noundef %add31, ptr noundef %dir34) #7
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ie, align 4
  %add38 = add i32 %31, %mul
  %32 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csave_regs, align 4
  %ie41 = getelementptr %struct.plgpio_regs, ptr %33, i32 %i.074, i32 4
  %call42 = tail call i32 @regmap_read(ptr noundef %29, i32 noundef %add38, ptr noundef %ie41) #7
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %div72
  br i1 %exitcond.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plgpio_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ngpio = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp220.not = icmp eq i16 %3, 0
  br i1 %cmp220.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %3 to i32
  %sub = add nuw nsw i32 %conv, 31
  %div219 = lshr i32 %sub, 5
  %sub2 = add nsw i32 %div219, -1
  %regs = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7
  %regmap = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 1
  %csave_regs = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 8
  %eit = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7, i32 6
  %wdata = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7, i32 1
  %dir = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7, i32 2
  %ie = getelementptr inbounds %struct.plgpio, ptr %1, i32 0, i32 7, i32 4
  %mul8.neg = mul nsw i32 %sub2, -32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.0221, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0221, i32 %sub2)
  %cmp3 = icmp eq i32 %i.0221, %sub2
  br i1 %cmp3, label %if.then, label %for.body.if.end85_crit_edge

for.body.if.end85_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then:                                          ; preds = %for.body
  %5 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ngpio, align 4
  %conv7 = zext i16 %6 to i32
  %sub9 = add nsw i32 %mul8.neg, %conv7
  %notmask = shl nsw i32 -1, %sub9
  %sub10 = xor i32 %notmask, -1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp11.not = icmp eq i32 %8, -1
  br i1 %cmp11.not, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %add16 = add i32 %8, %mul
  %call17 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add16, ptr noundef nonnull %tmp) #7
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp, align 4
  %and = and i32 %12, %notmask
  store i32 %and, ptr %tmp, align 4
  %13 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csave_regs, align 4
  %arrayidx = getelementptr %struct.plgpio_regs, ptr %14, i32 %sub2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %and19 = and i32 %16, %sub10
  %or = or i32 %and19, %and
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  %17 = ptrtoint ptr %eit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp24.not = icmp eq i32 %18, -1
  br i1 %cmp24.not, label %if.end.if.end42_crit_edge, label %if.then26

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %add30 = add i32 %18, %mul
  %call31 = call i32 @regmap_read(ptr noundef %20, i32 noundef %add30, ptr noundef nonnull %tmp) #7
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp, align 4
  %and33 = and i32 %22, %notmask
  store i32 %and33, ptr %tmp, align 4
  %23 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csave_regs, align 4
  %eit36 = getelementptr %struct.plgpio_regs, ptr %24, i32 %sub2, i32 6
  %25 = ptrtoint ptr %eit36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eit36, align 4
  %and37 = and i32 %26, %sub10
  %or38 = or i32 %and37, %and33
  store i32 %or38, ptr %eit36, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then26, %if.end.if.end42_crit_edge
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wdata, align 4
  %add45 = add i32 %30, %mul
  %call46 = call i32 @regmap_read(ptr noundef %28, i32 noundef %add45, ptr noundef nonnull %tmp) #7
  %31 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tmp, align 4
  %and48 = and i32 %32, %notmask
  store i32 %and48, ptr %tmp, align 4
  %33 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %csave_regs, align 4
  %wdata51 = getelementptr %struct.plgpio_regs, ptr %34, i32 %sub2, i32 1
  %35 = ptrtoint ptr %wdata51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wdata51, align 4
  %and52 = and i32 %36, %sub10
  %or53 = or i32 %and52, %and48
  store i32 %or53, ptr %wdata51, align 4
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %39 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dir, align 4
  %add59 = add i32 %40, %mul
  %call60 = call i32 @regmap_read(ptr noundef %38, i32 noundef %add59, ptr noundef nonnull %tmp) #7
  %41 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tmp, align 4
  %and62 = and i32 %42, %notmask
  store i32 %and62, ptr %tmp, align 4
  %43 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %csave_regs, align 4
  %dir65 = getelementptr %struct.plgpio_regs, ptr %44, i32 %sub2, i32 2
  %45 = ptrtoint ptr %dir65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dir65, align 4
  %and66 = and i32 %46, %sub10
  %or67 = or i32 %and66, %and62
  store i32 %or67, ptr %dir65, align 4
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %49 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ie, align 4
  %add73 = add i32 %50, %mul
  %call74 = call i32 @regmap_read(ptr noundef %48, i32 noundef %add73, ptr noundef nonnull %tmp) #7
  %51 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tmp, align 4
  %and76 = and i32 %52, %notmask
  store i32 %and76, ptr %tmp, align 4
  %53 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csave_regs, align 4
  %ie79 = getelementptr %struct.plgpio_regs, ptr %54, i32 %sub2, i32 4
  %55 = ptrtoint ptr %ie79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ie79, align 4
  %and80 = and i32 %56, %sub10
  %or81 = or i32 %and80, %and76
  store i32 %or81, ptr %ie79, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end42, %for.body.if.end85_crit_edge
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %59 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wdata, align 4
  %add89 = add i32 %60, %mul
  %61 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %csave_regs, align 4
  %wdata92 = getelementptr %struct.plgpio_regs, ptr %62, i32 %i.0221, i32 1
  %63 = ptrtoint ptr %wdata92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wdata92, align 4
  %call93 = call i32 @regmap_write(ptr noundef %58, i32 noundef %add89, i32 noundef %64) #7
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %67 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dir, align 4
  %add97 = add i32 %68, %mul
  %69 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %csave_regs, align 4
  %dir100 = getelementptr %struct.plgpio_regs, ptr %70, i32 %i.0221, i32 2
  %71 = ptrtoint ptr %dir100 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dir100, align 4
  %call101 = call i32 @regmap_write(ptr noundef %66, i32 noundef %add97, i32 noundef %72) #7
  %73 = ptrtoint ptr %eit to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %eit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp104.not = icmp eq i32 %74, -1
  br i1 %cmp104.not, label %if.end85.if.end115_crit_edge, label %if.then106

if.end85.if.end115_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then106:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %add110 = add i32 %74, %mul
  %77 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %csave_regs, align 4
  %eit113 = getelementptr %struct.plgpio_regs, ptr %78, i32 %i.0221, i32 6
  %79 = ptrtoint ptr %eit113 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %eit113, align 4
  %call114 = call i32 @regmap_write(ptr noundef %76, i32 noundef %add110, i32 noundef %80) #7
  br label %if.end115

if.end115:                                        ; preds = %if.then106, %if.end85.if.end115_crit_edge
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %83 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ie, align 4
  %add119 = add i32 %84, %mul
  %85 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %csave_regs, align 4
  %ie122 = getelementptr %struct.plgpio_regs, ptr %86, i32 %i.0221, i32 4
  %87 = ptrtoint ptr %ie122 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ie122, align 4
  %call123 = call i32 @regmap_write(ptr noundef %82, i32 noundef %add119, i32 noundef %88) #7
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp126.not = icmp eq i32 %90, -1
  br i1 %cmp126.not, label %if.end115.for.inc_crit_edge, label %if.then128

if.end115.for.inc_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then128:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %add132 = add i32 %90, %mul
  %93 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %csave_regs, align 4
  %arrayidx134 = getelementptr %struct.plgpio_regs, ptr %94, i32 %i.0221
  %95 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx134, align 4
  %call136 = call i32 @regmap_write(ptr noundef %92, i32 noundef %add132, i32 noundef %96) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then128, %if.end115.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0221, 1
  %exitcond.not = icmp eq i32 %inc, %div219
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !71, !73, !74, !75, !77, !79, !80, !81, !83, !85, !86, !87, !89, !91, !92, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_pinctrl_plgpio__223_737_plgpio_init4, !1, !"__initcall__kmod_pinctrl_plgpio__223_737_plgpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 737, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 727, i32 11}
!4 = !{ptr @plgpio_driver, !5, !"plgpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 724, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 534, i32 50}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 539, i32 4}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @plgpio_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @plgpio_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 546, i32 4}
!18 = !{ptr @plgpio_probe._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @plgpio_probe._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 554, i32 3}
!22 = !{ptr @plgpio_probe._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @plgpio_probe._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 560, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @plgpio_probe._entry.13, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @plgpio_probe._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @plgpio_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 572, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 588, i32 4}
!34 = !{ptr @plgpio_probe._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @plgpio_probe._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 609, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @plgpio_probe._entry.21, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @plgpio_probe._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 611, i32 3}
!43 = !{ptr @plgpio_probe._entry.25, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @plgpio_probe._entry_ptr.27, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @plgpio_probe.lock_key, !46, !"lock_key", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 614, i32 8}
!47 = !{ptr @plgpio_probe.request_key, !46, !"request_key", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 616, i32 3}
!50 = !{ptr @plgpio_probe._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @plgpio_probe._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 459, i32 31}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 466, i32 32}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 469, i32 3}
!58 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @plgpio_probe_dt._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @plgpio_probe_dt._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 473, i32 32}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 478, i32 32}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 481, i32 3}
!67 = !{ptr @plgpio_probe_dt._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @plgpio_probe_dt._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 485, i32 32}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 488, i32 3}
!73 = !{ptr @plgpio_probe_dt._entry.41, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @plgpio_probe_dt._entry_ptr.43, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 492, i32 32}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 495, i32 3}
!79 = !{ptr @plgpio_probe_dt._entry.45, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @plgpio_probe_dt._entry_ptr.47, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 499, i32 32}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 502, i32 3}
!85 = !{ptr @plgpio_probe_dt._entry.49, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @plgpio_probe_dt._entry_ptr.51, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 506, i32 32}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 509, i32 3}
!91 = !{ptr @plgpio_probe_dt._entry.53, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @plgpio_probe_dt._entry_ptr.55, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 513, i32 32}
!95 = !{ptr @.str.57, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 360, i32 11}
!97 = !{ptr @plgpio_irqchip, !98, !"plgpio_irqchip", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 359, i32 24}
!99 = !{ptr @plgpio_of_match, !100, !"plgpio_of_match", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 719, i32 34}
!101 = !{ptr @plgpio_dev_pm_ops, !102, !"plgpio_dev_pm_ops", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/spear/pinctrl-plgpio.c", i32 717, i32 8}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
