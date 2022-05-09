; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-zynq.c_pt.bc'
source_filename = "../drivers/gpio/gpio-zynq.c"
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
%struct.zynq_platform_data = type { ptr, i32, i16, i32, [6 x i32], [6 x i32] }
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
%struct.zynq_gpio = type { %struct.gpio_chip, ptr, ptr, i32, ptr, %struct.gpio_regs, %struct.spinlock }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.gpio_regs = type { [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_zynq__228_1032_zynq_gpio_driver_init6 = internal global ptr @zynq_gpio_driver_init, section ".initcall6.init", align 4
@zynq_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @zynq_gpio_probe, ptr @zynq_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zynq_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynq_gpio_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zynq_gpio_driver_exit = internal global ptr @zynq_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [29 x i8] c"gpio_zynq.author=Xilinx Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [39 x i8] c"gpio_zynq.description=Zynq GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [38 x i8] c"gpio_zynq.file=drivers/gpio/gpio-zynq\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"gpio_zynq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zynq-gpio\00", [22 x i8] zeroinitializer }, align 32
@zynq_gpio_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-gpio-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynq_gpio_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-gpio-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynqmp_gpio_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,versal-gpio-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @versal_gpio_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,pmc-gpio-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmc_gpio_def }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@zynq_gpio_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @zynq_gpio_suspend, ptr @zynq_gpio_resume, ptr @zynq_gpio_suspend, ptr @zynq_gpio_resume, ptr @zynq_gpio_suspend, ptr @zynq_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynq_gpio_runtime_suspend, ptr @zynq_gpio_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@zynq_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_match_node() failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zynq_gpio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpio/gpio-zynq.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zynq_gpio_probe._entry_ptr = internal global ptr @zynq_gpio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"input clock not found.\0A\00", [40 x i8] zeroinitializer }, align 32
@zynq_gpio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to enable clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@zynq_gpio_probe._entry_ptr.10 = internal global ptr @zynq_gpio_probe._entry.8, section ".printk_index", align 4
@zynq_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&gpio->dirlock\00", [17 x i8] zeroinitializer }, align 32
@zynq_gpio_edge_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @zynq_gpio_irq_enable, ptr null, ptr @zynq_gpio_irq_ack, ptr @zynq_gpio_irq_mask, ptr null, ptr @zynq_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @zynq_gpio_set_irq_type, ptr @zynq_gpio_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynq_gpio_irq_reqres, ptr @zynq_gpio_irq_relres, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, [56 x i8] zeroinitializer }, align 32
@zynq_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@zynq_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@zynq_gpio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add gpio chip\0A\00", [39 x i8] zeroinitializer }, align 32
@zynq_gpio_probe._entry_ptr.14 = internal global ptr @zynq_gpio_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid GPIO pin number: %u\00", [36 x i8] zeroinitializer }, align 32
@zynq_gpio_level_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @zynq_gpio_irq_enable, ptr null, ptr null, ptr @zynq_gpio_irq_mask, ptr null, ptr @zynq_gpio_irq_unmask, ptr @zynq_gpio_irq_ack, ptr null, ptr null, ptr @zynq_gpio_set_irq_type, ptr @zynq_gpio_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynq_gpio_irq_reqres, ptr @zynq_gpio_irq_relres, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 70 }, [56 x i8] zeroinitializer }, align 32
@zynq_gpio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1014, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pm_runtime_get_sync() Failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zynq_gpio_remove\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zynq_gpio_remove._entry_ptr = internal global ptr @zynq_gpio_remove._entry, section ".printk_index", align 4
@zynq_gpio_def = internal constant { %struct.zynq_platform_data, [32 x i8] } { %struct.zynq_platform_data { ptr @.str.19, i32 3, i16 118, i32 4, [6 x i32] [i32 0, i32 32, i32 54, i32 86, i32 0, i32 0], [6 x i32] [i32 31, i32 53, i32 85, i32 117, i32 0, i32 0] }, [32 x i8] zeroinitializer }, align 32
@zynqmp_gpio_def = internal constant { %struct.zynq_platform_data, [32 x i8] } { %struct.zynq_platform_data { ptr @.str.20, i32 2, i16 174, i32 6, [6 x i32] [i32 0, i32 26, i32 52, i32 78, i32 110, i32 142], [6 x i32] [i32 25, i32 51, i32 77, i32 109, i32 141, i32 173] }, [32 x i8] zeroinitializer }, align 32
@versal_gpio_def = internal constant { %struct.zynq_platform_data, [32 x i8] } { %struct.zynq_platform_data { ptr @.str.21, i32 4, i16 58, i32 4, [6 x i32] [i32 0, i32 0, i32 0, i32 26, i32 0, i32 0], [6 x i32] [i32 25, i32 0, i32 0, i32 57, i32 0, i32 0] }, [32 x i8] zeroinitializer }, align 32
@pmc_gpio_def = internal constant { %struct.zynq_platform_data, [32 x i8] } { %struct.zynq_platform_data { ptr @.str.22, i32 0, i16 116, i32 5, [6 x i32] [i32 0, i32 26, i32 0, i32 52, i32 84, i32 0], [6 x i32] [i32 25, i32 51, i32 0, i32 83, i32 115, i32 0] }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zynq_gpio\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zynqmp_gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"versal_gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pmc_gpio\00", [23 x i8] zeroinitializer }, align 32
@zynq_gpio_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 736, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"irq_get_irq_data() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zynq_gpio_suspend\00", [46 x i8] zeroinitializer }, align 32
@zynq_gpio_suspend._entry_ptr = internal global ptr @zynq_gpio_suspend._entry, section ".printk_index", align 4
@zynq_gpio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.25, ptr @.str.3, i32 758, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zynq_gpio_resume\00", [47 x i8] zeroinitializer }, align 32
@zynq_gpio_resume._entry_ptr = internal global ptr @zynq_gpio_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"zynq_gpio_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1022, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1024, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"zynq_gpio_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 873, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"zynq_gpio_dev_pm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 808, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 907, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 933, i32 50 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 939, i32 56 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 943, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 947, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"zynq_gpio_edge_irqchip\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 607, i32 24 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 980, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 982, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 211, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [24 x i8] c"zynq_gpio_level_irqchip\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 593, i32 24 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1014, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"zynq_gpio_def\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 858, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"zynqmp_gpio_def\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 839, i32 40 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"versal_gpio_def\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 814, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"pmc_gpio_def\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 825, i32 40 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 859, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 840, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 815, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 826, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 736, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [28 x i8] c"../drivers/gpio/gpio-zynq.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 758, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_zynq_gpio_driver_exit, ptr @__initcall__kmod_gpio_zynq__228_1032_zynq_gpio_driver_init6, ptr @zynq_gpio_driver_exit, ptr @zynq_gpio_probe._entry, ptr @zynq_gpio_probe._entry.12, ptr @zynq_gpio_probe._entry.8, ptr @zynq_gpio_probe._entry_ptr, ptr @zynq_gpio_probe._entry_ptr.10, ptr @zynq_gpio_probe._entry_ptr.14, ptr @zynq_gpio_remove._entry, ptr @zynq_gpio_remove._entry_ptr, ptr @zynq_gpio_resume._entry, ptr @zynq_gpio_resume._entry_ptr, ptr @zynq_gpio_suspend._entry, ptr @zynq_gpio_suspend._entry_ptr, ptr @zynq_gpio_driver, ptr @.str, ptr @zynq_gpio_of_match, ptr @zynq_gpio_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @zynq_gpio_probe.__key, ptr @.str.11, ptr @zynq_gpio_edge_irqchip, ptr @zynq_gpio_probe.lock_key, ptr @zynq_gpio_probe.request_key, ptr @.str.13, ptr @.str.15, ptr @zynq_gpio_level_irqchip, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @zynq_gpio_def, ptr @zynqmp_gpio_def, ptr @versal_gpio_def, ptr @pmc_gpio_def, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_edge_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_level_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_def to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_gpio_def to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versal_gpio_def to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_gpio_def to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_gpio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @zynq_gpio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynq_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @zynq_gpio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 624, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_match_node(ptr noundef nonnull @zynq_gpio_of_match, ptr noundef %1) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %p_data = getelementptr inbounds %struct.zynq_gpio, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %p_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %p_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %base_addr, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.zynq_gpio, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call14, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %9 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %parent, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @zynq_gpio_get_value, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @zynq_gpio_set_value, ptr %set, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @zynq_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @zynq_gpio_free, ptr %free, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @zynq_gpio_dir_in, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @zynq_gpio_dir_out, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @zynq_gpio_get_direction, ptr %get_direction, align 4
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call25 = tail call i32 @of_alias_get_id(ptr noundef %24, ptr noundef nonnull @.str.6) #7
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %25 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call25, ptr %base, align 4
  %26 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_data, align 4
  %ngpio = getelementptr inbounds %struct.zynq_platform_data, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ngpio, align 4
  %ngpio27 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %ngpio27 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %ngpio27, align 4
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.zynq_gpio, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call29, ptr %clk, align 4
  %cmp.i169 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call29 to i32
  %call36 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %32, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end37:                                         ; preds = %if.end18
  %call.i170 = tail call i32 @clk_prepare(ptr noundef %call29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool.not.i = icmp eq i32 %call.i170, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end37.do.end44_crit_edge

if.end37.do.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

if.end.i:                                         ; preds = %if.end37
  %call1.i = tail call i32 @clk_enable(ptr noundef %call29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body47, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call29) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then3.i, %if.end37.do.end44_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i170, %if.end37.do.end44_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

do.body47:                                        ; preds = %if.end.i
  %dirlock = getelementptr inbounds %struct.zynq_gpio, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %dirlock, ptr noundef nonnull @.str.11, ptr noundef nonnull @zynq_gpio_probe.__key, i16 noundef signext 3) #7
  %call.i171 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i172 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %cmp.i173 = icmp slt i32 %call.i172, 0
  br i1 %cmp.i173, label %if.then.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body47
  %33 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_data, align 4
  %max_bank182 = getelementptr inbounds %struct.zynq_platform_data, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %max_bank182 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_bank182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp60183 = icmp sgt i32 %36, 0
  br i1 %cmp60183, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then.i:                                        ; preds = %do.body47
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_pm_dis_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_pm_dis_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_dis

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !92
  br label %err_pm_dis

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %bank_num.0184 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %38 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.0184, 6
  %add = add i32 %mul, 532
  %add.ptr = getelementptr i8, ptr %39, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #7, !srcloc !93
  %40 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %p_data, align 4
  %quirks = getelementptr inbounds %struct.zynq_platform_data, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %quirks, align 4
  %and = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  %add65 = add i32 %bank_num.0184, 2
  %spec.select = select i1 %tobool63.not, i32 %bank_num.0184, i32 %add65
  %inc = add i32 %spec.select, 1
  %max_bank = getelementptr inbounds %struct.zynq_platform_data, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %max_bank to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_bank, align 4
  %cmp60 = icmp slt i32 %inc, %45
  br i1 %cmp60, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %irq67 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %46 = ptrtoint ptr %irq67 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @zynq_gpio_edge_irqchip, ptr %irq67, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %47 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @zynq_gpio_irqhandler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %48 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #7
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %49 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool72.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool72.not, label %for.end.err_pm_put_crit_edge, label %if.end74

for.end.err_pm_put_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_put

if.end74:                                         ; preds = %for.end
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  %52 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %call5.i.i, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %53 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %54 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @handle_level_irq, ptr %handler, align 4
  %call77 = tail call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @zynq_gpio_probe.lock_key, ptr noundef nonnull @zynq_gpio_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end84, label %do.end82

do.end82:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %err_pm_put

if.end84:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  tail call void @irq_modify_status(i32 noundef %56, i32 noundef 0, i32 noundef 524288) #7
  %call87 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i175 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

err_pm_put:                                       ; preds = %do.end82, %for.end.err_pm_put_crit_edge
  %ret.0 = phi i32 [ %call77, %do.end82 ], [ -12, %for.end.err_pm_put_crit_edge ]
  %call.i176 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %err_pm_dis

err_pm_dis:                                       ; preds = %err_pm_put, %do.end11.i.i.i.i.i, %if.then.i.err_pm_dis_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_pm_put ], [ %call.i172, %if.then.i.err_pm_dis_crit_edge ], [ %call.i172, %do.end11.i.i.i.i.i ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %57 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %58) #7
  tail call void @clk_unprepare(ptr noundef %58) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pm_dis, %if.end84, %do.end44, %if.then32, %if.end13.cleanup_crit_edge, %if.then10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then10 ], [ %call36, %if.then32 ], [ %retval.0.i.ph, %do.end44 ], [ %ret.1, %err_pm_dis ], [ 0, %if.end84 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @gpiochip_remove(ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  tail call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext false) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_get_value(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_data.i, align 4
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.i = icmp sgt i32 %3, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 4, i32 %bank.048.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pin)
  %cmp2.not.i = icmp ugt i32 %5, %pin
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 5, i32 %bank.048.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp5.not.i = icmp ult i32 %7, %pin
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %pin, %5
  br label %zynq_gpio_get_bank_pin.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = add i32 %bank.048.i, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %bank.048.i, i32 %add.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp.i = icmp slt i32 %inc.i, %3
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %pin) #7
  br label %zynq_gpio_get_bank_pin.exit

zynq_gpio_get_bank_pin.exit:                      ; preds = %do.end.i, %if.then.i
  %bank_num.0 = phi i32 [ 0, %do.end.i ], [ %bank.048.i, %if.then.i ]
  %storemerge.i = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.then.i ]
  %10 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_data.i, align 4
  %quirks.i53 = getelementptr inbounds %struct.zynq_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %quirks.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i53, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.else34, label %if.then

if.then:                                          ; preds = %zynq_gpio_get_bank_pin.exit
  %and.i57 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool3.not = icmp eq i32 %and.i57, 0
  br i1 %tobool3.not, label %if.else14, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bank_num.0)
  %cmp = icmp ult i32 %bank_num.0, 2
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.0, 2
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %mul, 96
  %add.ptr = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  br label %if.end42

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %add10 = add i32 %mul, 64
  %add.ptr11 = getelementptr i8, ptr %16, i32 %add10
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !94
  br label %if.end42

if.else14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bank_num.0)
  %cmp15 = icmp ult i32 %bank_num.0, 3
  %base_addr18 = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %base_addr18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_addr18, align 4
  %mul19 = shl i32 %bank_num.0, 2
  br i1 %cmp15, label %if.then16, label %if.else24

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  %add20 = add nuw nsw i32 %mul19, 96
  %add.ptr21 = getelementptr i8, ptr %20, i32 %add20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !94
  br label %if.end42

if.else24:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  %add28 = add i32 %mul19, 64
  %add.ptr29 = getelementptr i8, ptr %20, i32 %add28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #7, !srcloc !94
  br label %if.end42

if.else34:                                        ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %base_addr36 = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %base_addr36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr36, align 4
  %mul37 = shl i32 %bank_num.0, 2
  %add38 = add i32 %mul37, 96
  %add.ptr39 = getelementptr i8, ptr %24, i32 %add38
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !94
  br label %if.end42

if.end42:                                         ; preds = %if.else34, %if.else24, %if.then16, %if.else, %if.then5
  %.sink = phi i32 [ %18, %if.else ], [ %17, %if.then5 ], [ %22, %if.else24 ], [ %21, %if.then16 ], [ %25, %if.else34 ]
  %26 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %shr = lshr i32 %26, %storemerge.i
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_gpio_set_value(ptr noundef %chip, i32 noundef %pin, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_data.i, align 4
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.i = icmp sgt i32 %3, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.zynq_gpio_get_bank_pin.exit.thread_crit_edge

entry.zynq_gpio_get_bank_pin.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_gpio_get_bank_pin.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 4, i32 %bank.048.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pin)
  %cmp2.not.i = icmp ugt i32 %5, %pin
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 5, i32 %bank.048.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp5.not.i = icmp ult i32 %7, %pin
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %zynq_gpio_get_bank_pin.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = add i32 %bank.048.i, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %bank.048.i, i32 %add.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp.i = icmp slt i32 %inc.i, %3
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.zynq_gpio_get_bank_pin.exit.thread_crit_edge

if.end.i.zynq_gpio_get_bank_pin.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_gpio_get_bank_pin.exit.thread

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

zynq_gpio_get_bank_pin.exit.thread:               ; preds = %if.end.i.zynq_gpio_get_bank_pin.exit.thread_crit_edge, %entry.zynq_gpio_get_bank_pin.exit.thread_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %pin) #7
  br label %if.else

zynq_gpio_get_bank_pin.exit:                      ; preds = %land.lhs.true.i
  %sub.i = sub i32 %pin, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.i, 15
  br i1 %cmp, label %if.then, label %zynq_gpio_get_bank_pin.exit.if.else_crit_edge

zynq_gpio_get_bank_pin.exit.if.else_crit_edge:    ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %sub.i, -16
  %mul = shl i32 %bank.048.i, 3
  %add = or i32 %mul, 4
  br label %if.end

if.else:                                          ; preds = %zynq_gpio_get_bank_pin.exit.if.else_crit_edge, %zynq_gpio_get_bank_pin.exit.thread
  %storemerge.i15 = phi i32 [ 0, %zynq_gpio_get_bank_pin.exit.thread ], [ %sub.i, %zynq_gpio_get_bank_pin.exit.if.else_crit_edge ]
  %bank_num.014 = phi i32 [ 0, %zynq_gpio_get_bank_pin.exit.thread ], [ %bank.048.i, %zynq_gpio_get_bank_pin.exit.if.else_crit_edge ]
  %mul1 = shl i32 %bank_num.014, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bank_pin_num.0 = phi i32 [ %sub, %if.then ], [ %storemerge.i15, %if.else ]
  %reg_offset.0 = phi i32 [ %add, %if.then ], [ %mul1, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  %lnot.ext = zext i1 %tobool to i32
  %shl = shl i32 65536, %bank_pin_num.0
  %neg = xor i32 %shl, -1
  %shl5 = shl nuw i32 %lnot.ext, %bank_pin_num.0
  %or = or i32 %shl5, -65536
  %and = and i32 %or, %neg
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %reg_offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #7, !srcloc !93
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_request(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_gpio_free(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_dir_in(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_data.i, align 4
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.i = icmp sgt i32 %3, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.zynq_gpio_get_bank_pin.exit.thread_crit_edge

entry.zynq_gpio_get_bank_pin.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_gpio_get_bank_pin.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 4, i32 %bank.048.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pin)
  %cmp2.not.i = icmp ugt i32 %5, %pin
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 5, i32 %bank.048.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp5.not.i = icmp ult i32 %7, %pin
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %zynq_gpio_get_bank_pin.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = add i32 %bank.048.i, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %bank.048.i, i32 %add.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp.i = icmp slt i32 %inc.i, %3
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.zynq_gpio_get_bank_pin.exit.thread_crit_edge

if.end.i.zynq_gpio_get_bank_pin.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_gpio_get_bank_pin.exit.thread

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

zynq_gpio_get_bank_pin.exit:                      ; preds = %land.lhs.true.i
  %sub.i = sub i32 %pin, %5
  %10 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_data.i, align 4
  %quirks.i29 = getelementptr inbounds %struct.zynq_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %quirks.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i29, align 4
  %and.i30 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not = icmp ne i32 %and.i30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bank.048.i)
  %cmp = icmp eq i32 %bank.048.i, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true2, label %zynq_gpio_get_bank_pin.exit.do.body5_crit_edge

zynq_gpio_get_bank_pin.exit.do.body5_crit_edge:   ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

zynq_gpio_get_bank_pin.exit.thread:               ; preds = %if.end.i.zynq_gpio_get_bank_pin.exit.thread_crit_edge, %entry.zynq_gpio_get_bank_pin.exit.thread_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %pin) #7
  br label %do.body5

land.lhs.true2:                                   ; preds = %zynq_gpio_get_bank_pin.exit
  %.off = add i32 %sub.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.do.body5_crit_edge

land.lhs.true2.do.body5_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %land.lhs.true2.do.body5_crit_edge, %zynq_gpio_get_bank_pin.exit.thread, %zynq_gpio_get_bank_pin.exit.do.body5_crit_edge
  %storemerge.i42 = phi i32 [ %sub.i, %land.lhs.true2.do.body5_crit_edge ], [ %sub.i, %zynq_gpio_get_bank_pin.exit.do.body5_crit_edge ], [ 0, %zynq_gpio_get_bank_pin.exit.thread ]
  %bank_num.040 = phi i32 [ 0, %land.lhs.true2.do.body5_crit_edge ], [ %bank.048.i, %zynq_gpio_get_bank_pin.exit.do.body5_crit_edge ], [ 0, %zynq_gpio_get_bank_pin.exit.thread ]
  %dirlock = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 6
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dirlock) #7
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.040, 6
  %add = add i32 %mul, 516
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %shl = shl nuw i32 1, %storemerge.i42
  %neg = xor i32 %shl, -1
  %and = and i32 %17, %neg
  %18 = tail call i32 @llvm.bswap.i32(i32 %and)
  %19 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_addr, align 4
  %add.ptr16 = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %18) #7, !srcloc !93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dirlock, i32 noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body5 ], [ -22, %land.lhs.true2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_dir_out(ptr noundef %chip, i32 noundef %pin, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_data.i, align 4
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.i = icmp sgt i32 %3, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 4, i32 %bank.048.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pin)
  %cmp2.not.i = icmp ugt i32 %5, %pin
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 5, i32 %bank.048.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp5.not.i = icmp ult i32 %7, %pin
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %pin, %5
  br label %zynq_gpio_get_bank_pin.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = add i32 %bank.048.i, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %bank.048.i, i32 %add.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp.i = icmp slt i32 %inc.i, %3
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %pin) #7
  br label %zynq_gpio_get_bank_pin.exit

zynq_gpio_get_bank_pin.exit:                      ; preds = %do.end.i, %if.then.i
  %bank_num.0 = phi i32 [ 0, %do.end.i ], [ %bank.048.i, %if.then.i ]
  %storemerge.i = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.then.i ]
  %dirlock = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dirlock) #7
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.0, 6
  %add = add i32 %mul, 516
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %shl = shl nuw i32 1, %storemerge.i
  %or = or i32 %13, %shl
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #7, !srcloc !93
  %17 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr, align 4
  %add15 = add i32 %mul, 520
  %add.ptr16 = getelementptr i8, ptr %18, i32 %add15
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !94
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %or20 = or i32 %20, %shl
  %21 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr, align 4
  %add.ptr24 = getelementptr i8, ptr %23, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %21) #7, !srcloc !93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dirlock, i32 noundef %call3) #7
  tail call void @zynq_gpio_set_value(ptr noundef %chip, i32 noundef %pin, i32 noundef %state)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_get_direction(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_data.i, align 4
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.i = icmp sgt i32 %3, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 4, i32 %bank.048.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pin)
  %cmp2.not.i = icmp ugt i32 %5, %pin
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.zynq_platform_data, ptr %1, i32 0, i32 5, i32 %bank.048.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp5.not.i = icmp ult i32 %7, %pin
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %pin, %5
  br label %zynq_gpio_get_bank_pin.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = add i32 %bank.048.i, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %bank.048.i, i32 %add.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp.i = icmp slt i32 %inc.i, %3
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %pin) #7
  br label %zynq_gpio_get_bank_pin.exit

zynq_gpio_get_bank_pin.exit:                      ; preds = %do.end.i, %if.then.i
  %bank_num.0 = phi i32 [ 0, %do.end.i ], [ %bank.048.i, %if.then.i ]
  %storemerge.i = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.then.i ]
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.0, 6
  %add = add i32 %mul, 516
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  %13 = xor i32 %12, -1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = lshr i32 %14, %storemerge.i
  %16 = and i32 %15, 1
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_gpio_irqhandler(ptr noundef %desc) #2 align 64 {
entry:
  %pending.addr.i = alloca i32, align 4
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
  %p_data = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 4
  %12 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_data, align 4
  %max_bank33 = getelementptr inbounds %struct.zynq_platform_data, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %max_bank33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_bank33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp34.not = icmp eq i32 %15, 0
  br i1 %cmp34.not, label %chained_irq_enter.exit.for.end_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 1
  %domain.i = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %zynq_gpio_handle_bank_irq.exit.for.body_crit_edge, %for.body.lr.ph
  %bank_num.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %zynq_gpio_handle_bank_irq.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.035, 6
  %add = add i32 %mul, 536
  %add.ptr = getelementptr i8, ptr %17, i32 %add
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  %19 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_addr, align 4
  %add7 = add i32 %mul, 524
  %add.ptr8 = getelementptr i8, ptr %20, i32 %add7
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !94
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending.addr.i)
  %25 = ptrtoint ptr %pending.addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pending.addr.i, align 4
  %26 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_data, align 4
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %27, i32 0, i32 4, i32 %bank_num.035
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %domain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i27 = icmp eq i32 %23, 0
  br i1 %tobool.not.i27, label %for.body.zynq_gpio_handle_bank_irq.exit_crit_edge, label %if.end.i28

for.body.zynq_gpio_handle_bank_irq.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_gpio_handle_bank_irq.exit

if.end.i28:                                       ; preds = %for.body
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %pending.addr.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 32
  br i1 %cmp9.i, label %if.end.i28.for.body.i_crit_edge, label %if.end.i28.zynq_gpio_handle_bank_irq.exit_crit_edge

if.end.i28.zynq_gpio_handle_bank_irq.exit_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_gpio_handle_bank_irq.exit

if.end.i28.for.body.i_crit_edge:                  ; preds = %if.end.i28
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i28.for.body.i_crit_edge
  %offset.010.i = phi i32 [ %call3.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.i28.for.body.i_crit_edge ]
  %add.i = add i32 %offset.010.i, %29
  %call1.i = call i32 @generic_handle_domain_irq(ptr noundef %31, i32 noundef %add.i) #7
  %add2.i = add nsw i32 %offset.010.i, 1
  %call3.i = call i32 @_find_next_bit_be(ptr noundef nonnull %pending.addr.i, i32 noundef 32, i32 noundef %add2.i) #7
  %cmp.i = icmp slt i32 %call3.i, 32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.zynq_gpio_handle_bank_irq.exit_crit_edge

for.body.i.zynq_gpio_handle_bank_irq.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_gpio_handle_bank_irq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

zynq_gpio_handle_bank_irq.exit:                   ; preds = %for.body.i.zynq_gpio_handle_bank_irq.exit_crit_edge, %if.end.i28.zynq_gpio_handle_bank_irq.exit_crit_edge, %for.body.zynq_gpio_handle_bank_irq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending.addr.i)
  %32 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_data, align 4
  %quirks = getelementptr inbounds %struct.zynq_platform_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %quirks, align 4
  %and12 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  %add13 = add i32 %bank_num.035, 2
  %spec.select = select i1 %tobool.not, i32 %bank_num.035, i32 %add13
  %inc = add i32 %spec.select, 1
  %max_bank = getelementptr inbounds %struct.zynq_platform_data, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %max_bank to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_bank, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %zynq_gpio_handle_bank_irq.exit.for.body_crit_edge, label %zynq_gpio_handle_bank_irq.exit.for.end_crit_edge

zynq_gpio_handle_bank_irq.exit.for.end_crit_edge: ; preds = %zynq_gpio_handle_bank_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

zynq_gpio_handle_bank_irq.exit.for.body_crit_edge: ; preds = %zynq_gpio_handle_bank_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %zynq_gpio_handle_bank_irq.exit.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %38 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i30 = icmp eq ptr %39, null
  br i1 %tobool.not.i30, label %if.else.i31, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i31:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %40 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i31, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %41, %if.else.i31 ], [ %39, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_enable(ptr nocapture noundef readonly %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %p_data.i.i = getelementptr inbounds %struct.zynq_gpio, ptr %call1.i, i32 0, i32 4
  %4 = ptrtoint ptr %p_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_data.i.i, align 4
  %max_bank.i.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_bank.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_bank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp47.i.i = icmp sgt i32 %7, 0
  br i1 %cmp47.i.i, label %for.body.lr.ph.i.i, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %quirks.i.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %bank.048.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 4, i32 %bank.048.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp2.not.i.i = icmp ult i32 %3, %9
  br i1 %cmp2.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx4.i.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 5, i32 %bank.048.i.i
  %10 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp5.not.i.i = icmp ult i32 %11, %3
  br i1 %cmp5.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %3, %9
  br label %zynq_gpio_irq_ack.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %12 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %add.i.i = add i32 %bank.048.i.i, 2
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %bank.048.i.i, i32 %add.i.i
  %inc.i.i = add i32 %spec.select.i.i, 1
  %cmp.i.i = icmp slt i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end.i.i_crit_edge

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %3) #7
  br label %zynq_gpio_irq_ack.exit

zynq_gpio_irq_ack.exit:                           ; preds = %do.end.i.i, %if.then.i.i
  %bank_num.0.i = phi i32 [ 0, %do.end.i.i ], [ %bank.048.i.i, %if.then.i.i ]
  %storemerge.i.i = phi i32 [ 0, %do.end.i.i ], [ %sub.i.i, %if.then.i.i ]
  %shl.i = shl nuw i32 1, %storemerge.i.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  %base_addr.i = getelementptr inbounds %struct.zynq_gpio, ptr %call1.i, i32 0, i32 1
  %15 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i, align 4
  %mul.i = shl i32 %bank_num.0.i, 6
  %add.i = add i32 %mul.i, 536
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !93
  %17 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i3 = tail call ptr @gpiochip_get_data(ptr noundef %18) #7
  %19 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwirq.i, align 4
  %p_data.i.i5 = getelementptr inbounds %struct.zynq_gpio, ptr %call1.i3, i32 0, i32 4
  %21 = ptrtoint ptr %p_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p_data.i.i5, align 4
  %max_bank.i.i6 = getelementptr inbounds %struct.zynq_platform_data, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %max_bank.i.i6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_bank.i.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp47.i.i7 = icmp sgt i32 %24, 0
  br i1 %cmp47.i.i7, label %for.body.lr.ph.i.i9, label %zynq_gpio_irq_ack.exit.do.end.i.i26_crit_edge

zynq_gpio_irq_ack.exit.do.end.i.i26_crit_edge:    ; preds = %zynq_gpio_irq_ack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i26

for.body.lr.ph.i.i9:                              ; preds = %zynq_gpio_irq_ack.exit
  %quirks.i.i8 = getelementptr inbounds %struct.zynq_platform_data, ptr %22, i32 0, i32 1
  br label %for.body.i.i13

for.body.i.i13:                                   ; preds = %if.end.i.i25.for.body.i.i13_crit_edge, %for.body.lr.ph.i.i9
  %bank.048.i.i10 = phi i32 [ 0, %for.body.lr.ph.i.i9 ], [ %inc.i.i23, %if.end.i.i25.for.body.i.i13_crit_edge ]
  %arrayidx.i.i11 = getelementptr %struct.zynq_platform_data, ptr %22, i32 0, i32 4, i32 %bank.048.i.i10
  %25 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %26)
  %cmp2.not.i.i12 = icmp ult i32 %20, %26
  br i1 %cmp2.not.i.i12, label %for.body.i.i13.if.end.i.i25_crit_edge, label %land.lhs.true.i.i16

for.body.i.i13.if.end.i.i25_crit_edge:            ; preds = %for.body.i.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i25

land.lhs.true.i.i16:                              ; preds = %for.body.i.i13
  %arrayidx4.i.i14 = getelementptr %struct.zynq_platform_data, ptr %22, i32 0, i32 5, i32 %bank.048.i.i10
  %27 = ptrtoint ptr %arrayidx4.i.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.i.i14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %20)
  %cmp5.not.i.i15 = icmp ult i32 %28, %20
  br i1 %cmp5.not.i.i15, label %land.lhs.true.i.i16.if.end.i.i25_crit_edge, label %if.then.i.i18

land.lhs.true.i.i16.if.end.i.i25_crit_edge:       ; preds = %land.lhs.true.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i25

if.then.i.i18:                                    ; preds = %land.lhs.true.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i17 = sub i32 %20, %26
  br label %zynq_gpio_irq_unmask.exit

if.end.i.i25:                                     ; preds = %land.lhs.true.i.i16.if.end.i.i25_crit_edge, %for.body.i.i13.if.end.i.i25_crit_edge
  %29 = ptrtoint ptr %quirks.i.i8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quirks.i.i8, align 4
  %and.i.i19 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %and.i.i19, 0
  %add.i.i21 = add i32 %bank.048.i.i10, 2
  %spec.select.i.i22 = select i1 %tobool.not.i.i20, i32 %bank.048.i.i10, i32 %add.i.i21
  %inc.i.i23 = add i32 %spec.select.i.i22, 1
  %cmp.i.i24 = icmp slt i32 %inc.i.i23, %24
  br i1 %cmp.i.i24, label %if.end.i.i25.for.body.i.i13_crit_edge, label %if.end.i.i25.do.end.i.i26_crit_edge

if.end.i.i25.do.end.i.i26_crit_edge:              ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i26

if.end.i.i25.for.body.i.i13_crit_edge:            ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i13

do.end.i.i26:                                     ; preds = %if.end.i.i25.do.end.i.i26_crit_edge, %zynq_gpio_irq_ack.exit.do.end.i.i26_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %20) #7
  br label %zynq_gpio_irq_unmask.exit

zynq_gpio_irq_unmask.exit:                        ; preds = %do.end.i.i26, %if.then.i.i18
  %bank_num.0.i27 = phi i32 [ 0, %do.end.i.i26 ], [ %bank.048.i.i10, %if.then.i.i18 ]
  %storemerge.i.i28 = phi i32 [ 0, %do.end.i.i26 ], [ %sub.i.i17, %if.then.i.i18 ]
  %shl.i29 = shl nuw i32 1, %storemerge.i.i28
  %31 = tail call i32 @llvm.bswap.i32(i32 %shl.i29) #7
  %base_addr.i30 = getelementptr inbounds %struct.zynq_gpio, ptr %call1.i3, i32 0, i32 1
  %32 = ptrtoint ptr %base_addr.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr.i30, align 4
  %mul.i31 = shl i32 %bank_num.0.i27, 6
  %add.i32 = add i32 %mul.i31, 528
  %add.ptr.i33 = getelementptr i8, ptr %33, i32 %add.i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %31) #7, !srcloc !93
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_ack(ptr nocapture noundef readonly %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_data.i, align 4
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp47.i = icmp sgt i32 %7, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 4, i32 %bank.048.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp2.not.i = icmp ult i32 %3, %9
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 5, i32 %bank.048.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp5.not.i = icmp ult i32 %11, %3
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %3, %9
  br label %zynq_gpio_get_bank_pin.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = add i32 %bank.048.i, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %bank.048.i, i32 %add.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %3) #7
  br label %zynq_gpio_get_bank_pin.exit

zynq_gpio_get_bank_pin.exit:                      ; preds = %do.end.i, %if.then.i
  %bank_num.0 = phi i32 [ 0, %do.end.i ], [ %bank.048.i, %if.then.i ]
  %storemerge.i = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.then.i ]
  %shl = shl nuw i32 1, %storemerge.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.0, 6
  %add = add i32 %mul, 536
  %add.ptr = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #7, !srcloc !93
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_mask(ptr nocapture noundef readonly %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_data.i, align 4
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp47.i = icmp sgt i32 %7, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 4, i32 %bank.048.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp2.not.i = icmp ult i32 %3, %9
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 5, i32 %bank.048.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp5.not.i = icmp ult i32 %11, %3
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %3, %9
  br label %zynq_gpio_get_bank_pin.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = add i32 %bank.048.i, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %bank.048.i, i32 %add.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %3) #7
  br label %zynq_gpio_get_bank_pin.exit

zynq_gpio_get_bank_pin.exit:                      ; preds = %do.end.i, %if.then.i
  %bank_num.0 = phi i32 [ 0, %do.end.i ], [ %bank.048.i, %if.then.i ]
  %storemerge.i = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.then.i ]
  %shl = shl nuw i32 1, %storemerge.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.0, 6
  %add = add i32 %mul, 532
  %add.ptr = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #7, !srcloc !93
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_unmask(ptr nocapture noundef readonly %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_data.i, align 4
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp47.i = icmp sgt i32 %7, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 4, i32 %bank.048.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp2.not.i = icmp ult i32 %3, %9
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 5, i32 %bank.048.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp5.not.i = icmp ult i32 %11, %3
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %3, %9
  br label %zynq_gpio_get_bank_pin.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = add i32 %bank.048.i, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %bank.048.i, i32 %add.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %3) #7
  br label %zynq_gpio_get_bank_pin.exit

zynq_gpio_get_bank_pin.exit:                      ; preds = %do.end.i, %if.then.i
  %bank_num.0 = phi i32 [ 0, %do.end.i ], [ %bank.048.i, %if.then.i ]
  %storemerge.i = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.then.i ]
  %shl = shl nuw i32 1, %storemerge.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.0, 6
  %add = add i32 %mul, 528
  %add.ptr = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #7, !srcloc !93
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_set_irq_type(ptr nocapture noundef %irq_data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_data.i, align 4
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp47.i = icmp sgt i32 %7, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 4, i32 %bank.048.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp2.not.i = icmp ult i32 %3, %9
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 5, i32 %bank.048.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp5.not.i = icmp ult i32 %11, %3
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %3, %9
  br label %zynq_gpio_get_bank_pin.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = add i32 %bank.048.i, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %bank.048.i, i32 %add.i
  %inc.i = add i32 %spec.select.i, 1
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %3) #7
  br label %zynq_gpio_get_bank_pin.exit

zynq_gpio_get_bank_pin.exit:                      ; preds = %do.end.i, %if.then.i
  %bank_num.0 = phi i32 [ 0, %do.end.i ], [ %bank.048.i, %if.then.i ]
  %storemerge.i = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.then.i ]
  %base_addr = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr, align 4
  %mul = shl i32 %bank_num.0, 6
  %add = add i32 %mul, 540
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr, align 4
  %add6 = add i32 %mul, 544
  %add.ptr7 = getelementptr i8, ptr %19, i32 %add6
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !94
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr, align 4
  %add13 = add i32 %mul, 548
  %add.ptr14 = getelementptr i8, ptr %23, i32 %add13
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !94
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %zynq_gpio_get_bank_pin.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %sw.bb29
    i32 4, label %sw.bb34
    i32 8, label %sw.bb40
  ]

zynq_gpio_get_bank_pin.exit.cleanup_crit_edge:    ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %storemerge.i
  %or = or i32 %17, %shl
  %or18 = or i32 %21, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %25, %neg
  br label %sw.epilog

sw.bb20:                                          ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl21 = shl nuw i32 1, %storemerge.i
  %or22 = or i32 %17, %shl21
  %neg24 = xor i32 %shl21, -1
  %and25 = and i32 %21, %neg24
  %and28 = and i32 %25, %neg24
  br label %sw.epilog

sw.bb29:                                          ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl30 = shl nuw i32 1, %storemerge.i
  %or31 = or i32 %17, %shl30
  %or33 = or i32 %25, %shl30
  br label %sw.epilog

sw.bb34:                                          ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl35 = shl nuw i32 1, %storemerge.i
  %neg36 = xor i32 %shl35, -1
  %and37 = and i32 %17, %neg36
  %or39 = or i32 %21, %shl35
  br label %sw.epilog

sw.bb40:                                          ; preds = %zynq_gpio_get_bank_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl41 = shl nuw i32 1, %storemerge.i
  %neg42 = xor i32 %shl41, -1
  %and43 = and i32 %17, %neg42
  %and46 = and i32 %21, %neg42
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb34, %sw.bb29, %sw.bb20, %sw.bb
  %int_any.0 = phi i32 [ %25, %sw.bb40 ], [ %25, %sw.bb34 ], [ %or33, %sw.bb29 ], [ %and28, %sw.bb20 ], [ %and, %sw.bb ]
  %int_pol.0 = phi i32 [ %and46, %sw.bb40 ], [ %or39, %sw.bb34 ], [ %21, %sw.bb29 ], [ %and25, %sw.bb20 ], [ %or18, %sw.bb ]
  %int_type.0 = phi i32 [ %and43, %sw.bb40 ], [ %and37, %sw.bb34 ], [ %or31, %sw.bb29 ], [ %or22, %sw.bb20 ], [ %or, %sw.bb ]
  %27 = tail call i32 @llvm.bswap.i32(i32 %int_type.0)
  %28 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr, align 4
  %add.ptr50 = getelementptr i8, ptr %29, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %27) #7, !srcloc !93
  %30 = tail call i32 @llvm.bswap.i32(i32 %int_pol.0)
  %31 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr, align 4
  %add.ptr54 = getelementptr i8, ptr %32, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %30) #7, !srcloc !93
  %33 = tail call i32 @llvm.bswap.i32(i32 %int_any.0)
  %34 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_addr, align 4
  %add.ptr58 = getelementptr i8, ptr %35, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %33) #7, !srcloc !93
  %and59 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool.not = icmp eq i32 %and59, 0
  %common.i.i88 = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 3
  %36 = ptrtoint ptr %common.i.i88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %common.i.i88, align 4
  %handle_irq.i89 = getelementptr inbounds %struct.irq_desc, ptr %37, i32 0, i32 3
  %handle_level_irq.handle_fasteoi_irq = select i1 %tobool.not, ptr @handle_level_irq, ptr @handle_fasteoi_irq
  %zynq_gpio_edge_irqchip.zynq_gpio_level_irqchip = select i1 %tobool.not, ptr @zynq_gpio_edge_irqchip, ptr @zynq_gpio_level_irqchip
  %38 = ptrtoint ptr %handle_irq.i89 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %handle_level_irq.handle_fasteoi_irq, ptr %handle_irq.i89, align 4
  %name1.i = getelementptr inbounds %struct.irq_desc, ptr %37, i32 0, i32 35
  %39 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %name1.i, align 4
  %chip2.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4
  %40 = ptrtoint ptr %chip2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %zynq_gpio_edge_irqchip.zynq_gpio_level_irqchip, ptr %chip2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %zynq_gpio_get_bank_pin.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %zynq_gpio_get_bank_pin.exit.cleanup_crit_edge ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_set_wake(ptr nocapture noundef readonly %data, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq = getelementptr inbounds %struct.zynq_gpio, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call2 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %on) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_irq_reqres(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !92
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %5 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq, align 4
  %call2 = tail call i32 @gpiochip_reqres_irq(ptr noundef %1, i32 noundef %6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_relres(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %1, i32 noundef %3) #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @irq_get_irq_data(i32 noundef %3) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %device_may_wakeup.exit

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then3_crit_edge, label %device_may_wakeup.exit.if.end5_crit_edge

device_may_wakeup.exit.if.end5_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

device_may_wakeup.exit.if.then3_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %device_may_wakeup.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %device_may_wakeup.exit.if.end5_crit_edge
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call1, i32 0, i32 3
  %9 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_data.i, align 4
  %max_bank88.i = getelementptr inbounds %struct.zynq_platform_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %max_bank88.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_bank88.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp89.not.i = icmp eq i32 %16, 0
  br i1 %cmp89.not.i, label %if.then7.zynq_gpio_save_context.exit_crit_edge, label %for.body.lr.ph.i

if.then7.zynq_gpio_save_context.exit_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_gpio_save_context.exit

for.body.lr.ph.i:                                 ; preds = %if.then7
  %base_addr.i = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 1
  %context.i = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank_num.090.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i, align 4
  %mul.i = shl i32 %bank_num.090.i, 3
  %add.ptr.i = getelementptr i8, ptr %18, i32 %mul.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !94
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %arrayidx.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 1, i32 %bank_num.090.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i, align 4
  %add4.i = or i32 %mul.i, 4
  %add.ptr5.i = getelementptr i8, ptr %23, i32 %add4.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !94
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %arrayidx9.i = getelementptr [6 x i32], ptr %context.i, i32 0, i32 %bank_num.090.i
  %26 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx9.i, align 4
  %27 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i, align 4
  %mul12.i = shl i32 %bank_num.090.i, 6
  %add13.i = add i32 %mul12.i, 516
  %add.ptr14.i = getelementptr i8, ptr %28, i32 %add13.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7, !srcloc !94
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %arrayidx18.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 2, i32 %bank_num.090.i
  %31 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx18.i, align 4
  %32 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr.i, align 4
  %add22.i = add i32 %mul12.i, 524
  %add.ptr23.i = getelementptr i8, ptr %33, i32 %add22.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !94
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %arrayidx27.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 4, i32 %bank_num.090.i
  %36 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx27.i, align 4
  %37 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base_addr.i, align 4
  %add31.i = add i32 %mul12.i, 540
  %add.ptr32.i = getelementptr i8, ptr %38, i32 %add31.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #7, !srcloc !94
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %arrayidx36.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 6, i32 %bank_num.090.i
  %41 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx36.i, align 4
  %42 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr.i, align 4
  %add40.i = add i32 %mul12.i, 544
  %add.ptr41.i = getelementptr i8, ptr %43, i32 %add40.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #7, !srcloc !94
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %arrayidx45.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 7, i32 %bank_num.090.i
  %46 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx45.i, align 4
  %47 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_addr.i, align 4
  %add49.i = add i32 %mul12.i, 548
  %add.ptr50.i = getelementptr i8, ptr %48, i32 %add49.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #7, !srcloc !94
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  %arrayidx54.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 8, i32 %bank_num.090.i
  %51 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx54.i, align 4
  %52 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %p_data.i, align 4
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %quirks.i, align 4
  %and.i17 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  %add56.i = add i32 %bank_num.090.i, 2
  %spec.select.i = select i1 %tobool.not.i18, i32 %bank_num.090.i, i32 %add56.i
  %inc.i = add i32 %spec.select.i, 1
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %53, i32 0, i32 3
  %56 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_bank.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %57
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.zynq_gpio_save_context.exit_crit_edge

for.body.i.zynq_gpio_save_context.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_gpio_save_context.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

zynq_gpio_save_context.exit:                      ; preds = %for.body.i.zynq_gpio_save_context.exit_crit_edge, %if.then7.zynq_gpio_save_context.exit_crit_edge
  %call8 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %zynq_gpio_save_context.exit, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call8, %zynq_gpio_save_context.exit ], [ -22, %do.end ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @irq_get_irq_data(i32 noundef %3) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %device_may_wakeup.exit

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then3_crit_edge, label %device_may_wakeup.exit.if.end5_crit_edge

device_may_wakeup.exit.if.end5_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

device_may_wakeup.exit.if.then3_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %device_may_wakeup.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %8) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %device_may_wakeup.exit.if.end5_crit_edge
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call1, i32 0, i32 3
  %9 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #7
  %p_data.i = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_data.i, align 4
  %max_bank76.i = getelementptr inbounds %struct.zynq_platform_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %max_bank76.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_bank76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp77.not.i = icmp eq i32 %16, 0
  br i1 %cmp77.not.i, label %if.then7.cleanup_crit_edge, label %for.body.lr.ph.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then7
  %base_addr.i = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 1
  %context.i = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bank_num.078.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i, align 4
  %mul.i = shl i32 %bank_num.078.i, 6
  %add.i = add i32 %mul.i, 532
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !93
  %arrayidx.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 1, i32 %bank_num.078.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr.i, align 4
  %mul2.i = shl i32 %bank_num.078.i, 3
  %add.ptr4.i = getelementptr i8, ptr %23, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %21) #7, !srcloc !93
  %arrayidx6.i = getelementptr [6 x i32], ptr %context.i, i32 0, i32 %bank_num.078.i
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %27 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i, align 4
  %add9.i = or i32 %mul2.i, 4
  %add.ptr10.i = getelementptr i8, ptr %28, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %26) #7, !srcloc !93
  %arrayidx12.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 2, i32 %bank_num.078.i
  %29 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx12.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %32 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr.i, align 4
  %add15.i = add i32 %mul.i, 516
  %add.ptr16.i = getelementptr i8, ptr %33, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %31) #7, !srcloc !93
  %arrayidx18.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 6, i32 %bank_num.078.i
  %34 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx18.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %37 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base_addr.i, align 4
  %add21.i = add i32 %mul.i, 540
  %add.ptr22.i = getelementptr i8, ptr %38, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %36) #7, !srcloc !93
  %arrayidx24.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 7, i32 %bank_num.078.i
  %39 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx24.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  %42 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr.i, align 4
  %add27.i = add i32 %mul.i, 544
  %add.ptr28.i = getelementptr i8, ptr %43, i32 %add27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %41) #7, !srcloc !93
  %arrayidx30.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 8, i32 %bank_num.078.i
  %44 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx30.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  %47 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_addr.i, align 4
  %add33.i = add i32 %mul.i, 548
  %add.ptr34.i = getelementptr i8, ptr %48, i32 %add33.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %46) #7, !srcloc !93
  %arrayidx36.i = getelementptr %struct.zynq_gpio, ptr %1, i32 0, i32 5, i32 4, i32 %bank_num.078.i
  %49 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx36.i, align 4
  %neg.i = xor i32 %50, -1
  %51 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #7
  %52 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_addr.i, align 4
  %add39.i = add i32 %mul.i, 528
  %add.ptr40.i = getelementptr i8, ptr %53, i32 %add39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %51) #7, !srcloc !93
  %54 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p_data.i, align 4
  %quirks.i = getelementptr inbounds %struct.zynq_platform_data, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %quirks.i, align 4
  %and.i18 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  %add42.i = add i32 %bank_num.078.i, 2
  %spec.select.i = select i1 %tobool.not.i19, i32 %bank_num.078.i, i32 %add42.i
  %inc.i = add i32 %spec.select.i, 1
  %max_bank.i = getelementptr inbounds %struct.zynq_platform_data, ptr %55, i32 0, i32 3
  %58 = ptrtoint ptr %max_bank.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_bank.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %59
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end5.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call8, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_gpio_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.zynq_gpio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_gpio_zynq__228_1032_zynq_gpio_driver_init6, !1, !"__initcall__kmod_gpio_zynq__228_1032_zynq_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-zynq.c", i32 1032, i32 1}
!2 = !{ptr @__exitcall_zynq_gpio_driver_exit, !1, !"__exitcall_zynq_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-zynq.c", i32 1034, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-zynq.c", i32 1035, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-zynq.c", i32 1036, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-zynq.c", i32 1024, i32 11}
!12 = !{ptr @zynq_gpio_driver, !13, !"zynq_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-zynq.c", i32 1022, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-zynq.c", i32 907, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @zynq_gpio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @zynq_gpio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-zynq.c", i32 933, i32 50}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-zynq.c", i32 939, i32 56}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-zynq.c", i32 943, i32 3}
!28 = !{ptr @zynq_gpio_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @zynq_gpio_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @zynq_gpio_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-zynq.c", i32 947, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @zynq_gpio_probe.lock_key, !34, !"lock_key", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-zynq.c", i32 980, i32 8}
!35 = !{ptr @zynq_gpio_probe.request_key, !34, !"request_key", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-zynq.c", i32 982, i32 3}
!38 = !{ptr @zynq_gpio_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @zynq_gpio_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-zynq.c", i32 211, i32 2}
!42 = !{ptr @zynq_gpio_edge_irqchip, !43, !"zynq_gpio_edge_irqchip", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-zynq.c", i32 607, i32 24}
!44 = !{ptr @zynq_gpio_level_irqchip, !45, !"zynq_gpio_level_irqchip", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-zynq.c", i32 593, i32 24}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-zynq.c", i32 1014, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @zynq_gpio_remove._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @zynq_gpio_remove._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @zynq_gpio_of_match, !53, !"zynq_gpio_of_match", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-zynq.c", i32 873, i32 34}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-zynq.c", i32 859, i32 11}
!56 = !{ptr @zynq_gpio_def, !57, !"zynq_gpio_def", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-zynq.c", i32 858, i32 40}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-zynq.c", i32 840, i32 11}
!60 = !{ptr @zynqmp_gpio_def, !61, !"zynqmp_gpio_def", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-zynq.c", i32 839, i32 40}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-zynq.c", i32 815, i32 11}
!64 = !{ptr @versal_gpio_def, !65, !"versal_gpio_def", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-zynq.c", i32 814, i32 40}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-zynq.c", i32 826, i32 11}
!68 = !{ptr @pmc_gpio_def, !69, !"pmc_gpio_def", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpio-zynq.c", i32 825, i32 40}
!70 = !{ptr @zynq_gpio_dev_pm_ops, !71, !"zynq_gpio_dev_pm_ops", i1 false, i1 false}
!71 = !{!"../drivers/gpio/gpio-zynq.c", i32 808, i32 32}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpio-zynq.c", i32 736, i32 3}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @zynq_gpio_suspend._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @zynq_gpio_suspend._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpio/gpio-zynq.c", i32 758, i32 3}
!79 = !{ptr @zynq_gpio_resume._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @zynq_gpio_resume._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148192025}
!91 = !{i64 676848, i64 676873, i64 676895, i64 676911, i64 676923, i64 676943, i64 676967, i64 676983, i64 676995}
!92 = !{i64 2148192213}
!93 = !{i64 4900766}
!94 = !{i64 4901184}
