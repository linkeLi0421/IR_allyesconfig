; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-stm32-exti.c_pt.bc'
source_filename = "../drivers/irqchip/irq-stm32-exti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.stm32_exti_drv_data = type { ptr, ptr, i32, i32 }
%struct.stm32_desc_irq = type { i32, i32, ptr }
%struct.stm32_exti_bank = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_exti_host_data = type { ptr, ptr, ptr, ptr }
%struct.stm32_exti_chip_data = type { ptr, ptr, %struct.raw_spinlock, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x ptr] }

@stm32_exti_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_exti_probe, ptr @stm32_exti_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_exti_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_irq_stm32_exti__188_948_stm32_exti_arch_init3 = internal global ptr @stm32_exti_arch_init, section ".initcall3.init", align 4
@__exitcall_stm32_exti_arch_exit = internal global ptr @stm32_exti_arch_exit, section ".exitcall.exit", align 4
@__of_table_stm32f4_exti = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-exti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_exti_of_init }, section "__irqchip_of_table", align 4
@__of_table_stm32h7_exti = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-exti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_exti_of_init }, section "__irqchip_of_table", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32_exti\00", [21 x i8] zeroinitializer }, align 32
@stm32_exti_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-exti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_drv_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_exti_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request hwspinlock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_exti_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-stm32-exti.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_exti_probe._entry_ptr = internal global ptr @stm32_exti_probe._entry, section ".printk_index", align 4
@stm32_exti_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get hwspinlock\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_exti_probe._entry_ptr.8 = internal global ptr @stm32_exti_probe._entry.6, section ".printk_index", align 4
@stm32_exti_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 879, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no of match data\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_exti_probe._entry_ptr.11 = internal global ptr @stm32_exti_probe._entry.9, section ".printk_index", align 4
@stm32_exti_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GIC interrupt-parent not found\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_exti_probe._entry_ptr.14 = internal global ptr @stm32_exti_probe._entry.12, section ".printk_index", align 4
@stm32_exti_h_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @irq_domain_xlate_twocell, ptr @stm32_exti_h_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@stm32_exti_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 909, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not register exti domain\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_exti_probe._entry_ptr.17 = internal global ptr @stm32_exti_probe._entry.15, section ".printk_index", align 4
@stm32_exti_chip_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip_data->rlock\00", [46 x i8] zeroinitializer }, align 32
@stm32_exti_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%pOF: bank%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_exti_chip_init\00", [43 x i8] zeroinitializer }, align 32
@stm32_exti_chip_init._entry_ptr = internal global ptr @stm32_exti_chip_init._entry, section ".printk_index", align 4
@stm32_host_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@stm32_exti_h_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @stm32_exti_h_suspend, ptr @stm32_exti_h_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@stm32mp1_drv_data = internal constant { %struct.stm32_exti_drv_data, [16 x i8] } { %struct.stm32_exti_drv_data { ptr @stm32mp1_exti_banks, ptr @stm32mp1_desc_irq, i32 3, i32 42 }, [16 x i8] zeroinitializer }, align 32
@stm32mp1_exti_banks = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @stm32mp1_exti_b1, ptr @stm32mp1_exti_b2, ptr @stm32mp1_exti_b3], [20 x i8] zeroinitializer }, align 32
@stm32mp1_desc_irq = internal constant { [42 x %struct.stm32_desc_irq], [104 x i8] } { [42 x %struct.stm32_desc_irq] [%struct.stm32_desc_irq { i32 0, i32 6, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 1, i32 7, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 2, i32 8, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 3, i32 9, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 4, i32 10, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 5, i32 23, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 6, i32 64, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 7, i32 65, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 8, i32 66, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 9, i32 67, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 10, i32 40, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 11, i32 42, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 12, i32 76, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 13, i32 77, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 14, i32 121, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 15, i32 127, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 16, i32 1, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 19, i32 3, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 21, i32 31, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 22, i32 33, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 23, i32 72, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 24, i32 95, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 25, i32 107, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 26, i32 37, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 27, i32 38, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 28, i32 39, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 29, i32 71, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 30, i32 52, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 31, i32 53, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 32, i32 82, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 33, i32 83, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 47, i32 93, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 48, i32 138, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 50, i32 139, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 52, i32 140, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 53, i32 141, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 54, i32 135, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 61, i32 100, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 65, i32 144, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 68, i32 143, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 70, i32 62, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 73, i32 129, ptr @stm32_exti_h_chip }], [104 x i8] zeroinitializer }, align 32
@stm32mp1_exti_b1 = internal constant { %struct.stm32_exti_bank, [36 x i8] } { %struct.stm32_exti_bank { i32 128, i32 132, i32 0, i32 4, i32 8, i32 12, i32 16 }, [36 x i8] zeroinitializer }, align 32
@stm32mp1_exti_b2 = internal constant { %struct.stm32_exti_bank, [36 x i8] } { %struct.stm32_exti_bank { i32 144, i32 148, i32 32, i32 36, i32 40, i32 44, i32 48 }, [36 x i8] zeroinitializer }, align 32
@stm32mp1_exti_b3 = internal constant { %struct.stm32_exti_bank, [36 x i8] } { %struct.stm32_exti_bank { i32 160, i32 164, i32 64, i32 68, i32 72, i32 76, i32 80 }, [36 x i8] zeroinitializer }, align 32
@stm32_exti_h_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_exti_h_mask, ptr null, ptr @stm32_exti_h_unmask, ptr @stm32_exti_h_eoi, ptr @stm32_exti_h_set_affinity, ptr @stm32_exti_h_retrigger, ptr @stm32_exti_h_set_type, ptr @stm32_exti_h_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, [56 x i8] zeroinitializer }, align 32
@stm32_exti_h_chip_direct = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.24, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @irq_chip_set_type_parent, ptr @stm32_exti_h_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stm32-exti-h\00", [19 x i8] zeroinitializer }, align 32
@stm32_exti_h_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s can't get hwspinlock (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_exti_h_set_type\00", [42 x i8] zeroinitializer }, align 32
@stm32_exti_h_set_type._entry_ptr = internal global ptr @stm32_exti_h_set_type._entry, section ".printk_index", align 4
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32-exti-h-direct\00", [44 x i8] zeroinitializer }, align 32
@stm32f4xx_drv_data = internal constant { %struct.stm32_exti_drv_data, [16 x i8] } { %struct.stm32_exti_drv_data { ptr @stm32f4xx_exti_banks, ptr null, i32 1, i32 0 }, [16 x i8] zeroinitializer }, align 32
@irq_exti_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @irq_map_generic_chip, ptr null, ptr null, ptr @stm32_exti_alloc, ptr @stm32_exti_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@stm32_exti_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%pOFn: Could not register interrupt domain.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_exti_init\00", [16 x i8] zeroinitializer }, align 32
@stm32_exti_init._entry_ptr = internal global ptr @stm32_exti_init._entry, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exti\00", [27 x i8] zeroinitializer }, align 32
@stm32_exti_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.3, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%pOF: Could not allocate generic interrupt chip.\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_exti_init._entry_ptr.30 = internal global ptr @stm32_exti_init._entry.28, section ".printk_index", align 4
@stm32_exti_host_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%pOF: Unable to map registers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_exti_host_init\00", [43 x i8] zeroinitializer }, align 32
@stm32_exti_host_init._entry_ptr = internal global ptr @stm32_exti_host_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stm32_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.33, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_irq_set_type\00", [45 x i8] zeroinitializer }, align 32
@stm32_irq_set_type._entry_ptr = internal global ptr @stm32_irq_set_type._entry, section ".printk_index", align 4
@stm32f4xx_exti_banks = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @stm32f4xx_exti_b1], [28 x i8] zeroinitializer }, align 32
@stm32f4xx_exti_b1 = internal constant { %struct.stm32_exti_bank, [36 x i8] } { %struct.stm32_exti_bank { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 -1 }, [36 x i8] zeroinitializer }, align 32
@stm32h7xx_drv_data = internal constant { %struct.stm32_exti_drv_data, [16 x i8] } { %struct.stm32_exti_drv_data { ptr @stm32h7xx_exti_banks, ptr null, i32 3, i32 0 }, [16 x i8] zeroinitializer }, align 32
@stm32h7xx_exti_banks = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @stm32h7xx_exti_b1, ptr @stm32h7xx_exti_b2, ptr @stm32h7xx_exti_b3], [20 x i8] zeroinitializer }, align 32
@stm32h7xx_exti_b1 = internal constant { %struct.stm32_exti_bank, [36 x i8] } { %struct.stm32_exti_bank { i32 128, i32 132, i32 0, i32 4, i32 8, i32 136, i32 -1 }, [36 x i8] zeroinitializer }, align 32
@stm32h7xx_exti_b2 = internal constant { %struct.stm32_exti_bank, [36 x i8] } { %struct.stm32_exti_bank { i32 144, i32 148, i32 32, i32 36, i32 40, i32 152, i32 -1 }, [36 x i8] zeroinitializer }, align 32
@stm32h7xx_exti_b3 = internal constant { %struct.stm32_exti_bank, [36 x i8] } { %struct.stm32_exti_bank { i32 160, i32 164, i32 64, i32 68, i32 72, i32 168, i32 -1 }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"stm32_exti_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 929, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 933, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"stm32_exti_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 923, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 867, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 872, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 879, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 899, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [24 x i8] c"stm32_exti_h_domain_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 826, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 909, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 739, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 748, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"stm32_host_data\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 71, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant [25 x i8] c"stm32_exti_h_syscore_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 599, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"stm32mp1_drv_data\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 217, i32 41 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"stm32mp1_exti_banks\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 163, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"stm32mp1_desc_irq\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 172, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"stm32mp1_exti_b1\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 133, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"stm32mp1_exti_b2\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 143, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"stm32mp1_exti_b3\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 153, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"stm32_exti_h_chip\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 629, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"stm32_exti_h_chip_direct\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 641, i32 24 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 630, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 521, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 642, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"stm32f4xx_drv_data\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 87, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"irq_exti_domain_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 407, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 769, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 775, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 778, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 709, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 318, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"stm32f4xx_exti_banks\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 83, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant [18 x i8] c"stm32f4xx_exti_b1\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 73, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"stm32h7xx_drv_data\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 128, i32 41 }
@___asan_gen_.197 = private unnamed_addr constant [21 x i8] c"stm32h7xx_exti_banks\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 122, i32 38 }
@___asan_gen_.200 = private unnamed_addr constant [18 x i8] c"stm32h7xx_exti_b1\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 92, i32 37 }
@___asan_gen_.203 = private unnamed_addr constant [18 x i8] c"stm32h7xx_exti_b2\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 102, i32 37 }
@___asan_gen_.206 = private unnamed_addr constant [18 x i8] c"stm32h7xx_exti_b3\00", align 1
@___asan_gen_.207 = private constant [36 x i8] c"../drivers/irqchip/irq-stm32-exti.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 112, i32 37 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__exitcall_stm32_exti_arch_exit, ptr @__initcall__kmod_irq_stm32_exti__188_948_stm32_exti_arch_init3, ptr @__of_table_stm32f4_exti, ptr @__of_table_stm32h7_exti, ptr @stm32_exti_arch_exit, ptr @stm32_exti_chip_init._entry, ptr @stm32_exti_chip_init._entry_ptr, ptr @stm32_exti_h_set_type._entry, ptr @stm32_exti_h_set_type._entry_ptr, ptr @stm32_exti_host_init._entry, ptr @stm32_exti_host_init._entry_ptr, ptr @stm32_exti_init._entry, ptr @stm32_exti_init._entry.28, ptr @stm32_exti_init._entry_ptr, ptr @stm32_exti_init._entry_ptr.30, ptr @stm32_exti_probe._entry, ptr @stm32_exti_probe._entry.12, ptr @stm32_exti_probe._entry.15, ptr @stm32_exti_probe._entry.6, ptr @stm32_exti_probe._entry.9, ptr @stm32_exti_probe._entry_ptr, ptr @stm32_exti_probe._entry_ptr.11, ptr @stm32_exti_probe._entry_ptr.14, ptr @stm32_exti_probe._entry_ptr.17, ptr @stm32_exti_probe._entry_ptr.8, ptr @stm32_irq_set_type._entry, ptr @stm32_irq_set_type._entry_ptr, ptr @stm32_exti_driver, ptr @.str, ptr @stm32_exti_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @stm32_exti_h_domain_ops, ptr @.str.16, ptr @stm32_exti_chip_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @stm32_host_data, ptr @stm32_exti_h_syscore_ops, ptr @stm32mp1_drv_data, ptr @stm32mp1_exti_banks, ptr @stm32mp1_desc_irq, ptr @stm32mp1_exti_b1, ptr @stm32mp1_exti_b2, ptr @stm32mp1_exti_b3, ptr @stm32_exti_h_chip, ptr @stm32_exti_h_chip_direct, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @stm32f4xx_drv_data, ptr @irq_exti_domain_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @stm32f4xx_exti_banks, ptr @stm32f4xx_exti_b1, ptr @stm32h7xx_drv_data, ptr @stm32h7xx_exti_banks, ptr @stm32h7xx_exti_b1, ptr @stm32h7xx_exti_b2, ptr @stm32h7xx_exti_b3], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_h_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_chip_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_host_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_h_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_drv_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_exti_banks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_desc_irq to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_exti_b1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_exti_b2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_exti_b3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_h_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_h_chip_direct to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_h_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4xx_drv_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_exti_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_exti_host_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4xx_exti_banks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4xx_exti_b1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7xx_drv_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7xx_exti_banks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7xx_exti_b1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7xx_exti_b2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7xx_exti_b3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_exti_arch_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_exti_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_arch_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_exti_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32f4_exti_of_init(ptr noundef %np, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @stm32_exti_init(ptr noundef nonnull @stm32f4xx_drv_data, ptr noundef %np) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_exti_of_init(ptr noundef %np, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @stm32_exti_init(ptr noundef nonnull @stm32h7xx_drv_data, ptr noundef %np) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_hwspin_lock_get_id(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call2)
  %cmp = icmp eq i32 %call2, -517
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp5 = icmp sgt i32 %call2, -1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %call7 = tail call ptr @devm_hwspin_lock_request_specific(ptr noundef %dev1, i32 noundef %call2) #8
  %hwlock = getelementptr inbounds %struct.stm32_exti_host_data, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %hwlock, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end, label %if.then6.if.end18_crit_edge

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call2)
  %cmp12.not = icmp eq i32 %call2, -2
  br i1 %cmp12.not, label %if.else.if.end18_crit_edge, label %do.end16

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then6.if.end18_crit_edge
  %call19 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %drv_data26 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %drv_data26 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call19, ptr %drv_data26, align 4
  %bank_nr = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %call19, i32 0, i32 2
  %4 = ptrtoint ptr %bank_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_nr, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 68) #8
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !124

devm_kcalloc.exit.thread:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %chips_data114 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %chips_data114 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %chips_data114, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end25
  %9 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %9, i32 noundef 3520) #8
  %chips_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %chips_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %chips_data, align 4
  %tobool29.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool29.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end31

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %devm_kcalloc.exit
  %call32 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call32, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end31
  %12 = ptrtoint ptr %bank_nr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp40119.not = icmp eq i32 %13, 0
  br i1 %cmp40119.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call32 to i32
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %17 = ptrtoint ptr %drv_data26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drv_data26, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %i.0120
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %chips_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chips_data, align 4
  %arrayidx2.i = getelementptr %struct.stm32_exti_chip_data, ptr %24, i32 %i.0120
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %arrayidx2.i, align 4
  %reg_bank.i = getelementptr %struct.stm32_exti_chip_data, ptr %24, i32 %i.0120, i32 1
  %26 = ptrtoint ptr %reg_bank.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %22, ptr %reg_bank.i, align 4
  %rlock.i = getelementptr %struct.stm32_exti_chip_data, ptr %24, i32 %i.0120, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %rlock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @stm32_exti_chip_init.__key, i16 noundef signext 2) #8
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %22, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !125
  %emr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %22, i32 0, i32 1
  %29 = ptrtoint ptr %emr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %emr_ofst.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %16, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #8, !srcloc !125
  %call.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %1, i32 noundef %i.0120) #12
  %inc = add nuw i32 %i.0120, 1
  %31 = ptrtoint ptr %bank_nr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bank_nr, align 4
  %cmp40 = icmp ult i32 %inc, %32
  br i1 %cmp40, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call42 = tail call ptr @of_irq_find_parent(ptr noundef %1) #8
  %tobool.not.i.i.i = icmp eq ptr %call42, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call42, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %33 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %34 = call ptr @memset(ptr %33, i32 0, i32 68)
  %35 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %for.end.if.end49_crit_edge

for.end.if.end49_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

irq_find_host.exit:                               ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #8
  %36 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 68)
  %38 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #8
  %tobool44.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool44.not, label %do.end48, label %irq_find_host.exit.if.end49_crit_edge

irq_find_host.exit.if.end49_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end48:                                         ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end49:                                         ; preds = %irq_find_host.exit.if.end49_crit_edge, %for.end.if.end49_crit_edge
  %d.0.i118 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end49_crit_edge ], [ %call.i.i.i, %for.end.if.end49_crit_edge ]
  %39 = ptrtoint ptr %bank_nr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bank_nr, align 4
  %mul = shl i32 %40, 5
  %tobool.not.i.i = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i118, i32 noundef 0, i32 noundef %mul, ptr noundef %spec.select.i.i, ptr noundef nonnull @stm32_exti_h_domain_ops, ptr noundef nonnull %call.i) #8
  %tobool52.not = icmp eq ptr %call1.i, null
  br i1 %tobool52.not, label %do.end56, label %if.end57

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %call.i110 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @stm32_exti_remove_irq, ptr noundef nonnull %call1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i111 = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i111, label %if.end61, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  call void @irq_domain_remove(ptr noundef nonnull %call1.i) #8
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call.i, ptr @stm32_host_data, align 4
  call void @register_syscore_ops(ptr noundef nonnull @stm32_exti_h_syscore_ops) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %devm_add_action_or_reset.exit, %do.end56, %do.end48, %if.then35, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end24, %do.end16, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then35 ], [ 0, %if.end61 ], [ -12, %do.end56 ], [ -22, %do.end48 ], [ -19, %do.end24 ], [ -22, %do.end ], [ %call2, %do.end16 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call.i110, %devm_add_action_or_reset.exit ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_syscore_ops(ptr noundef nonnull @stm32_exti_h_syscore_ops) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_hwspin_lock_get_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwspin_lock_request_specific(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stm32_exti_chip_init(ptr noundef %h_data, i32 noundef %bank_idx, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %h_data, align 4
  %drv_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %h_data, i32 0, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %bank_idx
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %chips_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %h_data, i32 0, i32 1
  %8 = ptrtoint ptr %chips_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chips_data, align 4
  %arrayidx2 = getelementptr %struct.stm32_exti_chip_data, ptr %9, i32 %bank_idx
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %h_data, ptr %arrayidx2, align 4
  %reg_bank = getelementptr %struct.stm32_exti_chip_data, ptr %9, i32 %bank_idx, i32 1
  %11 = ptrtoint ptr %reg_bank to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %reg_bank, align 4
  %rlock = getelementptr %struct.stm32_exti_chip_data, ptr %9, i32 %bank_idx, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %rlock, ptr noundef nonnull @.str.18, ptr noundef nonnull @stm32_exti_chip_init.__key, i16 noundef signext 2) #8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !125
  %emr_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %emr_ofst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %emr_ofst, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #8, !srcloc !125
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %node, i32 noundef %bank_idx) #12
  ret ptr %arrayidx2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_exti_remove_irq(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_domain_remove(ptr noundef %data) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_domain_alloc(ptr noundef %dm, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %p_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data1 = getelementptr inbounds %struct.irq_domain, ptr %dm, i32 0, i32 3
  %0 = ptrtoint ptr %host_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data1, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %p_fwspec) #8
  %2 = getelementptr inbounds i8, ptr %p_fwspec, i32 20
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  %chips_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %chips_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chips_data, align 4
  %drv_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv_data, align 4
  %desc_irqs.i = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %desc_irqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc_irqs.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %irq_nr.i = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %irq_nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11.not.i = icmp eq i32 %13, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %14 = mul i32 %13, 12
  %15 = add i32 %14, -12
  %uglygep.i = getelementptr i8, ptr %11, i32 %15
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.cond.i.stm32_exti_get_desc.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.stm32_exti_get_desc.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_exti_get_desc.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.stm32_desc_irq, ptr %11, i32 %i.012.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %5)
  %cmp2.i = icmp eq i32 %17, %5
  br i1 %cmp2.i, label %for.body.i.stm32_exti_get_desc.exit_crit_edge, label %for.cond.i

for.body.i.stm32_exti_get_desc.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_exti_get_desc.exit

stm32_exti_get_desc.exit:                         ; preds = %for.body.i.stm32_exti_get_desc.exit_crit_edge, %for.cond.i.stm32_exti_get_desc.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %for.body.i.stm32_exti_get_desc.exit_crit_edge ], [ %uglygep.i, %for.cond.i.stm32_exti_get_desc.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %stm32_exti_get_desc.exit.cleanup_crit_edge, label %if.end

stm32_exti_get_desc.exit.cleanup_crit_edge:       ; preds = %stm32_exti_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %stm32_exti_get_desc.exit
  %div32 = lshr i32 %5, 5
  %arrayidx2 = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %div32
  %chip = getelementptr inbounds %struct.stm32_desc_irq, ptr %retval.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %call3 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %dm, i32 noundef %virq, i32 noundef %5, ptr noundef %19, ptr noundef %arrayidx2) #8
  %irq_parent = getelementptr inbounds %struct.stm32_desc_irq, ptr %retval.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %irq_parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not = icmp eq i32 %21, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.irq_domain, ptr %dm, i32 0, i32 9
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fwnode, align 4
  %26 = ptrtoint ptr %p_fwspec to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %p_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %p_fwspec, i32 0, i32 1
  %27 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %param_count, align 4
  %param7 = getelementptr inbounds %struct.irq_fwspec, ptr %p_fwspec, i32 0, i32 2
  %28 = ptrtoint ptr %param7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %param7, align 4
  %29 = ptrtoint ptr %irq_parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_parent, align 4
  %arrayidx11 = getelementptr inbounds %struct.irq_fwspec, ptr %p_fwspec, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr inbounds %struct.irq_fwspec, ptr %p_fwspec, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %arrayidx13, align 4
  %call14 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %dm, i32 noundef %virq, i32 noundef 1, ptr noundef nonnull %p_fwspec) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %stm32_exti_get_desc.exit.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then5 ], [ -22, %stm32_exti_get_desc.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %p_fwspec) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_suspend() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @stm32_host_data, align 4
  %drv_data7 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %drv_data7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv_data7, align 4
  %bank_nr8 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bank_nr8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bank_nr8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.not = icmp eq i32 %4, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = phi ptr [ %29, %for.body.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %chips_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chips_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chips_data, align 4
  %arrayidx = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010
  %rlock = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rlock) #8
  %wake_active = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 3
  %8 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wake_active, align 4
  %reg_bank.i = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 1
  %10 = ptrtoint ptr %reg_bank.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_bank.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %rtsr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %rtsr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rtsr_ofst.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !126
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %rtsr_cache.i = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 5
  %20 = ptrtoint ptr %rtsr_cache.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rtsr_cache.i, align 4
  %ftsr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %ftsr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ftsr_ofst.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !126
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %ftsr_cache.i = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 6
  %25 = ptrtoint ptr %ftsr_cache.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ftsr_cache.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %11, align 4
  %add.ptr6.i = getelementptr i8, ptr %15, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %26) #8, !srcloc !125
  tail call void @_raw_spin_unlock(ptr noundef %rlock) #8
  %inc = add nuw i32 %i.010, 1
  %29 = load ptr, ptr @stm32_host_data, align 4
  %drv_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drv_data, align 4
  %bank_nr = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %bank_nr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bank_nr, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_exti_h_resume() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @stm32_host_data, align 4
  %drv_data7 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %drv_data7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv_data7, align 4
  %bank_nr8 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bank_nr8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bank_nr8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.not = icmp eq i32 %4, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = phi ptr [ %29, %for.body.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %chips_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chips_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chips_data, align 4
  %arrayidx = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010
  %rlock = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rlock) #8
  %mask_cache = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 4
  %8 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_cache, align 4
  %reg_bank.i = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 1
  %10 = ptrtoint ptr %reg_bank.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_bank.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %rtsr_cache.i = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 5
  %16 = ptrtoint ptr %rtsr_cache.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rtsr_cache.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %rtsr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %rtsr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rtsr_ofst.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !125
  %ftsr_cache.i = getelementptr %struct.stm32_exti_chip_data, ptr %7, i32 %i.010, i32 6
  %21 = ptrtoint ptr %ftsr_cache.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ftsr_cache.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %ftsr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %ftsr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ftsr_ofst.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %23) #8, !srcloc !125
  %26 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %11, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %26) #8, !srcloc !125
  tail call void @_raw_spin_unlock(ptr noundef %rlock) #8
  %inc = add nuw i32 %i.010, 1
  %29 = load ptr, ptr @stm32_host_data, align 4
  %drv_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drv_data, align 4
  %bank_nr = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %bank_nr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bank_nr, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_exti_h_mask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %reg_bank = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_bank, align 4
  %rlock = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rlock) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !126
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %14 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwirq.i, align 4
  %rem.i = and i32 %15, 31
  %shl.i = shl nuw i32 1, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %13, %neg.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #8, !srcloc !125
  %mask_cache = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %mask_cache to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i, ptr %mask_cache, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rlock) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %18 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent_data, align 4
  %chip = getelementptr inbounds %struct.irq_data, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_chip_mask_parent(ptr noundef %d) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_exti_h_unmask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %reg_bank = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_bank, align 4
  %rlock = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rlock) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !126
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %14 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwirq.i, align 4
  %rem.i = and i32 %15, 31
  %shl.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %shl.i, %13
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #8, !srcloc !125
  %mask_cache = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %mask_cache to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %mask_cache, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rlock) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %18 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent_data, align 4
  %chip = getelementptr inbounds %struct.irq_data, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_exti_h_eoi(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %reg_bank = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_bank, align 4
  %rlock = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rlock) #8
  %rpr_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rpr_ofst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rpr_ofst, align 4
  %6 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %12 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq.i, align 4
  %rem.i = and i32 %13, 31
  %shl.i = shl nuw i32 1, %rem.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %add.ptr.i = getelementptr i8, ptr %11, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #8, !srcloc !125
  %fpr_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %fpr_ofst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fpr_ofst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.not = icmp eq i32 %16, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_data.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwirq.i, align 4
  %rem.i15 = and i32 %24, 31
  %shl.i16 = shl nuw i32 1, %rem.i15
  %25 = tail call i32 @llvm.bswap.i32(i32 %shl.i16) #8
  %add.ptr.i17 = getelementptr i8, ptr %22, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %25) #8, !srcloc !125
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rlock) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %26 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent_data, align 4
  %chip = getelementptr inbounds %struct.irq_data, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_chip_eoi_parent(ptr noundef %d) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_set_affinity(ptr noundef %d, ptr noundef %dest, i1 noundef zeroext %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_data, align 4
  %chip = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @irq_chip_set_affinity_parent(ptr noundef %d, ptr noundef %dest, i1 noundef zeroext %force) #8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_retrigger(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %reg_bank = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_bank, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %rem = and i32 %9, 31
  %shl = shl nuw i32 1, %rem
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %swier_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %swier_ofst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %swier_ofst, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #8, !srcloc !125
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %reg_bank = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_bank, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %hwlock1 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %hwlock1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwlock1, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %rlock = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rlock) #8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__hwspin_lock_timeout(ptr noundef nonnull %7, i32 noundef 1000, i32 noundef 4, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then.if.end8_crit_edge, label %do.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call.i) #12
  br label %unlock

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %rtsr_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %rtsr_ofst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rtsr_ofst, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !126
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %ftsr_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %ftsr_ofst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ftsr_ofst, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !126
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %18 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwirq.i, align 4
  %rem.i = and i32 %19, 31
  %shl.i = shl nuw i32 1, %rem.i
  %20 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end8.unspinlock_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
  ]

if.end8.unspinlock_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %unspinlock

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %shl.i, %13
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %17, %neg.i
  br label %if.end18

sw.bb1.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %neg2.i = xor i32 %shl.i, -1
  %and3.i = and i32 %13, %neg2.i
  %or4.i = or i32 %shl.i, %17
  br label %if.end18

sw.bb5.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i = or i32 %shl.i, %13
  %or7.i = or i32 %shl.i, %17
  br label %if.end18

if.end18:                                         ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %rtsr.1.ph = phi i32 [ %or.i, %sw.bb.i ], [ %and3.i, %sw.bb1.i ], [ %or6.i, %sw.bb5.i ]
  %ftsr.0.ph = phi i32 [ %and.i, %sw.bb.i ], [ %or4.i, %sw.bb1.i ], [ %or7.i, %sw.bb5.i ]
  %21 = tail call i32 @llvm.bswap.i32(i32 %rtsr.1.ph)
  %22 = ptrtoint ptr %rtsr_ofst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rtsr_ofst, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %21) #8, !srcloc !125
  %24 = tail call i32 @llvm.bswap.i32(i32 %ftsr.0.ph)
  %25 = ptrtoint ptr %ftsr_ofst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ftsr_ofst, align 4
  %add.ptr22 = getelementptr i8, ptr %9, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %24) #8, !srcloc !125
  br label %unspinlock

unspinlock:                                       ; preds = %if.end18, %if.end8.unspinlock_crit_edge
  %retval.0.i56 = phi i32 [ 0, %if.end18 ], [ -22, %if.end8.unspinlock_crit_edge ]
  br i1 %tobool.not, label %unspinlock.unlock_crit_edge, label %if.then24

unspinlock.unlock_crit_edge:                      ; preds = %unspinlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then24:                                        ; preds = %unspinlock
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__hwspin_unlock(ptr noundef nonnull %7, i32 noundef 4, ptr noundef null) #8
  br label %unlock

unlock:                                           ; preds = %if.then24, %unspinlock.unlock_crit_edge, %do.end
  %err.0 = phi i32 [ %call.i, %do.end ], [ %retval.0.i56, %if.then24 ], [ %retval.0.i56, %unspinlock.unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %rlock) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %rlock = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rlock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wake_active = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wake_active, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %wake_active, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl, -1
  %wake_active1 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %wake_active1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wake_active1, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %wake_active1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %rlock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwspin_lock_timeout(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hwspin_unlock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_exti_init(ptr noundef %drv_data, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %drv_data.i = getelementptr inbounds %struct.stm32_exti_host_data, ptr %call7.i.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %drv_data, ptr %drv_data.i, align 8
  %bank_nr.i = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %drv_data, i32 0, i32 2
  %2 = ptrtoint ptr %bank_nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_nr.i, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 68) #8
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !124

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %chips_data25.i = getelementptr inbounds %struct.stm32_exti_host_data, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %chips_data25.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %chips_data25.i, align 4
  br label %cleanup.sink.split

if.end7.i.i.i:                                    ; preds = %if.end.i
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #14
  %chips_data.i = getelementptr inbounds %struct.stm32_exti_host_data, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %chips_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i.i, ptr %chips_data.i, align 4
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.i.cleanup.sink.split_crit_edge, label %if.end5.i

if.end7.i.i.i.cleanup.sink.split_crit_edge:       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end5.i:                                        ; preds = %if.end7.i.i.i
  %call6.i = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6.i, ptr %call7.i.i.i, align 8
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %node) #12
  %10 = ptrtoint ptr %chips_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chips_data.i, align 4
  tail call void @kfree(ptr noundef %11) #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end5.i
  store ptr %call7.i.i.i, ptr @stm32_host_data, align 4
  %12 = ptrtoint ptr %bank_nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank_nr.i, align 4
  %mul = shl i32 %13, 5
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %mul, i32 noundef %mul, i32 noundef 0, ptr noundef nonnull @irq_exti_domain_ops, ptr noundef null) #8
  %tobool2.not = icmp eq ptr %call1.i, null
  br i1 %tobool2.not, label %do.end, label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %node) #12
  br label %out_unmap

do.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull @handle_edge_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond.preheader, label %do.end18

for.cond.preheader:                               ; preds = %do.end11
  %14 = ptrtoint ptr %bank_nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bank_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp99.not = icmp eq i32 %15, 0
  br i1 %cmp99.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end18:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %node) #12
  tail call void @irq_domain_remove(ptr noundef nonnull %call1.i) #8
  br label %out_unmap

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0100 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_data, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.0100
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call23 = tail call fastcc ptr @stm32_exti_chip_init(ptr noundef nonnull %call7.i.i.i, i32 noundef %i.0100, ptr noundef %node)
  %mul24 = shl i32 %i.0100, 5
  %call25 = tail call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %call1.i, i32 noundef %mul24) #8
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i.i, align 8
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 0, i32 1
  %22 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %reg_base, align 4
  %type = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 2, i32 2
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %type, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 1, i32 0, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @stm32_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 1, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 1, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 1, i32 3
  %27 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @stm32_irq_set_type, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 1, i32 4
  %28 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @irq_gc_set_wake, ptr %irq_set_wake, align 4
  %suspend = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 0, i32 4
  %29 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @stm32_irq_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 0, i32 5
  %30 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @stm32_irq_resume, ptr %resume, align 4
  %wake_enabled = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 0, i32 11
  %31 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %wake_enabled, align 4
  %32 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %19, align 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 2, i32 0, i32 4, i32 1, i32 1
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mask, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %call25, i32 0, i32 14
  %35 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call23, ptr %private, align 4
  %inc = add nuw i32 %i.0100, 1
  %36 = ptrtoint ptr %bank_nr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bank_nr.i, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call42 = tail call i32 @of_irq_count(ptr noundef %node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp44101 = icmp sgt i32 %call42, 0
  br i1 %cmp44101, label %for.end.for.body45_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.for.body45_crit_edge:                     ; preds = %for.end
  br label %for.body45

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.end.for.body45_crit_edge
  %i.1102 = phi i32 [ %inc49, %for.body45.for.body45_crit_edge ], [ 0, %for.end.for.body45_crit_edge ]
  %call46 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef %i.1102) #8
  %call47 = tail call i32 @irq_set_handler_data(i32 noundef %call46, ptr noundef nonnull %call1.i) #8
  tail call void @__irq_set_handler(i32 noundef %call46, ptr noundef nonnull @stm32_irq_handler, i32 noundef 1, ptr noundef null) #8
  %inc49 = add nuw nsw i32 %i.1102, 1
  %exitcond.not = icmp eq i32 %inc49, %call42
  br i1 %exitcond.not, label %for.body45.cleanup_crit_edge, label %for.body45.for.body45_crit_edge

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_unmap:                                        ; preds = %do.end18, %do.end
  %ret.0 = phi i32 [ %call13, %do.end18 ], [ -12, %do.end ]
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @iounmap(ptr noundef %39) #8
  %chips_data = getelementptr inbounds %struct.stm32_exti_host_data, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %chips_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chips_data, align 4
  tail call void @kfree(ptr noundef %41) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_unmap, %do.end.i, %if.end7.i.i.i.cleanup.sink.split_crit_edge, %kcalloc.exit.thread.i
  %retval.0.ph = phi i32 [ %ret.0, %out_unmap ], [ -12, %do.end.i ], [ -12, %if.end7.i.i.i.cleanup.sink.split_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body45.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.body45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %reg_bank = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg_bank to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_bank, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #8
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d, align 4
  %rpr_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %rpr_ofst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rpr_ofst, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %9
  tail call void %11(i32 noundef %7, ptr noundef %add.ptr.i) #8
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %16, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #8, !srcloc !125
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %fpr_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %fpr_ofst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fpr_ofst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.not = icmp eq i32 %18, -1
  br i1 %cmp.not, label %irq_reg_writel.exit.if.end_crit_edge, label %if.then

irq_reg_writel.exit.if.end_crit_edge:             ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %irq_reg_writel.exit
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d, align 4
  %21 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i12 = icmp eq ptr %22, null
  br i1 %tobool.not.i12, label %do.body.i18, label %if.then.i15

if.then.i15:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %reg_base.i13 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %reg_base.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %24, i32 %18
  tail call void %22(i32 noundef %20, ptr noundef %add.ptr.i14) #8
  br label %if.end

do.body.i18:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %reg_base2.i16 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %reg_base2.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base2.i16, align 4
  %add.ptr3.i17 = getelementptr i8, ptr %27, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i17, i32 %25) #8, !srcloc !125
  br label %if.end

if.end:                                           ; preds = %do.body.i18, %if.then.i15, %irq_reg_writel.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %reg_bank = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg_bank to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_bank, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %hwlock1 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %hwlock1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwlock1, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__hwspin_lock_timeout(ptr noundef nonnull %9, i32 noundef 1000, i32 noundef 4, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33, i32 noundef %call.i) #12
  br label %unlock

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %rtsr_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %rtsr_ofst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rtsr_ofst, align 4
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 %11
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call.i35 = tail call i32 %13(ptr noundef %add.ptr3.i) #8
  br label %irq_reg_readl.exit

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !126
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i35, %if.then.i ], [ %17, %if.else.i ]
  %ftsr_ofst = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %ftsr_ofst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ftsr_ofst, align 4
  %20 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i37 = icmp eq ptr %21, null
  %22 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i39 = getelementptr i8, ptr %23, i32 %19
  br i1 %tobool.not.i37, label %if.else.i42, label %if.then.i41

if.then.i41:                                      ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i40 = tail call i32 %21(ptr noundef %add.ptr3.i39) #8
  br label %irq_reg_readl.exit44

if.else.i42:                                      ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i39) #8, !srcloc !126
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  br label %irq_reg_readl.exit44

irq_reg_readl.exit44:                             ; preds = %if.else.i42, %if.then.i41
  %retval.0.i43 = phi i32 [ %call.i40, %if.then.i41 ], [ %25, %if.else.i42 ]
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %26 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwirq.i, align 4
  %rem.i = and i32 %27, 31
  %shl.i = shl nuw i32 1, %rem.i
  %28 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %type, label %irq_reg_readl.exit44.unspinlock_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
  ]

irq_reg_readl.exit44.unspinlock_crit_edge:        ; preds = %irq_reg_readl.exit44
  call void @__sanitizer_cov_trace_pc() #10
  br label %unspinlock

sw.bb.i:                                          ; preds = %irq_reg_readl.exit44
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %shl.i, %retval.0.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %retval.0.i43, %neg.i
  br label %if.end12

sw.bb1.i:                                         ; preds = %irq_reg_readl.exit44
  call void @__sanitizer_cov_trace_pc() #10
  %neg2.i = xor i32 %shl.i, -1
  %and3.i = and i32 %retval.0.i, %neg2.i
  %or4.i = or i32 %shl.i, %retval.0.i43
  br label %if.end12

sw.bb5.i:                                         ; preds = %irq_reg_readl.exit44
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i = or i32 %shl.i, %retval.0.i
  %or7.i = or i32 %shl.i, %retval.0.i43
  br label %if.end12

if.end12:                                         ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %rtsr.1.ph = phi i32 [ %or.i, %sw.bb.i ], [ %and3.i, %sw.bb1.i ], [ %or6.i, %sw.bb5.i ]
  %ftsr.0.ph = phi i32 [ %and.i, %sw.bb.i ], [ %or4.i, %sw.bb1.i ], [ %or7.i, %sw.bb5.i ]
  %29 = ptrtoint ptr %rtsr_ofst to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rtsr_ofst, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i46 = icmp eq ptr %32, null
  br i1 %tobool.not.i46, label %do.body.i, label %if.then.i47

if.then.i47:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %30
  tail call void %32(i32 noundef %rtsr.1.ph, ptr noundef %add.ptr.i) #8
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %rtsr.1.ph) #8
  %36 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i49 = getelementptr i8, ptr %37, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i49, i32 %35) #8, !srcloc !125
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i47
  %38 = ptrtoint ptr %ftsr_ofst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ftsr_ofst, align 4
  %40 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i51 = icmp eq ptr %41, null
  br i1 %tobool.not.i51, label %do.body.i57, label %if.then.i54

if.then.i54:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %43, i32 %39
  tail call void %41(i32 noundef %ftsr.0.ph, ptr noundef %add.ptr.i53) #8
  br label %unspinlock

do.body.i57:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %44 = tail call i32 @llvm.bswap.i32(i32 %ftsr.0.ph) #8
  %45 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i56 = getelementptr i8, ptr %46, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i56, i32 %44) #8, !srcloc !125
  br label %unspinlock

unspinlock:                                       ; preds = %do.body.i57, %if.then.i54, %irq_reg_readl.exit44.unspinlock_crit_edge
  %retval.0.i4571 = phi i32 [ -22, %irq_reg_readl.exit44.unspinlock_crit_edge ], [ 0, %if.then.i54 ], [ 0, %do.body.i57 ]
  br i1 %tobool.not, label %unspinlock.unlock_crit_edge, label %if.then16

unspinlock.unlock_crit_edge:                      ; preds = %unspinlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then16:                                        ; preds = %unspinlock
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__hwspin_unlock(ptr noundef nonnull %9, i32 noundef 4, ptr noundef null) #8
  br label %unlock

unlock:                                           ; preds = %if.then16, %unspinlock.unlock_crit_edge, %do.end
  %err.0 = phi i32 [ %call.i, %do.end ], [ %retval.0.i4571, %if.then16 ], [ %retval.0.i4571, %unspinlock.unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_irq_suspend(ptr noundef %gc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @_raw_spin_lock(ptr noundef %gc) #8
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 12
  %2 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wake_active, align 4
  %reg_bank.i = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg_bank.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_bank.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %rtsr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %rtsr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rtsr_ofst.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !126
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %rtsr_cache.i = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %rtsr_cache.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rtsr_cache.i, align 4
  %ftsr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %ftsr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ftsr_ofst.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !126
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %ftsr_cache.i = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %ftsr_cache.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ftsr_cache.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %20) #8, !srcloc !125
  tail call void @_raw_spin_unlock(ptr noundef %gc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_irq_resume(ptr noundef %gc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @_raw_spin_lock(ptr noundef %gc) #8
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 8
  %2 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask_cache, align 4
  %reg_bank.i = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg_bank.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_bank.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %rtsr_cache.i = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %rtsr_cache.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rtsr_cache.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %rtsr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %rtsr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rtsr_ofst.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #8, !srcloc !125
  %ftsr_cache.i = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %ftsr_cache.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ftsr_cache.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %ftsr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %ftsr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ftsr_ofst.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %17) #8, !srcloc !125
  %20 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %20) #8, !srcloc !125
  tail call void @_raw_spin_unlock(ptr noundef %gc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %gc = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gc, align 4
  %num_chips = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_chips to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_chips, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #8
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pending, align 4, !annotation !129
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %12(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %14(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %16(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp33.not = icmp eq i32 %7, 0
  br i1 %cmp33.not, label %chained_irq_enter.exit.for.end14_crit_edge, label %chained_irq_enter.exit.for.body_crit_edge

chained_irq_enter.exit.for.body_crit_edge:        ; preds = %chained_irq_enter.exit
  br label %for.body

chained_irq_enter.exit.for.end14_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %chained_irq_enter.exit.for.body_crit_edge
  %irq_base.035 = phi i32 [ %add13, %for.inc12.for.body_crit_edge ], [ 0, %chained_irq_enter.exit.for.body_crit_edge ]
  %i.034 = phi i32 [ %inc, %for.inc12.for.body_crit_edge ], [ 0, %chained_irq_enter.exit.for.body_crit_edge ]
  %call3 = call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef %irq_base.035) #8
  %private.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call3, i32 0, i32 14
  %reg_readl.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call3, i32 0, i32 2
  %reg_base2.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call3, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %for.body
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i, align 4
  %reg_bank.i = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %reg_bank.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_bank.i, align 4
  %rpr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %rpr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rpr_ofst.i, align 4
  %23 = ptrtoint ptr %reg_readl.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_readl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  %25 = ptrtoint ptr %reg_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base2.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %26, i32 %22
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 %24(ptr noundef %add.ptr3.i.i) #8
  br label %irq_reg_readl.exit.i

if.else.i.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #8, !srcloc !126
  %28 = call i32 @llvm.bswap.i32(i32 %27) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  br label %irq_reg_readl.exit.i

irq_reg_readl.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %28, %if.else.i.i ]
  %fpr_ofst.i = getelementptr inbounds %struct.stm32_exti_bank, ptr %20, i32 0, i32 6
  %29 = ptrtoint ptr %fpr_ofst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fpr_ofst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.not.i = icmp eq i32 %30, -1
  br i1 %cmp.not.i, label %irq_reg_readl.exit.i.stm32_exti_pending.exit_crit_edge, label %if.then.i

irq_reg_readl.exit.i.stm32_exti_pending.exit_crit_edge: ; preds = %irq_reg_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_exti_pending.exit

if.then.i:                                        ; preds = %irq_reg_readl.exit.i
  %31 = ptrtoint ptr %reg_readl.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_readl.i.i, align 4
  %tobool.not.i9.i = icmp eq ptr %32, null
  %33 = ptrtoint ptr %reg_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base2.i.i, align 4
  %add.ptr3.i11.i = getelementptr i8, ptr %34, i32 %30
  br i1 %tobool.not.i9.i, label %if.else.i14.i, label %if.then.i13.i

if.then.i13.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i12.i = call i32 %32(ptr noundef %add.ptr3.i11.i) #8
  br label %irq_reg_readl.exit16.i

if.else.i14.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i11.i) #8, !srcloc !126
  %36 = call i32 @llvm.bswap.i32(i32 %35) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  br label %irq_reg_readl.exit16.i

irq_reg_readl.exit16.i:                           ; preds = %if.else.i14.i, %if.then.i13.i
  %retval.0.i15.i = phi i32 [ %call.i12.i, %if.then.i13.i ], [ %36, %if.else.i14.i ]
  %or.i = or i32 %retval.0.i15.i, %retval.0.i.i
  br label %stm32_exti_pending.exit

stm32_exti_pending.exit:                          ; preds = %irq_reg_readl.exit16.i, %irq_reg_readl.exit.i.stm32_exti_pending.exit_crit_edge
  %pending.0.i = phi i32 [ %or.i, %irq_reg_readl.exit16.i ], [ %retval.0.i.i, %irq_reg_readl.exit.i.stm32_exti_pending.exit_crit_edge ]
  %37 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %pending.0.i, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.0.i)
  %tobool.not = icmp eq i32 %pending.0.i, 0
  br i1 %tobool.not, label %for.inc12, label %while.body

while.body:                                       ; preds = %stm32_exti_pending.exit
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp731 = icmp slt i32 %call5, 32
  br i1 %cmp731, label %while.body.for.body8_crit_edge, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.body.for.body8_crit_edge:                   ; preds = %while.body
  br label %for.body8

while.cond.backedge:                              ; preds = %for.body8.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %while.body.for.body8_crit_edge
  %n.032 = phi i32 [ %call11, %for.body8.for.body8_crit_edge ], [ %call5, %while.body.for.body8_crit_edge ]
  %add = add i32 %n.032, %irq_base.035
  %call9 = call i32 @generic_handle_domain_irq(ptr noundef %1, i32 noundef %add) #8
  %add10 = add nsw i32 %n.032, 1
  %call11 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef %add10) #8
  %cmp7 = icmp slt i32 %call11, 32
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.while.cond.backedge_crit_edge

for.body8.while.cond.backedge_crit_edge:          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

for.inc12:                                        ; preds = %stm32_exti_pending.exit
  %inc = add nuw i32 %i.034, 1
  %add13 = add i32 %irq_base.035, 32
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc12.for.end14_crit_edge, label %for.inc12.for.body_crit_edge

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc12.for.end14_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

for.end14:                                        ; preds = %for.inc12.for.end14_crit_edge, %chained_irq_enter.exit.for.end14_crit_edge
  %38 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i28 = icmp eq ptr %39, null
  br i1 %tobool.not.i28, label %if.else.i29, label %for.end14.chained_irq_exit.exit_crit_edge

for.end14.chained_irq_exit.exit_crit_edge:        ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i29:                                      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %40 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i29, %for.end14.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %41, %if.else.i29 ], [ %39, %for.end14.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_map_generic_chip(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_exti_alloc(ptr noundef %d, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param, align 4
  %call = tail call i32 @irq_map_generic_chip(ptr noundef %d, i32 noundef %virq, i32 noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_exti_free(ptr noundef %d, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %d, i32 noundef %virq) #8
  tail call void @irq_domain_reset_irq_data(ptr noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !90, !91, !92, !93, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_irq_stm32_exti__188_948_stm32_exti_arch_init3, !1, !"__initcall__kmod_irq_stm32_exti__188_948_stm32_exti_arch_init3", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 948, i32 1}
!2 = !{ptr @__exitcall_stm32_exti_arch_exit, !3, !"__exitcall_stm32_exti_arch_exit", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 949, i32 1}
!4 = !{ptr @__of_table_stm32f4_exti, !5, !"__of_table_stm32f4_exti", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 958, i32 1}
!6 = !{ptr @__of_table_stm32h7_exti, !7, !"__of_table_stm32h7_exti", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 966, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 933, i32 11}
!10 = !{ptr @stm32_exti_driver, !11, !"stm32_exti_driver", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 929, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 867, i32 4}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @stm32_exti_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @stm32_exti_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 872, i32 3}
!22 = !{ptr @stm32_exti_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @stm32_exti_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 879, i32 3}
!26 = !{ptr @stm32_exti_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stm32_exti_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 899, i32 3}
!30 = !{ptr @stm32_exti_probe._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stm32_exti_probe._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 909, i32 3}
!34 = !{ptr @stm32_exti_probe._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @stm32_exti_probe._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @stm32_exti_chip_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 739, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 748, i32 2}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @stm32_exti_chip_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @stm32_exti_chip_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @stm32_exti_h_domain_ops, !45, !"stm32_exti_h_domain_ops", i1 false, i1 false}
!45 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 826, i32 36}
!46 = !{ptr @stm32_host_data, !47, !"stm32_host_data", i1 false, i1 false}
!47 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 71, i32 37}
!48 = !{ptr @stm32_exti_h_syscore_ops, !49, !"stm32_exti_h_syscore_ops", i1 false, i1 false}
!49 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 599, i32 27}
!50 = !{ptr @stm32_exti_ids, !51, !"stm32_exti_ids", i1 false, i1 false}
!51 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 923, i32 34}
!52 = !{ptr @stm32mp1_drv_data, !53, !"stm32mp1_drv_data", i1 false, i1 false}
!53 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 217, i32 41}
!54 = !{ptr @stm32mp1_exti_banks, !55, !"stm32mp1_exti_banks", i1 false, i1 false}
!55 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 163, i32 38}
!56 = !{ptr @stm32mp1_exti_b1, !57, !"stm32mp1_exti_b1", i1 false, i1 false}
!57 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 133, i32 37}
!58 = !{ptr @stm32mp1_exti_b2, !59, !"stm32mp1_exti_b2", i1 false, i1 false}
!59 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 143, i32 37}
!60 = !{ptr @stm32mp1_exti_b3, !61, !"stm32mp1_exti_b3", i1 false, i1 false}
!61 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 153, i32 37}
!62 = !{ptr @stm32mp1_desc_irq, !63, !"stm32mp1_desc_irq", i1 false, i1 false}
!63 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 172, i32 36}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 630, i32 12}
!66 = !{ptr @stm32_exti_h_chip, !67, !"stm32_exti_h_chip", i1 false, i1 false}
!67 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 629, i32 24}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 521, i32 4}
!70 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @stm32_exti_h_set_type._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @stm32_exti_h_set_type._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 642, i32 12}
!75 = !{ptr @stm32_exti_h_chip_direct, !76, !"stm32_exti_h_chip_direct", i1 false, i1 false}
!76 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 641, i32 24}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 769, i32 3}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @stm32_exti_init._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @stm32_exti_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 775, i32 8}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 778, i32 3}
!86 = !{ptr @stm32_exti_init._entry.28, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @stm32_exti_init._entry_ptr.30, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 709, i32 3}
!90 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @stm32_exti_host_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @stm32_exti_host_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @irq_exti_domain_ops, !94, !"irq_exti_domain_ops", i1 false, i1 false}
!94 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 407, i32 36}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 318, i32 4}
!97 = !{ptr @stm32_irq_set_type._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @stm32_irq_set_type._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @stm32f4xx_drv_data, !100, !"stm32f4xx_drv_data", i1 false, i1 false}
!100 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 87, i32 41}
!101 = !{ptr @stm32f4xx_exti_banks, !102, !"stm32f4xx_exti_banks", i1 false, i1 false}
!102 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 83, i32 38}
!103 = !{ptr @stm32f4xx_exti_b1, !104, !"stm32f4xx_exti_b1", i1 false, i1 false}
!104 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 73, i32 37}
!105 = !{ptr @stm32h7xx_drv_data, !106, !"stm32h7xx_drv_data", i1 false, i1 false}
!106 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 128, i32 41}
!107 = !{ptr @stm32h7xx_exti_banks, !108, !"stm32h7xx_exti_banks", i1 false, i1 false}
!108 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 122, i32 38}
!109 = !{ptr @stm32h7xx_exti_b1, !110, !"stm32h7xx_exti_b1", i1 false, i1 false}
!110 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 92, i32 37}
!111 = !{ptr @stm32h7xx_exti_b2, !112, !"stm32h7xx_exti_b2", i1 false, i1 false}
!112 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 102, i32 37}
!113 = !{ptr @stm32h7xx_exti_b3, !114, !"stm32h7xx_exti_b3", i1 false, i1 false}
!114 = !{!"../drivers/irqchip/irq-stm32-exti.c", i32 112, i32 37}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 4248683}
!126 = !{i64 4249101}
!127 = !{i64 2152518725}
!128 = !{i64 2152519595}
!129 = !{!"auto-init"}
