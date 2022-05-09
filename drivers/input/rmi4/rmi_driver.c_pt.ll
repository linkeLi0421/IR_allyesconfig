; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_driver.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rmi_set_attn_data\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_set_attn_data\09\09\09\09"
module asm "\09.long\09__crc_rmi_set_attn_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_set_attn_data:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_set_attn_data\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_set_attn_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rmi_driver_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_driver_suspend\09\09\09\09"
module asm "\09.long\09__crc_rmi_driver_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_driver_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_driver_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_driver_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rmi_driver_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_driver_resume\09\09\09\09"
module asm "\09.long\09__crc_rmi_driver_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_driver_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_driver_resume\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_driver_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.rmi_function_handler = type { %struct.device_driver, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_function_descriptor = type { i16, i16, i16, i16, i8, i8, i8 }
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.pdt_entry = type { i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.rmi_register_descriptor = type { i32, [8 x i32], i8, ptr }
%struct.rmi_register_desc_item = type { i16, i32, i8, [10 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_function = type { %struct.rmi_function_descriptor, ptr, %struct.device, %struct.list_head, i32, [6 x i32], i32, [0 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Freeing function list\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_rmi_set_attn_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_set_attn_data = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_set_attn_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_set_attn_data to i32), ptr @__kstrtab_rmi_set_attn_data, ptr @__kstrtabns_rmi_set_attn_data }, section "___ksymtab_gpl+rmi_set_attn_data", align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: reg: %d reg size: %ld subpackets: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.rmi_read_register_desc = private unnamed_addr constant [23 x i8] c"rmi_read_register_desc\00", align 1
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sending reset\0A\00", [17 x i8] zeroinitializer }, align 32
@rmi_initial_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 815, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Initial reset failed. Code = %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmi_initial_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/rmi4/rmi_driver.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_initial_reset._entry_ptr = internal global ptr @rmi_initial_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rmi_enable_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 896, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to disable irq for wake: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_enable_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_enable_irq._entry_ptr = internal global ptr @rmi_enable_irq._entry, section ".printk_index", align 4
@rmi_disable_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 931, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable irq for wake: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmi_disable_irq\00", [16 x i8] zeroinitializer }, align 32
@rmi_disable_irq._entry_ptr = internal global ptr @rmi_disable_irq._entry, section ".printk_index", align 4
@rmi_driver_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 952, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to suspend functions: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rmi_driver_suspend\00", [45 x i8] zeroinitializer }, align 32
@rmi_driver_suspend._entry_ptr = internal global ptr @rmi_driver_suspend._entry, section ".printk_index", align 4
@__kstrtab_rmi_driver_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_driver_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_driver_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_driver_suspend to i32), ptr @__kstrtab_rmi_driver_suspend, ptr @__kstrtabns_rmi_driver_suspend }, section "___ksymtab_gpl+rmi_driver_suspend", align 4
@rmi_driver_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str.5, i32 968, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmi_driver_resume\00", [46 x i8] zeroinitializer }, align 32
@rmi_driver_resume._entry_ptr = internal global ptr @rmi_driver_resume._entry, section ".printk_index", align 4
@__kstrtab_rmi_driver_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_driver_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_driver_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_driver_resume to i32), ptr @__kstrtab_rmi_driver_resume, ptr @__kstrtabns_rmi_driver_resume }, section "___ksymtab_gpl+rmi_driver_resume", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Counting IRQs.\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.rmi_probe_interrupts = private unnamed_addr constant [21 x i8] c"rmi_probe_interrupts\00", align 1
@rmi_probe_interrupts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.rmi_probe_interrupts, ptr @.str.5, i32 1031, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IRQ counting failed with code %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@rmi_probe_interrupts._entry_ptr = internal global ptr @rmi_probe_interrupts._entry, section ".printk_index", align 4
@rmi_probe_interrupts._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.rmi_probe_interrupts, ptr @.str.5, i32 1036, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Device in bootloader mode.\0A\00", [36 x i8] zeroinitializer }, align 32
@rmi_probe_interrupts._entry_ptr.20 = internal global ptr @rmi_probe_interrupts._entry.18, section ".printk_index", align 4
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@rmi_probe_interrupts._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.rmi_probe_interrupts, ptr @.str.5, i32 1043, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@rmi_probe_interrupts._entry_ptr.23 = internal global ptr @rmi_probe_interrupts._entry.21, section ".printk_index", align 4
@rmi_probe_interrupts._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.rmi_probe_interrupts, ptr @.str.5, i32 1053, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate memory for irq masks.\0A\00", [54 x i8] zeroinitializer }, align 32
@rmi_probe_interrupts._entry_ptr.26 = internal global ptr @rmi_probe_interrupts._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Creating functions.\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.rmi_init_functions = private unnamed_addr constant [19 x i8] c"rmi_init_functions\00", align 1
@rmi_init_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.rmi_init_functions, ptr @.str.5, i32 1076, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Function creation failed with code %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@rmi_init_functions._entry_ptr = internal global ptr @rmi_init_functions._entry, section ".printk_index", align 4
@rmi_init_functions._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.rmi_init_functions, ptr @.str.5, i32 1081, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Missing F01 container!\0A\00", [40 x i8] zeroinitializer }, align 32
@rmi_init_functions._entry_ptr.31 = internal global ptr @rmi_init_functions._entry.29, section ".printk_index", align 4
@rmi_init_functions._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.rmi_init_functions, ptr @.str.5, i32 1091, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Failed to read current IRQ mask.\0A\00", [58 x i8] zeroinitializer }, align 32
@rmi_init_functions._entry_ptr.34 = internal global ptr @rmi_init_functions._entry.32, section ".printk_index", align 4
@rmi_physical_driver = internal global { %struct.rmi_driver, [60 x i8] } { %struct.rmi_driver { %struct.device_driver { ptr @.str.55, ptr @rmi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @rmi_driver_probe, ptr null, ptr @rmi_driver_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rmi_driver_reset_handler, ptr @rmi_driver_clear_irq_bits, ptr @rmi_driver_set_irq_bits, ptr null, ptr @rmi_driver_set_input_params, ptr null }, [60 x i8] zeroinitializer }, align 32
@rmi_register_physical_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: driver register failed, code=%d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rmi_register_physical_driver\00", [35 x i8] zeroinitializer }, align 32
@rmi_register_physical_driver._entry_ptr = internal global ptr @rmi_register_physical_driver._entry, section ".printk_index", align 4
@configure_one_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 92, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Config failed with code %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"configure_one_function\00", [41 x i8] zeroinitializer }, align 32
@configure_one_function._entry_ptr = internal global ptr @configure_one_function._entry, section ".printk_index", align 4
@rmi_process_interrupt_requests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 143, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read irqs, code=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rmi_process_interrupt_requests\00", [33 x i8] zeroinitializer }, align 32
@rmi_process_interrupt_requests._entry_ptr = internal global ptr @rmi_process_interrupt_requests._entry, section ".printk_index", align 4
@rmi_read_pdt_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 468, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Read PDT entry at %#06x failed, code: %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rmi_read_pdt_entry\00", [45 x i8] zeroinitializer }, align 32
@rmi_read_pdt_entry._entry_ptr = internal global ptr @rmi_read_pdt_entry._entry, section ".printk_index", align 4
@suspend_one_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 269, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Suspend failed with code %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"suspend_one_function\00", [43 x i8] zeroinitializer }, align 32
@suspend_one_function._entry_ptr = internal global ptr @suspend_one_function._entry, section ".printk_index", align 4
@resume_one_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 303, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Resume failed with code %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resume_one_function\00", [44 x i8] zeroinitializer }, align 32
@resume_one_function._entry_ptr = internal global ptr @resume_one_function._entry, section ".printk_index", align 4
@rmi_check_bootloader_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 755, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read F34 status: %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rmi_check_bootloader_mode\00", [38 x i8] zeroinitializer }, align 32
@rmi_check_bootloader_mode._entry_ptr = internal global ptr @rmi_check_bootloader_mode._entry, section ".printk_index", align 4
@rmi_check_bootloader_mode._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.5, i32 765, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read F01 status: %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@rmi_check_bootloader_mode._entry_ptr.51 = internal global ptr @rmi_check_bootloader_mode._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Initializing F%02X.\0A\00", [43 x i8] zeroinitializer }, align 32
@rmi_create_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 846, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate memory for F%02X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rmi_create_function\00", [44 x i8] zeroinitializer }, align 32
@rmi_create_function._entry_ptr = internal global ptr @rmi_create_function._entry, section ".printk_index", align 4
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi4_physical\00", [18 x i8] zeroinitializer }, align 32
@rmi_bus_type = external dso_local global %struct.bus_type, align 4
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Starting probe.\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.rmi_driver_probe = private unnamed_addr constant [17 x i8] c"rmi_driver_probe\00", align 1
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Not a physical device.\0A\00", [40 x i8] zeroinitializer }, align 32
@rmi_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.rmi_driver_probe, ptr @.str.5, i32 1161, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"RMI initial reset failed! Continuing in spite of this.\0A\00", [40 x i8] zeroinitializer }, align 32
@rmi_driver_probe._entry_ptr = internal global ptr @rmi_driver_probe._entry, section ".printk_index", align 4
@rmi_driver_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @__func__.rmi_driver_probe, ptr @.str.5, i32 1170, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Could not read PDT properties from %#06x (code %d). Assuming 0x00.\0A\00", [60 x i8] zeroinitializer }, align 32
@rmi_driver_probe._entry_ptr.61 = internal global ptr @rmi_driver_probe._entry.59, section ".printk_index", align 4
@rmi_driver_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->irq_mutex\00", [47 x i8] zeroinitializer }, align 32
@rmi_driver_probe.__key.63 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&data->enabled_mutex\00", [43 x i8] zeroinitializer }, align 32
@rmi_driver_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.rmi_driver_probe, ptr @.str.5, i32 1193, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Failed to allocate input device.\0A\00", [58 x i8] zeroinitializer }, align 32
@rmi_driver_probe._entry_ptr.67 = internal global ptr @rmi_driver_probe._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@rmi_driver_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.rmi_driver_probe, ptr @.str.5, i32 1216, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Failed to register input device.\0A\00", [58 x i8] zeroinitializer }, align 32
@rmi_driver_probe._entry_ptr.71 = internal global ptr @rmi_driver_probe._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"syna,reset-delay-ms\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Synaptics %s\00", [19 x i8] zeroinitializer }, align 32
@rmi_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 233, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register interrupt %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmi_irq_init\00", [19 x i8] zeroinitializer }, align 32
@rmi_irq_init._entry_ptr = internal global ptr @rmi_irq_init._entry, section ".printk_index", align 4
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to process interrupt request: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rmi_driver_reset_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 435, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Not ready to handle reset yet!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rmi_driver_reset_handler\00", [39 x i8] zeroinitializer }, align 32
@rmi_driver_reset_handler._entry_ptr = internal global ptr @rmi_driver_reset_handler._entry, section ".printk_index", align 4
@rmi_driver_reset_handler._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.78, ptr @.str.5, i32 444, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@rmi_driver_reset_handler._entry_ptr.80 = internal global ptr @rmi_driver_reset_handler._entry.79, section ".printk_index", align 4
@reset_one_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.5, i32 73, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reset failed with code %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reset_one_function\00", [45 x i8] zeroinitializer }, align 32
@reset_one_function._entry_ptr = internal global ptr @reset_one_function._entry, section ".printk_index", align 4
@rmi_driver_clear_irq_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to change enabled interrupts!\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rmi_driver_clear_irq_bits\00", [38 x i8] zeroinitializer }, align 32
@rmi_driver_clear_irq_bits._entry_ptr = internal global ptr @rmi_driver_clear_irq_bits._entry, section ".printk_index", align 4
@rmi_driver_set_irq_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.85, ptr @.str.5, i32 382, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_driver_set_irq_bits\00", [40 x i8] zeroinitializer }, align 32
@rmi_driver_set_irq_bits._entry_ptr = internal global ptr @rmi_driver_set_irq_bits._entry, section ".printk_index", align 4
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Synaptics RMI4 Touch Sensor\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 52]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 52]
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 40, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 680, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 811, i32 42 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 814, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 894, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 929, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 951, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 967, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1026, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1031, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1036, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1043, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1053, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1072, i32 31 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1075, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1081, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1090, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c"rmi_physical_driver\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1243, i32 26 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1268, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 91, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 143, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 467, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 268, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 302, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 754, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 764, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 838, i32 31 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 845, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1246, i32 11 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1110, i32 31 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1114, i32 32 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1161, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1169, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1173, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1174, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1192, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1199, i32 7 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1215, i32 5 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 997, i32 6 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 359, i32 10 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 232, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 204, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 434, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 443, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 72, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 412, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 381, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.387 = private constant [35 x i8] c"../drivers/input/rmi4/rmi_driver.c\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 345, i32 16 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__ksymtab_rmi_driver_resume, ptr @__ksymtab_rmi_driver_suspend, ptr @__ksymtab_rmi_set_attn_data, ptr @configure_one_function._entry, ptr @configure_one_function._entry_ptr, ptr @reset_one_function._entry, ptr @reset_one_function._entry_ptr, ptr @resume_one_function._entry, ptr @resume_one_function._entry_ptr, ptr @rmi_check_bootloader_mode._entry, ptr @rmi_check_bootloader_mode._entry.49, ptr @rmi_check_bootloader_mode._entry_ptr, ptr @rmi_check_bootloader_mode._entry_ptr.51, ptr @rmi_create_function._entry, ptr @rmi_create_function._entry_ptr, ptr @rmi_disable_irq._entry, ptr @rmi_disable_irq._entry_ptr, ptr @rmi_driver_clear_irq_bits._entry, ptr @rmi_driver_clear_irq_bits._entry_ptr, ptr @rmi_driver_probe._entry, ptr @rmi_driver_probe._entry.59, ptr @rmi_driver_probe._entry.65, ptr @rmi_driver_probe._entry.69, ptr @rmi_driver_probe._entry_ptr, ptr @rmi_driver_probe._entry_ptr.61, ptr @rmi_driver_probe._entry_ptr.67, ptr @rmi_driver_probe._entry_ptr.71, ptr @rmi_driver_reset_handler._entry, ptr @rmi_driver_reset_handler._entry.79, ptr @rmi_driver_reset_handler._entry_ptr, ptr @rmi_driver_reset_handler._entry_ptr.80, ptr @rmi_driver_resume._entry, ptr @rmi_driver_resume._entry_ptr, ptr @rmi_driver_set_irq_bits._entry, ptr @rmi_driver_set_irq_bits._entry_ptr, ptr @rmi_driver_suspend._entry, ptr @rmi_driver_suspend._entry_ptr, ptr @rmi_enable_irq._entry, ptr @rmi_enable_irq._entry_ptr, ptr @rmi_init_functions._entry, ptr @rmi_init_functions._entry.29, ptr @rmi_init_functions._entry.32, ptr @rmi_init_functions._entry_ptr, ptr @rmi_init_functions._entry_ptr.31, ptr @rmi_init_functions._entry_ptr.34, ptr @rmi_initial_reset._entry, ptr @rmi_initial_reset._entry_ptr, ptr @rmi_irq_init._entry, ptr @rmi_irq_init._entry_ptr, ptr @rmi_probe_interrupts._entry, ptr @rmi_probe_interrupts._entry.18, ptr @rmi_probe_interrupts._entry.21, ptr @rmi_probe_interrupts._entry.24, ptr @rmi_probe_interrupts._entry_ptr, ptr @rmi_probe_interrupts._entry_ptr.20, ptr @rmi_probe_interrupts._entry_ptr.23, ptr @rmi_probe_interrupts._entry_ptr.26, ptr @rmi_process_interrupt_requests._entry, ptr @rmi_process_interrupt_requests._entry_ptr, ptr @rmi_read_pdt_entry._entry, ptr @rmi_read_pdt_entry._entry_ptr, ptr @rmi_register_physical_driver._entry, ptr @rmi_register_physical_driver._entry_ptr, ptr @rmi_unregister_physical_driver, ptr @suspend_one_function._entry, ptr @suspend_one_function._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @rmi_physical_driver, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @rmi_driver_probe.__key, ptr @.str.62, ptr @rmi_driver_probe.__key.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_initial_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_enable_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_disable_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe_interrupts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe_interrupts._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe_interrupts._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe_interrupts._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_init_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_init_functions._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_init_functions._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_physical_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_register_physical_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_one_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_process_interrupt_requests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_read_pdt_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_one_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_one_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_check_bootloader_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_check_bootloader_mode._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_create_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_probe.__key.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_reset_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_reset_handler._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_one_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_clear_irq_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_set_irq_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_free_function_list(ptr noundef %rmi_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %rmi_dev, ptr noundef nonnull @.str) #10
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %cmp.not34 = icmp eq ptr %3, %1
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn3235 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %fn.0 = getelementptr i8, ptr %.pn3235, i32 -944
  %.pn.in = getelementptr inbounds %struct.list_head, ptr %.pn3235, i32 0, i32 1
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn3235) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in, align 4
  %7 = ptrtoint ptr %.pn3235 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn3235, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn3235 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn3235, align 4
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %.pn.in, align 4
  tail call void @rmi_unregister_function(ptr noundef %fn.0) #10
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %irq_memory = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %irq_memory to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_memory, align 4
  tail call void @devm_kfree(ptr noundef %rmi_dev, ptr noundef %14) #10
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %f01_container to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %f01_container, align 4
  %f34_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %f34_container to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %f34_container, align 4
  %17 = call ptr @memset(ptr %irq_memory, i32 0, i32 20)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_unregister_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_set_attn_data(ptr nocapture noundef readonly %rmi_dev, i32 noundef %irq_status, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %size, i32 noundef 2592) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %attn_fifo = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %attn_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attn_fifo, align 4
  %out = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 21, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %sub = sub i32 %5, %7
  %mask = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 21, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp.not = icmp ugt i32 %sub, %9
  br i1 %cmp.not, label %if.end4.cleanup_crit_edge, label %if.then14

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %buf = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 21, i32 1
  %and = and i32 %9, %5
  %arrayidx = getelementptr %struct.rmi4_attn_data, ptr %buf, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %irq_status, ptr %arrayidx, align 4
  %__val.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %11 = ptrtoint ptr %__val.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %__val.sroa.5.0.arrayidx.sroa_idx, align 4
  %__val.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %12 = ptrtoint ptr %__val.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %__val.sroa.7.0.arrayidx.sroa_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !203
  %13 = ptrtoint ptr %attn_fifo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attn_fifo, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %attn_fifo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rmi_find_function(ptr nocapture noundef readonly %rmi_dev, i8 noundef zeroext %number) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %1, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %function_number = getelementptr i8, ptr %.pn, i32 -935
  %3 = ptrtoint ptr %function_number to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %function_number, align 1
  %cmp4 = icmp eq i8 %4, %number
  br i1 %cmp4, label %cleanup.split.loop.exit16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

cleanup.split.loop.exit16:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %entry1.0.le = getelementptr i8, ptr %.pn, i32 -944
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit16, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %entry1.0.le, %cleanup.split.loop.exit16 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_enable_sensor(ptr noundef %rmi_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn19.i = load ptr, ptr %1, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %1
  br i1 %cmp.not20.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %configure_one_function.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %configure_one_function.exit.i.for.body.i_crit_edge ], [ %.pn19.i, %entry.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %.pn21.i, i32 -944
  %tobool.not.i.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not.i.i, label %for.body.i.configure_one_function.exit.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.configure_one_function.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_one_function.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %driver.i.i = getelementptr i8, ptr %.pn21.i, i32 -772
  %3 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.configure_one_function.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.configure_one_function.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_one_function.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %config.i.i = getelementptr inbounds %struct.rmi_function_handler, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %6, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.configure_one_function.exit.i_crit_edge, label %if.then6.i.i

if.end.i.i.configure_one_function.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_one_function.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = tail call i32 %6(ptr noundef nonnull %entry1.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %rmi_driver_process_config_requests.exit, label %if.then6.i.i.configure_one_function.exit.i_crit_edge

if.then6.i.i.configure_one_function.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_one_function.exit.i

configure_one_function.exit.i:                    ; preds = %if.then6.i.i.configure_one_function.exit.i_crit_edge, %if.end.i.i.configure_one_function.exit.i_crit_edge, %lor.lhs.false.i.i.configure_one_function.exit.i_crit_edge, %for.body.i.configure_one_function.exit.i_crit_edge
  %7 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %1
  br i1 %cmp.not.i, label %configure_one_function.exit.i.if.end_crit_edge, label %configure_one_function.exit.i.for.body.i_crit_edge

configure_one_function.exit.i.for.body.i_crit_edge: ; preds = %configure_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

configure_one_function.exit.i.if.end_crit_edge:   ; preds = %configure_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

rmi_driver_process_config_requests.exit:          ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.le.i = getelementptr i8, ptr %.pn21.i, i32 -928
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.le.i, ptr noundef nonnull @.str.37, i32 noundef %call.i.i) #13
  br label %cleanup

if.end:                                           ; preds = %configure_one_function.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call fastcc i32 @rmi_process_interrupt_requests(ptr noundef %rmi_dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rmi_driver_process_config_requests.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i.i, %rmi_driver_process_config_requests.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_process_interrupt_requests(ptr noundef %rmi_dev) unnamed_addr #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data3 = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data3, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f01_container, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_base_addr, align 2
  %add = add i16 %7, 1
  %irq_status = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_status, align 4
  %num_of_irq_regs = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %num_of_irq_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_of_irq_regs, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %12 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_block.i, align 4
  %call.i = tail call i32 %17(ptr noundef %13, i16 noundef zeroext %add, ptr noundef %9, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.39, i32 noundef %call.i) #13
  br label %cleanup

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %irq_mutex = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex, i32 noundef 0) #10
  %irq_status12 = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 8
  %irq_count = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_count, align 4
  %fn_irq_bits = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %fn_irq_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fn_irq_bits, align 4
  %22 = ptrtoint ptr %irq_status12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_status12, align 4
  %call.i58 = tail call i32 @__bitmap_and(ptr noundef %23, ptr noundef %23, ptr noundef %21, i32 noundef %19) #10
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #10
  %24 = ptrtoint ptr %irq_status12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_status12, align 4
  %26 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_count, align 4
  %call18 = tail call i32 @_find_next_bit_be(ptr noundef %25, i32 noundef %27, i32 noundef 0) #10
  %28 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %29)
  %cmp2061 = icmp slt i32 %call18, %29
  br i1 %cmp2061, label %for.body.lr.ph, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %irqdomain = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ %call18, %for.body.lr.ph ], [ %call26, %irq_find_mapping.exit.for.body_crit_edge ]
  %30 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irqdomain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #10
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %irq.i, align 4, !annotation !204
  %call.i59 = call ptr @__irq_resolve_mapping(ptr noundef %31, i32 noundef %i.062, ptr noundef nonnull %irq.i) #10
  %tobool.not.i = icmp eq ptr %call.i59, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i60

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_find_mapping.exit

if.then.i60:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i60, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %34, %if.then.i60 ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #10
  call void @handle_nested_irq(i32 noundef %retval.0.i) #10
  %35 = ptrtoint ptr %irq_status12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_status12, align 4
  %37 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq_count, align 4
  %add25 = add nsw i32 %i.062, 1
  %call26 = call i32 @_find_next_bit_be(ptr noundef %36, i32 noundef %38, i32 noundef %add25) #10
  %39 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_count, align 4
  %cmp20 = icmp slt i32 %call26, %40
  br i1 %cmp20, label %irq_find_mapping.exit.for.body_crit_edge, label %irq_find_mapping.exit.for.end_crit_edge

irq_find_mapping.exit.for.end_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %irq_find_mapping.exit.for.end_crit_edge, %if.end11.for.end_crit_edge
  %input = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 13
  %41 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input, align 4
  %tobool27.not = icmp eq ptr %42, null
  br i1 %tobool27.not, label %for.end.cleanup_crit_edge, label %if.then28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @input_event(ptr noundef nonnull %42, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_scan_pdt(ptr noundef %rmi_dev, ptr noundef %ctx, ptr nocapture noundef readonly %callback) local_unnamed_addr #0 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 1
  %pdt_entry.i = alloca %struct.pdt_entry, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %xport.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %0 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 5
  %1 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 4
  %2 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %query_base_addr.i.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt_entry.i, i32 0, i32 1
  %command_base_addr.i.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt_entry.i, i32 0, i32 2
  %control_base_addr.i.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt_entry.i, i32 0, i32 3
  %data_base_addr.i.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt_entry.i, i32 0, i32 4
  %interrupt_source_count.i.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt_entry.i, i32 0, i32 5
  %function_version.i.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt_entry.i, i32 0, i32 6
  %function_number.i.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt_entry.i, i32 0, i32 7
  br label %for.body.lr.ph.i

for.cond:                                         ; preds = %rmi_scan_pdt_page.exit.for.cond_crit_edge, %rmi_scan_pdt_page.exit.thread40
  %storemerge.i3943 = phi i32 [ 0, %rmi_scan_pdt_page.exit.thread40 ], [ %inc.i, %rmi_scan_pdt_page.exit.for.cond_crit_edge ]
  %inc = add nuw nsw i32 %page.025, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body.lr.ph.i_crit_edge

for.cond.for.body.lr.ph.i_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph.i:                                 ; preds = %for.cond.for.body.lr.ph.i_crit_edge, %entry
  %page.025 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body.lr.ph.i_crit_edge ]
  %empty_pages.024 = phi i32 [ 0, %entry ], [ %storemerge.i3943, %for.cond.for.body.lr.ph.i_crit_edge ]
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %pdt_entry.i) #10
  %7 = call ptr @memset(ptr %pdt_entry.i, i32 255, i32 10)
  %conv.i = shl i32 %page.025, 8
  %8 = trunc i32 %conv.i to i16
  %conv2.i = or i16 %8, 233
  %9 = trunc i32 %conv.i to i16
  %10 = or i16 %9, 5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #10
  %11 = call ptr @memset(ptr %buf.i.i, i32 255, i32 6)
  %12 = ptrtoint ptr %xport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xport.i.i.i, align 8
  %ops.i.i.i16 = getelementptr inbounds %struct.rmi_transport_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i.i16, align 4
  %read_block.i.i.i17 = getelementptr inbounds %struct.rmi_transport_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %read_block.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_block.i.i.i17, align 4
  %call.i.i.i18 = call i32 %17(ptr noundef %13, i16 noundef zeroext %conv2.i, ptr noundef nonnull %buf.i.i, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i18)
  %tobool.not.i.i19 = icmp eq i32 %call.i.i.i18, 0
  br i1 %tobool.not.i.i19, label %for.body.lr.ph.i.if.end.i_crit_edge, label %for.body.lr.ph.i.rmi_read_pdt_entry.exit.i_crit_edge

for.body.lr.ph.i.rmi_read_pdt_entry.exit.i_crit_edge: ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_read_pdt_entry.exit.i

for.body.lr.ph.i.if.end.i_crit_edge:              ; preds = %for.body.lr.ph.i
  br label %if.end.i

for.body.i:                                       ; preds = %for.inc.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #10
  %18 = call ptr @memset(ptr %buf.i.i, i32 255, i32 6)
  %19 = ptrtoint ptr %xport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xport.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i.i, align 4
  %read_block.i.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %read_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_block.i.i.i, align 4
  %call.i.i.i = call i32 %24(ptr noundef %20, i16 noundef zeroext %sub.i, ptr noundef nonnull %buf.i.i, i32 noundef 6) #10
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.rmi_read_pdt_entry.exit.i_crit_edge

for.body.i.rmi_read_pdt_entry.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_read_pdt_entry.exit.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

rmi_read_pdt_entry.exit.i:                        ; preds = %for.body.i.rmi_read_pdt_entry.exit.i_crit_edge, %for.body.lr.ph.i.rmi_read_pdt_entry.exit.i_crit_edge
  %conv763.i.lcssa.in = phi i16 [ %sub.i, %for.body.i.rmi_read_pdt_entry.exit.i_crit_edge ], [ %conv2.i, %for.body.lr.ph.i.rmi_read_pdt_entry.exit.i_crit_edge ]
  %call.i.i.i.lcssa = phi i32 [ %call.i.i.i, %for.body.i.rmi_read_pdt_entry.exit.i_crit_edge ], [ %call.i.i.i18, %for.body.lr.ph.i.rmi_read_pdt_entry.exit.i_crit_edge ]
  %conv763.i.lcssa = zext i16 %conv763.i.lcssa.in to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.41, i32 noundef %conv763.i.lcssa, i32 noundef %call.i.i.i.lcssa) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #10
  br label %rmi_scan_pdt_page.exit.thread

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.lr.ph.i.if.end.i_crit_edge
  %addr.062.i20 = phi i16 [ %sub.i, %for.body.i.if.end.i_crit_edge ], [ %conv2.i, %for.body.lr.ph.i.if.end.i_crit_edge ]
  %25 = and i16 %addr.062.i20, -256
  %26 = ptrtoint ptr %pdt_entry.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %pdt_entry.i, align 2
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf.i.i, align 1
  %29 = ptrtoint ptr %query_base_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %query_base_addr.i.i, align 2
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %4, align 1
  %32 = ptrtoint ptr %command_base_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %command_base_addr.i.i, align 1
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %3, align 1
  %35 = ptrtoint ptr %control_base_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %control_base_addr.i.i, align 2
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %2, align 1
  %38 = ptrtoint ptr %data_base_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %data_base_addr.i.i, align 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 1
  %41 = and i8 %40, 7
  %42 = ptrtoint ptr %interrupt_source_count.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %interrupt_source_count.i.i, align 2
  %43 = lshr i8 %40, 5
  %44 = and i8 %43, 3
  %45 = ptrtoint ptr %function_version.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %function_version.i.i, align 1
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %0, align 1
  %48 = ptrtoint ptr %function_number.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %function_number.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #10
  %49 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %if.end19.i [
    i8 0, label %if.end.i.for.end.i_crit_edge
    i8 -1, label %if.end.i.for.end.i_crit_edge90
  ]

if.end.i.for.end.i_crit_edge90:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end19.i:                                       ; preds = %if.end.i
  %call20.i = call i32 %callback(ptr noundef %rmi_dev, ptr noundef %ctx, ptr noundef nonnull %pdt_entry.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.not.i = icmp eq i32 %call20.i, 0
  br i1 %cmp21.not.i, label %for.inc.i, label %if.end19.i.rmi_scan_pdt_page.exit.thread_crit_edge

if.end19.i.rmi_scan_pdt_page.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_scan_pdt_page.exit.thread

for.inc.i:                                        ; preds = %if.end19.i
  %sub.i = add i16 %addr.062.i20, -6
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %10)
  %cmp.not.i = icmp ult i16 %sub.i, %10
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge90
  %addr.0.lcssa.i = phi i16 [ %sub.i, %for.inc.i.for.end.i_crit_edge ], [ %addr.062.i20, %if.end.i.for.end.i_crit_edge ], [ %addr.062.i20, %if.end.i.for.end.i_crit_edge90 ]
  call void @__sanitizer_cov_trace_cmp2(i16 %addr.0.lcssa.i, i16 %conv2.i)
  %cmp29.i = icmp eq i16 %addr.0.lcssa.i, %conv2.i
  %bootloader_mode.i = getelementptr inbounds %struct.rmi_driver_data, ptr %6, i32 0, i32 4
  %50 = ptrtoint ptr %bootloader_mode.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bootloader_mode.i, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool33.not.i = icmp eq i8 %51, 0
  br i1 %cmp29.i, label %if.end32.i, label %if.end32.i.thread

if.end32.i:                                       ; preds = %for.end.i
  br i1 %tobool33.not.i, label %rmi_scan_pdt_page.exit, label %if.end32.i.rmi_scan_pdt_page.exit.thread_crit_edge

if.end32.i.rmi_scan_pdt_page.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_scan_pdt_page.exit.thread

if.end32.i.thread:                                ; preds = %for.end.i
  br i1 %tobool33.not.i, label %rmi_scan_pdt_page.exit.thread40, label %if.end32.i.thread.rmi_scan_pdt_page.exit.thread_crit_edge

if.end32.i.thread.rmi_scan_pdt_page.exit.thread_crit_edge: ; preds = %if.end32.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_scan_pdt_page.exit.thread

rmi_scan_pdt_page.exit.thread40:                  ; preds = %if.end32.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %pdt_entry.i) #10
  br label %for.cond

rmi_scan_pdt_page.exit.thread:                    ; preds = %if.end32.i.thread.rmi_scan_pdt_page.exit.thread_crit_edge, %if.end32.i.rmi_scan_pdt_page.exit.thread_crit_edge, %if.end19.i.rmi_scan_pdt_page.exit.thread_crit_edge, %rmi_read_pdt_entry.exit.i
  %retval.0.i.ph = phi i32 [ %call.i.i.i.lcssa, %rmi_read_pdt_entry.exit.i ], [ %call20.i, %if.end19.i.rmi_scan_pdt_page.exit.thread_crit_edge ], [ 1, %if.end32.i.rmi_scan_pdt_page.exit.thread_crit_edge ], [ 1, %if.end32.i.thread.rmi_scan_pdt_page.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %pdt_entry.i) #10
  br label %for.end

rmi_scan_pdt_page.exit:                           ; preds = %if.end32.i
  %inc.i = add i32 %empty_pages.024, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp35.i = icmp slt i32 %inc.i, 2
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %pdt_entry.i) #10
  br i1 %cmp35.i, label %rmi_scan_pdt_page.exit.for.cond_crit_edge, label %rmi_scan_pdt_page.exit.for.end_crit_edge

rmi_scan_pdt_page.exit.for.end_crit_edge:         ; preds = %rmi_scan_pdt_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

rmi_scan_pdt_page.exit.for.cond_crit_edge:        ; preds = %rmi_scan_pdt_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %rmi_scan_pdt_page.exit.for.end_crit_edge, %rmi_scan_pdt_page.exit.thread, %for.cond.for.end_crit_edge
  %retval1.1 = phi i32 [ %retval.0.i.ph, %rmi_scan_pdt_page.exit.thread ], [ 0, %for.cond.for.end_crit_edge ], [ 1, %rmi_scan_pdt_page.exit.for.end_crit_edge ]
  %52 = call i32 @llvm.smin.i32(i32 %retval1.1, i32 0)
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_read_register_desc(ptr noundef %d, i16 noundef zeroext %addr, ptr noundef %rdesc) local_unnamed_addr #0 align 64 {
entry:
  %size_presence_reg = alloca i8, align 1
  %buf = alloca [35 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size_presence_reg) #10
  %0 = ptrtoint ptr %size_presence_reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %size_presence_reg, align 1, !annotation !204
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buf) #10
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %d, i32 0, i32 3
  %1 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %6(ptr noundef %2, i16 noundef zeroext %addr, ptr noundef nonnull %size_presence_reg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %size_presence_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %size_presence_reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %8)
  %cmp3 = icmp ugt i8 %8, 35
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %inc = add i16 %addr, 1
  %9 = call ptr @memset(ptr %buf, i32 0, i32 35)
  %conv8 = zext i8 %8 to i32
  %10 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xport.i, align 8
  %ops.i241 = getelementptr inbounds %struct.rmi_transport_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i241 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i241, align 4
  %read_block.i242 = getelementptr inbounds %struct.rmi_transport_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %read_block.i242 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_block.i242, align 4
  %call.i243 = call i32 %15(ptr noundef %11, i16 noundef zeroext %inc, ptr noundef nonnull %buf, i32 noundef %conv8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool10.not = icmp eq i32 %call.i243, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %inc13 = add i16 %addr, 2
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp15 = icmp eq i8 %17, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %19 to i32
  %arrayidx20 = getelementptr inbounds [35 x i8], ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv21, 8
  %or = or i32 %shl, %conv19
  br label %if.end25

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %conv14 = zext i8 %17 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then17
  %storemerge = phi i32 [ %conv14, %if.else ], [ %or, %if.then17 ]
  %presense_offset.0 = phi i32 [ 1, %if.else ], [ 3, %if.then17 ]
  %22 = ptrtoint ptr %rdesc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge, ptr %rdesc, align 4
  %23 = ptrtoint ptr %size_presence_reg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %size_presence_reg, align 1
  %conv26 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %presense_offset.0, i32 %conv26)
  %cmp27259 = icmp ult i32 %presense_offset.0, %conv26
  br i1 %cmp27259, label %for.cond29.preheader.lr.ph, label %if.end25.for.end44_crit_edge

if.end25.for.end44_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.cond29.preheader.lr.ph:                       ; preds = %if.end25
  %presense_map = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 1
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %if.end39.7.for.cond29.preheader_crit_edge, %for.cond29.preheader.lr.ph
  %i.0261 = phi i32 [ %presense_offset.0, %for.cond29.preheader.lr.ph ], [ %inc43, %if.end39.7.for.cond29.preheader_crit_edge ]
  %map_offset.0260 = phi i32 [ 0, %for.cond29.preheader.lr.ph ], [ %inc40.7, %if.end39.7.for.cond29.preheader_crit_edge ]
  %arrayidx33 = getelementptr [35 x i8], ptr %buf, i32 0, i32 %i.0261
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %26 to i32
  %and = and i32 %conv34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %for.cond29.preheader.if.end39_crit_edge, label %if.then37

for.cond29.preheader.if.end39_crit_edge:          ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then37:                                        ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i.i = and i32 %map_offset.0260, 24
  %shl.i.i = shl nuw nsw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %map_offset.0260, 5
  %add.ptr.i.i = getelementptr i32, ptr %presense_map, i32 %div2.i.i
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %28, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %for.cond29.preheader.if.end39_crit_edge
  %and.1 = and i32 %conv34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool36.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool36.not.1, label %if.end39.if.end39.1_crit_edge, label %if.then37.1

if.end39.if.end39.1_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.1

if.then37.1:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %inc40 = and i32 %map_offset.0260, 24
  %rem.i.i.1 = or i32 %inc40, 1
  %shl.i.i.1 = shl nuw i32 1, %rem.i.i.1
  %div2.i.i.1 = lshr i32 %map_offset.0260, 5
  %add.ptr.i.i.1 = getelementptr i32, ptr %presense_map, i32 %div2.i.i.1
  %29 = ptrtoint ptr %add.ptr.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i.1, align 4
  %or.i.i.1 = or i32 %30, %shl.i.i.1
  store i32 %or.i.i.1, ptr %add.ptr.i.i.1, align 4
  br label %if.end39.1

if.end39.1:                                       ; preds = %if.then37.1, %if.end39.if.end39.1_crit_edge
  %and.2 = and i32 %conv34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool36.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool36.not.2, label %if.end39.1.if.end39.2_crit_edge, label %if.then37.2

if.end39.1.if.end39.2_crit_edge:                  ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.2

if.then37.2:                                      ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #12
  %inc40.1 = and i32 %map_offset.0260, 24
  %rem.i.i.2 = or i32 %inc40.1, 2
  %shl.i.i.2 = shl nuw i32 1, %rem.i.i.2
  %div2.i.i.2 = lshr i32 %map_offset.0260, 5
  %add.ptr.i.i.2 = getelementptr i32, ptr %presense_map, i32 %div2.i.i.2
  %31 = ptrtoint ptr %add.ptr.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.2, align 4
  %or.i.i.2 = or i32 %32, %shl.i.i.2
  store i32 %or.i.i.2, ptr %add.ptr.i.i.2, align 4
  br label %if.end39.2

if.end39.2:                                       ; preds = %if.then37.2, %if.end39.1.if.end39.2_crit_edge
  %and.3 = and i32 %conv34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool36.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool36.not.3, label %if.end39.2.if.end39.3_crit_edge, label %if.then37.3

if.end39.2.if.end39.3_crit_edge:                  ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.3

if.then37.3:                                      ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #12
  %inc40.2 = and i32 %map_offset.0260, 24
  %rem.i.i.3 = or i32 %inc40.2, 3
  %shl.i.i.3 = shl nuw i32 1, %rem.i.i.3
  %div2.i.i.3 = lshr i32 %map_offset.0260, 5
  %add.ptr.i.i.3 = getelementptr i32, ptr %presense_map, i32 %div2.i.i.3
  %33 = ptrtoint ptr %add.ptr.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i.3, align 4
  %or.i.i.3 = or i32 %34, %shl.i.i.3
  store i32 %or.i.i.3, ptr %add.ptr.i.i.3, align 4
  br label %if.end39.3

if.end39.3:                                       ; preds = %if.then37.3, %if.end39.2.if.end39.3_crit_edge
  %and.4 = and i32 %conv34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool36.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool36.not.4, label %if.end39.3.if.end39.4_crit_edge, label %if.then37.4

if.end39.3.if.end39.4_crit_edge:                  ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.4

if.then37.4:                                      ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #12
  %inc40.3 = and i32 %map_offset.0260, 24
  %rem.i.i.4 = or i32 %inc40.3, 4
  %shl.i.i.4 = shl nuw i32 1, %rem.i.i.4
  %div2.i.i.4 = lshr i32 %map_offset.0260, 5
  %add.ptr.i.i.4 = getelementptr i32, ptr %presense_map, i32 %div2.i.i.4
  %35 = ptrtoint ptr %add.ptr.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i.4, align 4
  %or.i.i.4 = or i32 %36, %shl.i.i.4
  store i32 %or.i.i.4, ptr %add.ptr.i.i.4, align 4
  br label %if.end39.4

if.end39.4:                                       ; preds = %if.then37.4, %if.end39.3.if.end39.4_crit_edge
  %and.5 = and i32 %conv34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool36.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool36.not.5, label %if.end39.4.if.end39.5_crit_edge, label %if.then37.5

if.end39.4.if.end39.5_crit_edge:                  ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.5

if.then37.5:                                      ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #12
  %inc40.4 = and i32 %map_offset.0260, 24
  %rem.i.i.5 = or i32 %inc40.4, 5
  %shl.i.i.5 = shl nuw i32 1, %rem.i.i.5
  %div2.i.i.5 = lshr i32 %map_offset.0260, 5
  %add.ptr.i.i.5 = getelementptr i32, ptr %presense_map, i32 %div2.i.i.5
  %37 = ptrtoint ptr %add.ptr.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i.5, align 4
  %or.i.i.5 = or i32 %38, %shl.i.i.5
  store i32 %or.i.i.5, ptr %add.ptr.i.i.5, align 4
  br label %if.end39.5

if.end39.5:                                       ; preds = %if.then37.5, %if.end39.4.if.end39.5_crit_edge
  %and.6 = and i32 %conv34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool36.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool36.not.6, label %if.end39.5.if.end39.6_crit_edge, label %if.then37.6

if.end39.5.if.end39.6_crit_edge:                  ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.6

if.then37.6:                                      ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #12
  %inc40.5 = and i32 %map_offset.0260, 24
  %rem.i.i.6 = or i32 %inc40.5, 6
  %shl.i.i.6 = shl nuw i32 1, %rem.i.i.6
  %div2.i.i.6 = lshr i32 %map_offset.0260, 5
  %add.ptr.i.i.6 = getelementptr i32, ptr %presense_map, i32 %div2.i.i.6
  %39 = ptrtoint ptr %add.ptr.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i.6, align 4
  %or.i.i.6 = or i32 %40, %shl.i.i.6
  store i32 %or.i.i.6, ptr %add.ptr.i.i.6, align 4
  br label %if.end39.6

if.end39.6:                                       ; preds = %if.then37.6, %if.end39.5.if.end39.6_crit_edge
  %and.7 = and i32 %conv34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool36.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool36.not.7, label %if.end39.6.if.end39.7_crit_edge, label %if.then37.7

if.end39.6.if.end39.7_crit_edge:                  ; preds = %if.end39.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.7

if.then37.7:                                      ; preds = %if.end39.6
  call void @__sanitizer_cov_trace_pc() #12
  %inc40.6 = and i32 %map_offset.0260, 24
  %rem.i.i.7 = or i32 %inc40.6, 7
  %shl.i.i.7 = shl nuw i32 1, %rem.i.i.7
  %div2.i.i.7 = lshr i32 %map_offset.0260, 5
  %add.ptr.i.i.7 = getelementptr i32, ptr %presense_map, i32 %div2.i.i.7
  %41 = ptrtoint ptr %add.ptr.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i.7, align 4
  %or.i.i.7 = or i32 %42, %shl.i.i.7
  store i32 %or.i.i.7, ptr %add.ptr.i.i.7, align 4
  br label %if.end39.7

if.end39.7:                                       ; preds = %if.then37.7, %if.end39.6.if.end39.7_crit_edge
  %inc40.7 = add nuw nsw i32 %map_offset.0260, 8
  %inc43 = add nuw nsw i32 %i.0261, 1
  %exitcond.not = icmp eq i32 %inc43, %conv26
  br i1 %exitcond.not, label %if.end39.7.for.end44_crit_edge, label %if.end39.7.for.cond29.preheader_crit_edge

if.end39.7.for.cond29.preheader_crit_edge:        ; preds = %if.end39.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond29.preheader

if.end39.7.for.end44_crit_edge:                   ; preds = %if.end39.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.end44:                                        ; preds = %if.end39.7.for.end44_crit_edge, %if.end25.for.end44_crit_edge
  %presense_map45 = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 1
  %call4.i = call i32 @__bitmap_weight(ptr noundef %presense_map45, i32 noundef 256) #10
  %conv48 = trunc i32 %call4.i to i8
  %num_registers = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 2
  %43 = ptrtoint ptr %num_registers to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv48, ptr %num_registers, align 4
  %conv50 = and i32 %call4.i, 255
  %44 = mul nuw nsw i32 %conv50, 52
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %d, i32 noundef %44, i32 noundef 3520) #10
  %registers = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 3
  %45 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call5.i.i, ptr %registers, align 4
  %tobool53.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool53.not, label %for.end44.cleanup_crit_edge, label %if.end8.i.i

for.end44.cleanup_crit_edge:                      ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %for.end44
  %46 = ptrtoint ptr %rdesc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rdesc, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #14
  %tobool58.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool58.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end60

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end60:                                         ; preds = %if.end8.i.i
  %48 = ptrtoint ptr %rdesc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rdesc, align 4
  %50 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xport.i, align 8
  %ops.i246 = getelementptr inbounds %struct.rmi_transport_dev, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %ops.i246 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i246, align 4
  %read_block.i247 = getelementptr inbounds %struct.rmi_transport_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %read_block.i247 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_block.i247, align 4
  %call.i248 = call i32 %55(ptr noundef %51, i16 noundef zeroext %inc13, ptr noundef nonnull %call9.i.i, i32 noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool63.not = icmp eq i32 %call.i248, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.free_struct_buff_crit_edge

if.end60.free_struct_buff_crit_edge:              ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_struct_buff

if.end65:                                         ; preds = %if.end60
  %call68 = call i32 @_find_first_bit_be(ptr noundef %presense_map45, i32 noundef 256) #10
  %56 = ptrtoint ptr %num_registers to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num_registers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp72266.not = icmp eq i8 %57, 0
  br i1 %cmp72266.not, label %if.end65.free_struct_buff_crit_edge, label %if.end65.for.body74_crit_edge

if.end65.for.body74_crit_edge:                    ; preds = %if.end65
  br label %for.body74

if.end65.free_struct_buff_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_struct_buff

for.body74:                                       ; preds = %do.end.for.body74_crit_edge, %if.end65.for.body74_crit_edge
  %i.1269 = phi i32 [ %inc152, %do.end.for.body74_crit_edge ], [ 0, %if.end65.for.body74_crit_edge ]
  %offset.0268 = phi i32 [ %inc132, %do.end.for.body74_crit_edge ], [ 0, %if.end65.for.body74_crit_edge ]
  %reg.0267 = phi i32 [ %call150, %do.end.for.body74_crit_edge ], [ %call68, %if.end65.for.body74_crit_edge ]
  %58 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %registers, align 4
  %arrayidx76 = getelementptr %struct.rmi_register_desc_item, ptr %59, i32 %i.1269
  %arrayidx77 = getelementptr i8, ptr %call9.i.i, i32 %offset.0268
  %60 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %61 to i32
  %inc79 = add i32 %offset.0268, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp80 = icmp eq i8 %61, 0
  br i1 %cmp80, label %if.then82, label %for.body74.if.end90_crit_edge

for.body74.if.end90_crit_edge:                    ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then82:                                        ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx83 = getelementptr i8, ptr %call9.i.i, i32 %inc79
  %62 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %63 to i32
  %add = add i32 %offset.0268, 2
  %arrayidx85 = getelementptr i8, ptr %call9.i.i, i32 %add
  %64 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %65 to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %or88 = or i32 %shl87, %conv84
  %add89 = add i32 %offset.0268, 3
  br label %if.end90

if.end90:                                         ; preds = %if.then82, %for.body74.if.end90_crit_edge
  %offset.1 = phi i32 [ %add89, %if.then82 ], [ %inc79, %for.body74.if.end90_crit_edge ]
  %reg_size.0 = phi i32 [ %or88, %if.then82 ], [ %conv78, %for.body74.if.end90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_size.0)
  %cmp91 = icmp eq i32 %reg_size.0, 0
  br i1 %cmp91, label %if.then93, label %if.end90.if.end112_crit_edge

if.end90.if.end112_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx94 = getelementptr i8, ptr %call9.i.i, i32 %offset.1
  %66 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %67 to i32
  %add96 = add i32 %offset.1, 1
  %arrayidx97 = getelementptr i8, ptr %call9.i.i, i32 %add96
  %68 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %69 to i32
  %shl99 = shl nuw nsw i32 %conv98, 8
  %or100 = or i32 %shl99, %conv95
  %add101 = add i32 %offset.1, 2
  %arrayidx102 = getelementptr i8, ptr %call9.i.i, i32 %add101
  %70 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %71 to i32
  %shl104 = shl nuw nsw i32 %conv103, 16
  %or105 = or i32 %or100, %shl104
  %add106 = add i32 %offset.1, 3
  %arrayidx107 = getelementptr i8, ptr %call9.i.i, i32 %add106
  %72 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %73 to i32
  %shl109 = shl nuw i32 %conv108, 24
  %or110 = or i32 %or105, %shl109
  %add111 = add i32 %offset.1, 4
  br label %if.end112

if.end112:                                        ; preds = %if.then93, %if.end90.if.end112_crit_edge
  %offset.2 = phi i32 [ %add111, %if.then93 ], [ %offset.1, %if.end90.if.end112_crit_edge ]
  %reg_size.1 = phi i32 [ %or110, %if.then93 ], [ %reg_size.0, %if.end90.if.end112_crit_edge ]
  %conv113 = trunc i32 %reg.0267 to i16
  %74 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv113, ptr %arrayidx76, align 4
  %reg_size115 = getelementptr %struct.rmi_register_desc_item, ptr %59, i32 %i.1269, i32 1
  %75 = ptrtoint ptr %reg_size115 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %reg_size.1, ptr %reg_size115, align 4
  %subpacket_map = getelementptr %struct.rmi_register_desc_item, ptr %59, i32 %i.1269, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end127.6.do.body_crit_edge, %if.end112
  %offset.3 = phi i32 [ %offset.2, %if.end112 ], [ %inc132, %if.end127.6.do.body_crit_edge ]
  %map_offset.2 = phi i32 [ 0, %if.end112 ], [ %inc128.6, %if.end127.6.do.body_crit_edge ]
  %arrayidx120 = getelementptr i8, ptr %call9.i.i, i32 %offset.3
  %76 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx120, align 1
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool124.not = icmp eq i8 %78, 0
  br i1 %tobool124.not, label %do.body.if.end127_crit_edge, label %if.then125

do.body.if.end127_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then125:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i.i234 = and i32 %map_offset.2, 31
  %shl.i.i235 = shl nuw i32 1, %rem.i.i234
  %div2.i.i236 = lshr i32 %map_offset.2, 5
  %add.ptr.i.i237 = getelementptr i32, ptr %subpacket_map, i32 %div2.i.i236
  %79 = ptrtoint ptr %add.ptr.i.i237 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i.i237, align 4
  %or.i.i238 = or i32 %80, %shl.i.i235
  store i32 %or.i.i238, ptr %add.ptr.i.i237, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %do.body.if.end127_crit_edge
  %81 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx120, align 1
  %83 = and i8 %82, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool124.not.1 = icmp eq i8 %83, 0
  br i1 %tobool124.not.1, label %if.end127.if.end127.1_crit_edge, label %if.then125.1

if.end127.if.end127.1_crit_edge:                  ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.1

if.then125.1:                                     ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %inc128 = add i32 %map_offset.2, 1
  %rem.i.i234.1 = and i32 %inc128, 31
  %shl.i.i235.1 = shl nuw i32 1, %rem.i.i234.1
  %div2.i.i236.1 = lshr i32 %inc128, 5
  %add.ptr.i.i237.1 = getelementptr i32, ptr %subpacket_map, i32 %div2.i.i236.1
  %84 = ptrtoint ptr %add.ptr.i.i237.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i.i237.1, align 4
  %or.i.i238.1 = or i32 %85, %shl.i.i235.1
  store i32 %or.i.i238.1, ptr %add.ptr.i.i237.1, align 4
  br label %if.end127.1

if.end127.1:                                      ; preds = %if.then125.1, %if.end127.if.end127.1_crit_edge
  %86 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx120, align 1
  %88 = and i8 %87, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool124.not.2 = icmp eq i8 %88, 0
  br i1 %tobool124.not.2, label %if.end127.1.if.end127.2_crit_edge, label %if.then125.2

if.end127.1.if.end127.2_crit_edge:                ; preds = %if.end127.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.2

if.then125.2:                                     ; preds = %if.end127.1
  call void @__sanitizer_cov_trace_pc() #12
  %inc128.1 = add i32 %map_offset.2, 2
  %rem.i.i234.2 = and i32 %inc128.1, 31
  %shl.i.i235.2 = shl nuw i32 1, %rem.i.i234.2
  %div2.i.i236.2 = lshr i32 %inc128.1, 5
  %add.ptr.i.i237.2 = getelementptr i32, ptr %subpacket_map, i32 %div2.i.i236.2
  %89 = ptrtoint ptr %add.ptr.i.i237.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i.i237.2, align 4
  %or.i.i238.2 = or i32 %90, %shl.i.i235.2
  store i32 %or.i.i238.2, ptr %add.ptr.i.i237.2, align 4
  br label %if.end127.2

if.end127.2:                                      ; preds = %if.then125.2, %if.end127.1.if.end127.2_crit_edge
  %91 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx120, align 1
  %93 = and i8 %92, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool124.not.3 = icmp eq i8 %93, 0
  br i1 %tobool124.not.3, label %if.end127.2.if.end127.3_crit_edge, label %if.then125.3

if.end127.2.if.end127.3_crit_edge:                ; preds = %if.end127.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.3

if.then125.3:                                     ; preds = %if.end127.2
  call void @__sanitizer_cov_trace_pc() #12
  %inc128.2 = add i32 %map_offset.2, 3
  %rem.i.i234.3 = and i32 %inc128.2, 31
  %shl.i.i235.3 = shl nuw i32 1, %rem.i.i234.3
  %div2.i.i236.3 = lshr i32 %inc128.2, 5
  %add.ptr.i.i237.3 = getelementptr i32, ptr %subpacket_map, i32 %div2.i.i236.3
  %94 = ptrtoint ptr %add.ptr.i.i237.3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i.i237.3, align 4
  %or.i.i238.3 = or i32 %95, %shl.i.i235.3
  store i32 %or.i.i238.3, ptr %add.ptr.i.i237.3, align 4
  br label %if.end127.3

if.end127.3:                                      ; preds = %if.then125.3, %if.end127.2.if.end127.3_crit_edge
  %96 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx120, align 1
  %98 = and i8 %97, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool124.not.4 = icmp eq i8 %98, 0
  br i1 %tobool124.not.4, label %if.end127.3.if.end127.4_crit_edge, label %if.then125.4

if.end127.3.if.end127.4_crit_edge:                ; preds = %if.end127.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.4

if.then125.4:                                     ; preds = %if.end127.3
  call void @__sanitizer_cov_trace_pc() #12
  %inc128.3 = add i32 %map_offset.2, 4
  %rem.i.i234.4 = and i32 %inc128.3, 31
  %shl.i.i235.4 = shl nuw i32 1, %rem.i.i234.4
  %div2.i.i236.4 = lshr i32 %inc128.3, 5
  %add.ptr.i.i237.4 = getelementptr i32, ptr %subpacket_map, i32 %div2.i.i236.4
  %99 = ptrtoint ptr %add.ptr.i.i237.4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i.i237.4, align 4
  %or.i.i238.4 = or i32 %100, %shl.i.i235.4
  store i32 %or.i.i238.4, ptr %add.ptr.i.i237.4, align 4
  br label %if.end127.4

if.end127.4:                                      ; preds = %if.then125.4, %if.end127.3.if.end127.4_crit_edge
  %101 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx120, align 1
  %103 = and i8 %102, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool124.not.5 = icmp eq i8 %103, 0
  br i1 %tobool124.not.5, label %if.end127.4.if.end127.5_crit_edge, label %if.then125.5

if.end127.4.if.end127.5_crit_edge:                ; preds = %if.end127.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.5

if.then125.5:                                     ; preds = %if.end127.4
  call void @__sanitizer_cov_trace_pc() #12
  %inc128.4 = add i32 %map_offset.2, 5
  %rem.i.i234.5 = and i32 %inc128.4, 31
  %shl.i.i235.5 = shl nuw i32 1, %rem.i.i234.5
  %div2.i.i236.5 = lshr i32 %inc128.4, 5
  %add.ptr.i.i237.5 = getelementptr i32, ptr %subpacket_map, i32 %div2.i.i236.5
  %104 = ptrtoint ptr %add.ptr.i.i237.5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i.i237.5, align 4
  %or.i.i238.5 = or i32 %105, %shl.i.i235.5
  store i32 %or.i.i238.5, ptr %add.ptr.i.i237.5, align 4
  br label %if.end127.5

if.end127.5:                                      ; preds = %if.then125.5, %if.end127.4.if.end127.5_crit_edge
  %106 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx120, align 1
  %108 = and i8 %107, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool124.not.6 = icmp eq i8 %108, 0
  br i1 %tobool124.not.6, label %if.end127.5.if.end127.6_crit_edge, label %if.then125.6

if.end127.5.if.end127.6_crit_edge:                ; preds = %if.end127.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.6

if.then125.6:                                     ; preds = %if.end127.5
  call void @__sanitizer_cov_trace_pc() #12
  %inc128.5 = add i32 %map_offset.2, 6
  %rem.i.i234.6 = and i32 %inc128.5, 31
  %shl.i.i235.6 = shl nuw i32 1, %rem.i.i234.6
  %div2.i.i236.6 = lshr i32 %inc128.5, 5
  %add.ptr.i.i237.6 = getelementptr i32, ptr %subpacket_map, i32 %div2.i.i236.6
  %109 = ptrtoint ptr %add.ptr.i.i237.6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr.i.i237.6, align 4
  %or.i.i238.6 = or i32 %110, %shl.i.i235.6
  store i32 %or.i.i238.6, ptr %add.ptr.i.i237.6, align 4
  %111 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %111)
  %.pr = load i8, ptr %arrayidx120, align 1
  br label %if.end127.6

if.end127.6:                                      ; preds = %if.then125.6, %if.end127.5.if.end127.6_crit_edge
  %112 = phi i8 [ %.pr, %if.then125.6 ], [ %107, %if.end127.5.if.end127.6_crit_edge ]
  %inc128.6 = add i32 %map_offset.2, 7
  %inc132 = add i32 %offset.3, 1
  %tobool136.not = icmp sgt i8 %112, -1
  br i1 %tobool136.not, label %do.end, label %if.end127.6.do.body_crit_edge

if.end127.6.do.body_crit_edge:                    ; preds = %if.end127.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %if.end127.6
  %call4.i239 = call i32 @__bitmap_weight(ptr noundef %subpacket_map, i32 noundef 296) #10
  %conv140 = trunc i32 %call4.i239 to i8
  %num_subpackets = getelementptr %struct.rmi_register_desc_item, ptr %59, i32 %i.1269, i32 2
  %113 = ptrtoint ptr %num_subpackets to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv140, ptr %num_subpackets, align 4
  %114 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx76, align 4
  %conv143 = zext i16 %115 to i32
  %116 = ptrtoint ptr %reg_size115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %reg_size115, align 4
  %conv146 = and i32 %call4.i239, 255
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %d, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rmi_read_register_desc, i32 noundef %conv143, i32 noundef %117, i32 noundef %conv146) #10
  %add149 = add i32 %reg.0267, 1
  %call150 = call i32 @_find_next_bit_be(ptr noundef %presense_map45, i32 noundef 256, i32 noundef %add149) #10
  %inc152 = add nuw nsw i32 %i.1269, 1
  %118 = ptrtoint ptr %num_registers to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %num_registers, align 4
  %conv71 = zext i8 %119 to i32
  %cmp72 = icmp ult i32 %inc152, %conv71
  br i1 %cmp72, label %do.end.for.body74_crit_edge, label %do.end.free_struct_buff_crit_edge

do.end.free_struct_buff_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_struct_buff

do.end.for.body74_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74

free_struct_buff:                                 ; preds = %do.end.free_struct_buff_crit_edge, %if.end65.free_struct_buff_crit_edge, %if.end60.free_struct_buff_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_struct_buff, %if.end8.i.i.cleanup_crit_edge, %for.end44.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i248, %free_struct_buff ], [ %call.i, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call.i243, %if.end6.cleanup_crit_edge ], [ -12, %for.end44.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size_presence_reg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rmi_get_register_desc_item(ptr nocapture noundef readonly %rdesc, i16 noundef zeroext %reg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_registers = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 2
  %0 = ptrtoint ptr %num_registers to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_registers, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp12.not = icmp eq i8 %1, 0
  br i1 %cmp12.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %registers = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 3
  %2 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rmi_register_desc_item, ptr %3, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %reg)
  %cmp5 = icmp eq i16 %5, %reg
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %arrayidx, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_register_desc_calc_size(ptr nocapture noundef readonly %rdesc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_registers = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 2
  %0 = ptrtoint ptr %num_registers to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_registers, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp6.not = icmp eq i8 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %registers = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 3
  %2 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %size.08 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %reg_size = getelementptr %struct.rmi_register_desc_item, ptr %3, i32 %i.07, i32 1
  %4 = ptrtoint ptr %reg_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_size, align 4
  %add = add i32 %5, %size.08
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %size.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_register_desc_calc_reg_offset(ptr nocapture noundef readonly %rdesc, i16 noundef zeroext %reg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_registers = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 2
  %0 = ptrtoint ptr %num_registers to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_registers, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp14.not = icmp eq i8 %1, 0
  br i1 %cmp14.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %registers = getelementptr inbounds %struct.rmi_register_descriptor, ptr %rdesc, i32 0, i32 3
  %2 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rmi_register_desc_item, ptr %3, i32 %i.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %reg)
  %cmp5 = icmp eq i16 %5, %reg
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %inc7 = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc7, %conv
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %i.016, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rmi_register_desc_has_subpacket(ptr noundef %item, i8 noundef zeroext %subpacket) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subpacket_map = getelementptr inbounds %struct.rmi_register_desc_item, ptr %item, i32 0, i32 3
  %conv = zext i8 %subpacket to i32
  %call = tail call i32 @_find_next_bit_be(ptr noundef %subpacket_map, i32 noundef 256, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp = icmp eq i32 %call, %conv
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_initial_reset(ptr noundef %rmi_dev, ptr nocapture readnone %ctx, ptr nocapture noundef readonly %pdt) #0 align 64 {
entry:
  %cmd_buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %function_number = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 7
  %0 = ptrtoint ptr %function_number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %function_number, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %2 = ptrtoint ptr %pdt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pdt, align 2
  br i1 %cmp, label %if.then, label %if.end76

if.then:                                          ; preds = %entry
  %command_base_addr = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 2
  %4 = ptrtoint ptr %command_base_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %command_base_addr, align 1
  %conv3 = zext i8 %5 to i16
  %add = add i16 %3, %conv3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_buf) #10
  %6 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %cmd_buf, align 1
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %7 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xport.i, align 8
  %pdata.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %8, i32 0, i32 4
  %ops = getelementptr inbounds %struct.rmi_transport_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %reset = getelementptr inbounds %struct.rmi_transport_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 %12(ptr noundef %8, i16 noundef zeroext %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %.call10 = select i1 %tobool11.not, i32 1, i32 %call10
  br label %cleanup

if.end13:                                         ; preds = %if.then
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %rmi_dev, ptr noundef nonnull @.str.2) #10
  %13 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.i = call i32 %18(ptr noundef %14, i16 noundef zeroext %add, ptr noundef nonnull %cmd_buf, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.3, i32 noundef %call.i) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  %. = select i1 %tobool19.not, i32 100, i32 %20
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end18
  %__ms.0110 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %., %if.end18 ]
  %dec = add i32 %__ms.0110, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #10
  %tobool72.not = icmp eq i32 %dec, 0
  br i1 %tobool72.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %do.end, %if.then5
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %.call10, %if.then5 ], [ 1, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_buf) #10
  br label %cleanup82

if.end76:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp79 = icmp eq i16 %3, 0
  %cond81 = select i1 %cmp79, i32 0, i32 -19
  br label %cleanup82

cleanup82:                                        ; preds = %if.end76, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %cond81, %if.end76 ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_enable_irq(ptr noundef %rmi_dev, i1 noundef zeroext %clear_wake) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %0 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %irq2 = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %enabled_mutex = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %enabled_mutex, i32 noundef 0) #10
  %enabled = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  tail call void @enable_irq(i32 noundef %5) #10
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %enabled, align 1
  br i1 %clear_wake, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xport.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end13_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %15, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end13_crit_edge, label %if.then7

device_may_wakeup.exit.if.end13_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then7:                                         ; preds = %device_may_wakeup.exit
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then7.if.end13_crit_edge, label %do.end

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rmi_dev, ptr noundef nonnull @.str.8, i32 noundef %call.i) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then7.if.end13_crit_edge, %device_may_wakeup.exit.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %16 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq2, align 4
  %call.i31 = tail call ptr @irq_get_irq_data(i32 noundef %17) #10
  %tobool.not.i32 = icmp eq ptr %call.i31, null
  br i1 %tobool.not.i32, label %if.end13.out_crit_edge, label %irq_get_trigger_type.exit

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

irq_get_trigger_type.exit:                        ; preds = %if.end13
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i31, i32 0, i32 3
  %18 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %irq_get_trigger_type.exit.out_crit_edge, label %if.then17

irq_get_trigger_type.exit.out_crit_edge:          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then17:                                        ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call fastcc i32 @rmi_process_interrupt_requests(ptr noundef %rmi_dev)
  br label %out

out:                                              ; preds = %if.then17, %irq_get_trigger_type.exit.out_crit_edge, %if.end13.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %enabled_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_disable_irq(ptr noundef %rmi_dev, i1 noundef zeroext %enable_wake) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %0 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %irq2 = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %enabled_mutex = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %enabled_mutex, i32 noundef 0) #10
  %enabled = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.out41_crit_edge, label %if.end

entry.out41_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out41

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled, align 1
  tail call void @disable_irq(i32 noundef %5) #10
  br i1 %enable_wake, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xport.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end13_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %15, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end13_crit_edge, label %if.then7

device_may_wakeup.exit.if.end13_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then7:                                         ; preds = %device_may_wakeup.exit
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then7.if.end13_crit_edge, label %do.end

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rmi_dev, ptr noundef nonnull @.str.11, i32 noundef %call.i) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then7.if.end13_crit_edge, %device_may_wakeup.exit.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %attn_fifo = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 21
  %out = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 21, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %attn_fifo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attn_fifo, align 4
  %18 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not60 = icmp eq i32 %17, %19
  br i1 %cmp.not60, label %if.end13.out41_crit_edge, label %if.end40.lr.ph

if.end13.out41_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out41

if.end40.lr.ph:                                   ; preds = %if.end13
  %buf = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 21, i32 1
  %mask = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 21, i32 0, i32 0, i32 2
  br label %if.end40

if.end40:                                         ; preds = %if.end40.if.end40_crit_edge, %if.end40.lr.ph
  %20 = phi i32 [ %19, %if.end40.lr.ph ], [ %29, %if.end40.if.end40_crit_edge ]
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %and = and i32 %22, %20
  %attn_data.sroa.4.0.arrayidx.sroa_idx = getelementptr %struct.rmi4_attn_data, ptr %buf, i32 %and, i32 2
  %23 = ptrtoint ptr %attn_data.sroa.4.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %attn_data.sroa.4.0.copyload = load ptr, ptr %attn_data.sroa.4.0.arrayidx.sroa_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !205
  %24 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %out, align 4
  tail call void @kfree(ptr noundef %attn_data.sroa.4.0.copyload) #10
  %26 = ptrtoint ptr %attn_fifo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %attn_fifo, align 4
  %28 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out, align 4
  %cmp.not = icmp eq i32 %27, %29
  br i1 %cmp.not, label %if.end40.out41_crit_edge, label %if.end40.if.end40_crit_edge

if.end40.if.end40_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end40.out41_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %out41

out41:                                            ; preds = %if.end40.out41_crit_edge, %if.end13.out41_crit_edge, %entry.out41_crit_edge
  tail call void @mutex_unlock(ptr noundef %enabled_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_driver_suspend(ptr noundef %rmi_dev, i1 noundef zeroext %enable_wake) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn19.i = load ptr, ptr %1, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %1
  br i1 %cmp.not20.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %suspend_one_function.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %suspend_one_function.exit.i.for.body.i_crit_edge ], [ %.pn19.i, %entry.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %.pn21.i, i32 -944
  %tobool.not.i.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not.i.i, label %for.body.i.suspend_one_function.exit.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.suspend_one_function.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %suspend_one_function.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %driver.i.i = getelementptr i8, ptr %.pn21.i, i32 -772
  %3 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.suspend_one_function.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.suspend_one_function.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %suspend_one_function.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %suspend.i.i = getelementptr inbounds %struct.rmi_function_handler, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %suspend.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %suspend.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %6, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.suspend_one_function.exit.i_crit_edge, label %if.then6.i.i

if.end.i.i.suspend_one_function.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %suspend_one_function.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = tail call i32 %6(ptr noundef nonnull %entry1.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %if.then6.i.i.suspend_one_function.exit.i_crit_edge

if.then6.i.i.suspend_one_function.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %suspend_one_function.exit.i

suspend_one_function.exit.i:                      ; preds = %if.then6.i.i.suspend_one_function.exit.i_crit_edge, %if.end.i.i.suspend_one_function.exit.i_crit_edge, %lor.lhs.false.i.i.suspend_one_function.exit.i_crit_edge, %for.body.i.suspend_one_function.exit.i_crit_edge
  %7 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %1
  br i1 %cmp.not.i, label %suspend_one_function.exit.i.if.end_crit_edge, label %suspend_one_function.exit.i.for.body.i_crit_edge

suspend_one_function.exit.i.for.body.i_crit_edge: ; preds = %suspend_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

suspend_one_function.exit.i.if.end_crit_edge:     ; preds = %suspend_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.le.i = getelementptr i8, ptr %.pn21.i, i32 -928
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.le.i, ptr noundef nonnull @.str.43, i32 noundef %call.i.i) #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rmi_dev, ptr noundef nonnull @.str.13, i32 noundef %call.i.i) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %suspend_one_function.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i9 = phi i32 [ %call.i.i, %do.end ], [ 0, %entry.if.end_crit_edge ], [ 0, %suspend_one_function.exit.i.if.end_crit_edge ]
  tail call void @rmi_disable_irq(ptr noundef %rmi_dev, i1 noundef zeroext %enable_wake)
  ret i32 %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_driver_resume(ptr noundef %rmi_dev, i1 noundef zeroext %clear_wake) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rmi_enable_irq(ptr noundef %rmi_dev, i1 noundef zeroext %clear_wake)
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn19.i = load ptr, ptr %1, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %1
  br i1 %cmp.not20.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %resume_one_function.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %resume_one_function.exit.i.for.body.i_crit_edge ], [ %.pn19.i, %entry.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %.pn21.i, i32 -944
  %tobool.not.i.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not.i.i, label %for.body.i.resume_one_function.exit.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.resume_one_function.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %resume_one_function.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %driver.i.i = getelementptr i8, ptr %.pn21.i, i32 -772
  %3 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.resume_one_function.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.resume_one_function.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %resume_one_function.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %resume.i.i = getelementptr inbounds %struct.rmi_function_handler, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %resume.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resume.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %6, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.resume_one_function.exit.i_crit_edge, label %if.then6.i.i

if.end.i.i.resume_one_function.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %resume_one_function.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = tail call i32 %6(ptr noundef nonnull %entry1.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %if.then6.i.i.resume_one_function.exit.i_crit_edge

if.then6.i.i.resume_one_function.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %resume_one_function.exit.i

resume_one_function.exit.i:                       ; preds = %if.then6.i.i.resume_one_function.exit.i_crit_edge, %if.end.i.i.resume_one_function.exit.i_crit_edge, %lor.lhs.false.i.i.resume_one_function.exit.i_crit_edge, %for.body.i.resume_one_function.exit.i_crit_edge
  %7 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %1
  br i1 %cmp.not.i, label %resume_one_function.exit.i.if.end_crit_edge, label %resume_one_function.exit.i.for.body.i_crit_edge

resume_one_function.exit.i.for.body.i_crit_edge:  ; preds = %resume_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

resume_one_function.exit.i.if.end_crit_edge:      ; preds = %resume_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.le.i = getelementptr i8, ptr %.pn21.i, i32 -928
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.le.i, ptr noundef nonnull @.str.45, i32 noundef %call.i.i) #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rmi_dev, ptr noundef nonnull @.str.13, i32 noundef %call.i.i) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %resume_one_function.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i9 = phi i32 [ %call.i.i, %do.end ], [ 0, %entry.if.end_crit_edge ], [ 0, %resume_one_function.exit.i.if.end_crit_edge ]
  ret i32 %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_probe_interrupts(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %irq_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  %xport = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %fwnode4 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %fwnode4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwnode4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_count) #10
  %8 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq_count, align 4
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rmi_probe_interrupts) #10
  %bootloader_mode = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %bootloader_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bootloader_mode, align 4
  %call = call i32 @rmi_scan_pdt(ptr noundef %1, ptr noundef nonnull %irq_count, ptr noundef nonnull @rmi_count_irqs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %bootloader_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bootloader_mode, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %do.end10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.19) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %if.end.if.end11_crit_edge
  %12 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_count, align 4
  %call.i = call ptr @__irq_domain_add(ptr noundef %7, i32 noundef %13, i32 noundef %13, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef %data) #10
  %irqdomain = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 14
  %14 = ptrtoint ptr %irqdomain to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %irqdomain, align 4
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_count, align 4
  %irq_count21 = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 6
  %17 = ptrtoint ptr %irq_count21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irq_count21, align 4
  %add = add i32 %16, 7
  %div = sdiv i32 %add, 8
  %num_of_irq_regs = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %num_of_irq_regs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %num_of_irq_regs, align 4
  %sub = add i32 %16, 31
  %19 = lshr i32 %sub, 3
  %mul = and i32 %19, 536870908
  %20 = shl nuw nsw i32 %mul, 2
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %20, i32 noundef 3520) #10
  %irq_memory = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 7
  %21 = ptrtoint ptr %irq_memory to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %irq_memory, align 4
  %tobool28.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool28.not, label %do.end32, label %if.end33

do.end32:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %irq_status = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 8
  %22 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i, ptr %irq_status, align 4
  %add.ptr38 = getelementptr i8, ptr %call5.i.i, i32 %mul
  %fn_irq_bits = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 9
  %23 = ptrtoint ptr %fn_irq_bits to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr38, ptr %fn_irq_bits, align 4
  %mul40 = shl nuw nsw i32 %mul, 1
  %add.ptr41 = getelementptr i8, ptr %call5.i.i, i32 %mul40
  %current_irq_mask = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 10
  %24 = ptrtoint ptr %current_irq_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr41, ptr %current_irq_mask, align 4
  %mul43 = mul nuw nsw i32 %mul, 3
  %add.ptr44 = getelementptr i8, ptr %call5.i.i, i32 %mul43
  %new_irq_mask = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 11
  %25 = ptrtoint ptr %new_irq_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr44, ptr %new_irq_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end32, %do.end18, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %if.end33 ], [ -12, %do.end32 ], [ -12, %do.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_count) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_count_irqs(ptr noundef %rmi_dev, ptr nocapture noundef %ctx, ptr nocapture noundef readonly %pdt) #0 align 64 {
entry:
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_source_count = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 5
  %0 = ptrtoint ptr %interrupt_source_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %interrupt_source_count, align 2
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx, align 4
  %add = add i32 %3, %conv
  store i32 %add, ptr %ctx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #10
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %status.i, align 1, !annotation !204
  %function_number.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 7
  %7 = ptrtoint ptr %function_number.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %function_number.i, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %8, label %entry.rmi_check_bootloader_mode.exit.thread_crit_edge [
    i8 52, label %land.lhs.true.i
    i8 1, label %if.then17.i
  ]

entry.rmi_check_bootloader_mode.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_check_bootloader_mode.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %function_version.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 6
  %10 = ptrtoint ptr %function_version.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %function_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp3.i = icmp ugt i8 %11, 1
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.rmi_check_bootloader_mode.exit.thread_crit_edge

land.lhs.true.i.rmi_check_bootloader_mode.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_check_bootloader_mode.exit.thread

if.then.i:                                        ; preds = %land.lhs.true.i
  %data_base_addr.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 4
  %12 = ptrtoint ptr %data_base_addr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_base_addr.i, align 1
  %conv5.i = zext i8 %13 to i16
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %14 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %19(ptr noundef %15, i16 noundef zeroext %conv5.i, ptr noundef nonnull %status.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.47, i32 noundef %call.i.i) #13
  br label %rmi_check_bootloader_mode.exit

if.end.i:                                         ; preds = %if.then.i
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool10.not.i = icmp sgt i8 %21, -1
  br i1 %tobool10.not.i, label %if.end.i.rmi_check_bootloader_mode.exit.thread_crit_edge, label %if.end.i.rmi_check_bootloader_mode.exit.thread.sink.split_crit_edge

if.end.i.rmi_check_bootloader_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_check_bootloader_mode.exit.thread.sink.split

if.end.i.rmi_check_bootloader_mode.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_check_bootloader_mode.exit.thread

if.then17.i:                                      ; preds = %entry
  %data_base_addr18.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 4
  %22 = ptrtoint ptr %data_base_addr18.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_base_addr18.i, align 1
  %conv19.i = zext i8 %23 to i16
  %xport.i52.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %24 = ptrtoint ptr %xport.i52.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xport.i52.i, align 8
  %ops.i53.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ops.i53.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i53.i, align 4
  %read_block.i54.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %read_block.i54.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_block.i54.i, align 4
  %call.i55.i = call i32 %29(ptr noundef %25, i16 noundef zeroext %conv19.i, ptr noundef nonnull %status.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool21.not.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool21.not.i, label %if.end27.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.50, i32 noundef %call.i55.i) #13
  br label %rmi_check_bootloader_mode.exit

if.end27.i:                                       ; preds = %if.then17.i
  %30 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %status.i, align 1
  %32 = and i8 %31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool30.not.i = icmp eq i8 %32, 0
  br i1 %tobool30.not.i, label %if.end27.i.rmi_check_bootloader_mode.exit.thread_crit_edge, label %if.end27.i.rmi_check_bootloader_mode.exit.thread.sink.split_crit_edge

if.end27.i.rmi_check_bootloader_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_check_bootloader_mode.exit.thread.sink.split

if.end27.i.rmi_check_bootloader_mode.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_check_bootloader_mode.exit.thread

rmi_check_bootloader_mode.exit.thread.sink.split: ; preds = %if.end27.i.rmi_check_bootloader_mode.exit.thread.sink.split_crit_edge, %if.end.i.rmi_check_bootloader_mode.exit.thread.sink.split_crit_edge
  %bootloader_mode32.i = getelementptr inbounds %struct.rmi_driver_data, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %bootloader_mode32.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %bootloader_mode32.i, align 4
  br label %rmi_check_bootloader_mode.exit.thread

rmi_check_bootloader_mode.exit.thread:            ; preds = %rmi_check_bootloader_mode.exit.thread.sink.split, %if.end27.i.rmi_check_bootloader_mode.exit.thread_crit_edge, %if.end.i.rmi_check_bootloader_mode.exit.thread_crit_edge, %land.lhs.true.i.rmi_check_bootloader_mode.exit.thread_crit_edge, %entry.rmi_check_bootloader_mode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #10
  br label %35

rmi_check_bootloader_mode.exit:                   ; preds = %do.end25.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call.i55.i, %do.end25.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #10
  %34 = call i32 @llvm.smin.i32(i32 %retval.0.i, i32 0)
  br label %35

35:                                               ; preds = %rmi_check_bootloader_mode.exit, %rmi_check_bootloader_mode.exit.thread
  %36 = phi i32 [ 0, %rmi_check_bootloader_mode.exit.thread ], [ %34, %rmi_check_bootloader_mode.exit ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_init_functions(ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %irq_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_count) #10
  %2 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %irq_count, align 4
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.rmi_init_functions) #10
  %call = call i32 @rmi_scan_pdt(ptr noundef %1, ptr noundef nonnull %irq_count, ptr noundef nonnull @rmi_create_function)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %call) #13
  br label %err_destroy_functions

if.end:                                           ; preds = %entry
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f01_container, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #13
  br label %err_destroy_functions

if.end8:                                          ; preds = %if.end
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %control_base_addr, align 4
  %add = add i16 %6, 1
  %current_irq_mask = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 10
  %7 = ptrtoint ptr %current_irq_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_irq_mask, align 4
  %num_of_irq_regs = getelementptr inbounds %struct.rmi_driver_data, ptr %data, i32 0, i32 5
  %9 = ptrtoint ptr %num_of_irq_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_of_irq_regs, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %16(ptr noundef %12, i16 noundef zeroext %add, ptr noundef %8, i32 noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %do.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.rmi_init_functions) #13
  br label %err_destroy_functions

err_destroy_functions:                            ; preds = %do.end17, %do.end7, %do.end
  %retval3.0 = phi i32 [ %call, %do.end ], [ %call.i, %do.end17 ], [ -22, %do.end7 ]
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %1, ptr noundef nonnull @.str) #10
  %prev.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %cmp.not34.i = icmp eq ptr %20, %18
  br i1 %cmp.not34.i, label %err_destroy_functions.rmi_free_function_list.exit_crit_edge, label %err_destroy_functions.for.body.i_crit_edge

err_destroy_functions.for.body.i_crit_edge:       ; preds = %err_destroy_functions
  br label %for.body.i

err_destroy_functions.rmi_free_function_list.exit_crit_edge: ; preds = %err_destroy_functions
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_free_function_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %err_destroy_functions.for.body.i_crit_edge
  %.pn3235.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %20, %err_destroy_functions.for.body.i_crit_edge ]
  %fn.0.i = getelementptr i8, ptr %.pn3235.i, i32 -944
  %.pn.in.i = getelementptr inbounds %struct.list_head, ptr %.pn3235.i, i32 0, i32 1
  %21 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn3235.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in.i, align 4
  %24 = ptrtoint ptr %.pn3235.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn3235.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %.pn3235.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn3235.i, align 4
  %29 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %.pn.in.i, align 4
  call void @rmi_unregister_function(ptr noundef %fn.0.i) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %18
  br i1 %cmp.not.i, label %list_del.exit.i.rmi_free_function_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.rmi_free_function_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_free_function_list.exit

rmi_free_function_list.exit:                      ; preds = %list_del.exit.i.rmi_free_function_list.exit_crit_edge, %err_destroy_functions.rmi_free_function_list.exit_crit_edge
  %irq_memory.i = getelementptr inbounds %struct.rmi_driver_data, ptr %18, i32 0, i32 7
  %30 = ptrtoint ptr %irq_memory.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_memory.i, align 4
  call void @devm_kfree(ptr noundef %1, ptr noundef %31) #10
  %f01_container.i = getelementptr inbounds %struct.rmi_driver_data, ptr %18, i32 0, i32 2
  %32 = ptrtoint ptr %f01_container.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %f01_container.i, align 4
  %f34_container.i = getelementptr inbounds %struct.rmi_driver_data, ptr %18, i32 0, i32 3
  %33 = ptrtoint ptr %f34_container.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %f34_container.i, align 4
  %34 = call ptr @memset(ptr %irq_memory.i, i32 0, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %rmi_free_function_list.exit, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval3.0, %rmi_free_function_list.exit ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_count) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_create_function(ptr noundef %rmi_dev, ptr nocapture noundef %ctx, ptr nocapture noundef readonly %pdt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %function_number = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 7
  %2 = ptrtoint ptr %function_number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %function_number, align 2
  %conv = zext i8 %3 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %rmi_dev, ptr noundef nonnull @.str.52, i32 noundef %conv) #10
  %irq_count = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_count, align 4
  %sub = add i32 %5, 31
  %6 = lshr i32 %sub, 3
  %mul = and i32 %6, 536870908
  %add2 = add nuw nsw i32 %mul, 984
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %function_number to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %function_number, align 2
  %conv5 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.53, i32 noundef %conv5) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %node = getelementptr inbounds %struct.rmi_function, ptr %call9.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node, ptr %node, align 16
  %prev.i = getelementptr inbounds %struct.rmi_function, ptr %call9.i.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node, ptr %prev.i, align 4
  %query_base_addr.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 1
  %11 = ptrtoint ptr %query_base_addr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %query_base_addr.i, align 2
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %pdt to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pdt, align 2
  %add.i = add i16 %14, %conv.i
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %add.i, ptr %call9.i.i, align 128
  %command_base_addr.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 2
  %16 = ptrtoint ptr %command_base_addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %command_base_addr.i, align 1
  %conv4.i = zext i8 %17 to i16
  %add7.i = add i16 %14, %conv4.i
  %command_base_addr9.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %call9.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %command_base_addr9.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %add7.i, ptr %command_base_addr9.i, align 2
  %control_base_addr.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 3
  %19 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %control_base_addr.i, align 2
  %conv10.i = zext i8 %20 to i16
  %add13.i = add i16 %14, %conv10.i
  %control_base_addr15.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %call9.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %control_base_addr15.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %add13.i, ptr %control_base_addr15.i, align 4
  %data_base_addr.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 4
  %22 = ptrtoint ptr %data_base_addr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_base_addr.i, align 1
  %conv16.i = zext i8 %23 to i16
  %add19.i = add i16 %14, %conv16.i
  %data_base_addr21.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %call9.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %data_base_addr21.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %add19.i, ptr %data_base_addr21.i, align 2
  %25 = ptrtoint ptr %function_number to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %function_number, align 2
  %function_number22.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %call9.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %function_number22.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %function_number22.i, align 1
  %interrupt_source_count.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 5
  %28 = ptrtoint ptr %interrupt_source_count.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %interrupt_source_count.i, align 2
  %interrupt_source_count23.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %call9.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %interrupt_source_count23.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %interrupt_source_count23.i, align 8
  %function_version.i = getelementptr inbounds %struct.pdt_entry, ptr %pdt, i32 0, i32 6
  %31 = ptrtoint ptr %function_version.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %function_version.i, align 1
  %function_version24.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %call9.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %function_version24.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %function_version24.i, align 2
  %rmi_dev6 = getelementptr inbounds %struct.rmi_function, ptr %call9.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %rmi_dev6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rmi_dev, ptr %rmi_dev6, align 4
  %conv7 = zext i8 %29 to i32
  %num_of_irqs = getelementptr inbounds %struct.rmi_function, ptr %call9.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %num_of_irqs to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv7, ptr %num_of_irqs, align 8
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctx, align 4
  %irq_pos = getelementptr inbounds %struct.rmi_function, ptr %call9.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %irq_pos to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %irq_pos, align 4
  %add9 = add i32 %37, %conv7
  store i32 %add9, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp67.not = icmp eq i8 %29, 0
  br i1 %cmp67.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %irq_mask = getelementptr inbounds %struct.rmi_function, ptr %call9.i.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %39 = ptrtoint ptr %irq_pos to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_pos, align 4
  %add13 = add i32 %40, %i.068
  tail call void @_set_bit(i32 noundef %add13, ptr noundef %irq_mask) #10
  %inc = add nuw i32 %i.068, 1
  %41 = ptrtoint ptr %num_of_irqs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_of_irqs, align 8
  %cmp = icmp ult i32 %inc, %42
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call14 = tail call i32 @rmi_register_function(ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %for.end
  %43 = ptrtoint ptr %function_number to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %function_number, align 2
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %44, label %if.end17.if.end29_crit_edge [
    i8 1, label %if.then22
    i8 52, label %if.then27
  ]

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  br label %if.end29.sink.split

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %f34_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 3
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.then27, %if.then22
  %f34_container.sink = phi ptr [ %f34_container, %if.then27 ], [ %f01_container, %if.then22 ]
  %46 = ptrtoint ptr %f34_container.sink to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i, ptr %f34_container.sink, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.end17.if.end29_crit_edge
  %prev.i65 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i65, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %48, ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i66, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i66:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %node, ptr %prev.i65, align 4
  %50 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %1, ptr %node, align 16
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %node, ptr %48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i66, %if.end29.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call14, %for.end.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %if.end.i.i66 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rmi_is_physical_driver(ptr noundef readnone %drv) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %drv, @rmi_physical_driver
  ret i1 %cmp
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_register_physical_driver() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef nonnull @rmi_physical_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_unregister_physical_driver() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef nonnull @rmi_physical_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_register_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.rmi_driver_probe) #10
  %call = tail call zeroext i1 @rmi_is_physical_device(ptr noundef %dev) #10
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %dev, ptr noundef nonnull @.str.57) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %driver5 = getelementptr inbounds %struct.rmi_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %driver5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver5, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xport.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then8

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then8:                                         ; preds = %if.end
  %pdata.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %4, i32 0, i32 4
  %call.i = tail call i32 @rmi_of_property_read_u32(ptr noundef %6, ptr noundef %pdata.i, ptr noundef nonnull @.str.72, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.then8.if.end15_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %call.i164 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 472, i32 noundef 3520) #10
  %tobool17.not = icmp eq ptr %call.i164, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %9 = ptrtoint ptr %call.i164 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call.i164, ptr %call.i164, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i164, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i164, ptr %prev.i, align 4
  %rmi_dev20 = getelementptr inbounds %struct.rmi_driver_data, ptr %call.i164, i32 0, i32 1
  %11 = ptrtoint ptr %rmi_dev20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %rmi_dev20, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i164, ptr %driver_data.i, align 4
  %call22 = tail call i32 @rmi_scan_pdt(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @rmi_initial_reset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.end, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.58) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.end19.if.end24_crit_edge
  %pdt_props = getelementptr inbounds %struct.rmi_driver_data, ptr %call.i164, i32 0, i32 15
  %13 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_block.i, align 4
  %call.i166 = tail call i32 %18(ptr noundef %14, i16 noundef zeroext 239, ptr noundef %pdt_props, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp26 = icmp slt i32 %call.i166, 0
  br i1 %cmp26, label %do.end30, label %if.end24.do.body32_crit_edge

if.end24.do.body32_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef 239, i32 noundef %call.i166) #13
  br label %do.body32

do.body32:                                        ; preds = %do.end30, %if.end24.do.body32_crit_edge
  %irq_mutex = getelementptr inbounds %struct.rmi_driver_data, ptr %call.i164, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %irq_mutex, ptr noundef nonnull @.str.62, ptr noundef nonnull @rmi_driver_probe.__key) #10
  %enabled_mutex = getelementptr inbounds %struct.rmi_driver_data, ptr %call.i164, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %enabled_mutex, ptr noundef nonnull @.str.64, ptr noundef nonnull @rmi_driver_probe.__key.63) #10
  %call38 = tail call i32 @rmi_probe_interrupts(ptr noundef nonnull %call.i164)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %do.body32.cleanup_crit_edge

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %do.body32
  %19 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xport.i, align 8
  %input = getelementptr inbounds %struct.rmi_transport_dev, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input, align 4
  %tobool43.not = icmp eq ptr %22, null
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %input47 = getelementptr inbounds %struct.rmi_driver_data, ptr %call.i164, i32 0, i32 13
  %23 = ptrtoint ptr %input47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %input47, align 4
  br label %if.end62

if.else:                                          ; preds = %if.end41
  %call48 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #10
  %input49 = getelementptr inbounds %struct.rmi_driver_data, ptr %call.i164, i32 0, i32 13
  %24 = ptrtoint ptr %input49 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call48, ptr %input49, align 4
  %tobool51.not = icmp eq ptr %call48, null
  br i1 %tobool51.not, label %do.end55, label %if.end56

do.end55:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.rmi_driver_probe) #13
  br label %cleanup

if.end56:                                         ; preds = %if.else
  %25 = ptrtoint ptr %call48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.86, ptr %call48, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 3
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1739, ptr %vendor.i, align 2
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 29, ptr %id.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end56.dev_name.exit_crit_edge

if.end56.dev_name.exit_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end56.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.end.i ], [ %29, %if.end56.dev_name.exit_crit_edge ]
  %call60 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.68, ptr noundef %retval.0.i) #10
  %32 = ptrtoint ptr %input49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input49, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call60, ptr %phys, align 4
  br label %if.end62

if.end62:                                         ; preds = %dev_name.exit, %if.then44
  %call63 = tail call i32 @rmi_init_functions(ptr noundef nonnull %call.i164)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %call67 = tail call i32 @rmi_f34_create_sysfs(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %input71 = getelementptr inbounds %struct.rmi_driver_data, ptr %call.i164, i32 0, i32 13
  %35 = ptrtoint ptr %input71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input71, align 4
  %tobool72.not = icmp eq ptr %36, null
  br i1 %tobool72.not, label %if.end70.if.end88_crit_edge, label %if.then73

if.end70.if.end88_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then73:                                        ; preds = %if.end70
  tail call fastcc void @rmi_driver_set_input_name(ptr noundef %dev, ptr noundef nonnull %36)
  %37 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xport.i, align 8
  %input76 = getelementptr inbounds %struct.rmi_transport_dev, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %input76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input76, align 4
  %tobool77.not = icmp eq ptr %40, null
  br i1 %tobool77.not, label %if.then78, label %if.then73.if.end88_crit_edge

if.then73.if.end88_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then78:                                        ; preds = %if.then73
  %41 = ptrtoint ptr %input71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input71, align 4
  %call80 = tail call i32 @input_register_device(ptr noundef %42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then78.if.end88_crit_edge, label %do.end85

if.then78.if.end88_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

do.end85:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.rmi_driver_probe) #13
  br label %err_destroy_functions

if.end88:                                         ; preds = %if.then78.if.end88_crit_edge, %if.then73.if.end88_crit_edge, %if.end70.if.end88_crit_edge
  %call89 = tail call fastcc i32 @rmi_irq_init(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end88.err_destroy_functions_crit_edge, label %if.end92

if.end88.err_destroy_functions_crit_edge:         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_destroy_functions

if.end92:                                         ; preds = %if.end88
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %call.i164, i32 0, i32 2
  %43 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %f01_container, align 4
  %driver94 = getelementptr inbounds %struct.rmi_function, ptr %44, i32 0, i32 2, i32 6
  %45 = ptrtoint ptr %driver94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver94, align 4
  %tobool95.not = icmp eq ptr %46, null
  br i1 %tobool95.not, label %if.end92.cleanup_crit_edge, label %if.then96

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then96:                                        ; preds = %if.end92
  %call97 = tail call i32 @rmi_enable_sensor(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then96.cleanup_crit_edge, label %err_disable_irq

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_disable_irq:                                  ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rmi_disable_irq(ptr noundef %dev, i1 noundef zeroext false)
  br label %err_destroy_functions

err_destroy_functions:                            ; preds = %err_disable_irq, %if.end88.err_destroy_functions_crit_edge, %do.end85
  %retval1.0 = phi i32 [ %call89, %if.end88.err_destroy_functions_crit_edge ], [ %call97, %err_disable_irq ], [ %call80, %do.end85 ]
  tail call void @rmi_free_function_list(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_functions, %if.then96.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %do.end55, %do.body32.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %call.i, %if.then8.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ 0, %if.then96.cleanup_crit_edge ], [ 0, %if.end92.cleanup_crit_edge ], [ %call38, %do.body32.cleanup_crit_edge ], [ %call63, %if.end62.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ %retval1.0, %err_destroy_functions ], [ -12, %do.end55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rmi_disable_irq(ptr noundef %dev, i1 noundef zeroext false)
  %irqdomain = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irqdomain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #10
  %4 = ptrtoint ptr %irqdomain to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %irqdomain, align 4
  tail call void @rmi_f34_remove_sysfs(ptr noundef %dev) #10
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %dev, ptr noundef nonnull @.str) #10
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %cmp.not34.i = icmp eq ptr %8, %6
  br i1 %cmp.not34.i, label %entry.rmi_free_function_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rmi_free_function_list.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_free_function_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn3235.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %8, %entry.for.body.i_crit_edge ]
  %fn.0.i = getelementptr i8, ptr %.pn3235.i, i32 -944
  %.pn.in.i = getelementptr inbounds %struct.list_head, ptr %.pn3235.i, i32 0, i32 1
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn3235.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in.i, align 4
  %12 = ptrtoint ptr %.pn3235.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn3235.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %.pn3235.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn3235.i, align 4
  %17 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %.pn.in.i, align 4
  tail call void @rmi_unregister_function(ptr noundef %fn.0.i) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %6
  br i1 %cmp.not.i, label %list_del.exit.i.rmi_free_function_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.rmi_free_function_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rmi_free_function_list.exit

rmi_free_function_list.exit:                      ; preds = %list_del.exit.i.rmi_free_function_list.exit_crit_edge, %entry.rmi_free_function_list.exit_crit_edge
  %irq_memory.i = getelementptr inbounds %struct.rmi_driver_data, ptr %6, i32 0, i32 7
  %18 = ptrtoint ptr %irq_memory.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_memory.i, align 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %19) #10
  %f01_container.i = getelementptr inbounds %struct.rmi_driver_data, ptr %6, i32 0, i32 2
  %20 = ptrtoint ptr %f01_container.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %f01_container.i, align 4
  %f34_container.i = getelementptr inbounds %struct.rmi_driver_data, ptr %6, i32 0, i32 3
  %21 = ptrtoint ptr %f34_container.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %f34_container.i, align 4
  %22 = call ptr @memset(ptr %irq_memory.i, i32 0, i32 20)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_reset_handler(ptr noundef %rmi_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f01_container, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rmi_dev, ptr noundef nonnull @.str.77) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %control_base_addr, align 4
  %add = add i16 %5, 1
  %current_irq_mask = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %current_irq_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_irq_mask, align 4
  %num_of_irq_regs = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_of_irq_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_of_irq_regs, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %10 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_block.i, align 4
  %call.i = tail call i32 %15(ptr noundef %11, i16 noundef zeroext %add, ptr noundef %7, i32 noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.78) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn19.i = load ptr, ptr %17, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %17
  br i1 %cmp.not20.i, label %if.end12.if.end17_crit_edge, label %if.end12.for.body.i_crit_edge

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.body.i:                                       ; preds = %reset_one_function.exit.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %reset_one_function.exit.i.for.body.i_crit_edge ], [ %.pn19.i, %if.end12.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %.pn21.i, i32 -944
  %tobool.not.i.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not.i.i, label %for.body.i.reset_one_function.exit.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.reset_one_function.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_one_function.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %driver.i.i = getelementptr i8, ptr %.pn21.i, i32 -772
  %19 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.reset_one_function.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.reset_one_function.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_one_function.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %reset.i.i = getelementptr inbounds %struct.rmi_function_handler, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %22, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.reset_one_function.exit.i_crit_edge, label %if.then6.i.i

if.end.i.i.reset_one_function.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_one_function.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = tail call i32 %22(ptr noundef nonnull %entry1.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %rmi_driver_process_reset_requests.exit, label %if.then6.i.i.reset_one_function.exit.i_crit_edge

if.then6.i.i.reset_one_function.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_one_function.exit.i

reset_one_function.exit.i:                        ; preds = %if.then6.i.i.reset_one_function.exit.i_crit_edge, %if.end.i.i.reset_one_function.exit.i_crit_edge, %lor.lhs.false.i.i.reset_one_function.exit.i_crit_edge, %for.body.i.reset_one_function.exit.i_crit_edge
  %23 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %17
  br i1 %cmp.not.i, label %reset_one_function.exit.i.if.end17_crit_edge, label %reset_one_function.exit.i.for.body.i_crit_edge

reset_one_function.exit.i.for.body.i_crit_edge:   ; preds = %reset_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

reset_one_function.exit.i.if.end17_crit_edge:     ; preds = %reset_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

rmi_driver_process_reset_requests.exit:           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.le.i = getelementptr i8, ptr %.pn21.i, i32 -928
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.le.i, ptr noundef nonnull @.str.81, i32 noundef %call.i.i) #13
  br label %cleanup

if.end17:                                         ; preds = %reset_one_function.exit.i.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn19.i39 = load ptr, ptr %25, align 4
  %cmp.not20.i40 = icmp eq ptr %.pn19.i39, %25
  br i1 %cmp.not20.i40, label %if.end17.cleanup_crit_edge, label %if.end17.for.body.i44_crit_edge

if.end17.for.body.i44_crit_edge:                  ; preds = %if.end17
  br label %for.body.i44

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i44:                                     ; preds = %configure_one_function.exit.i.for.body.i44_crit_edge, %if.end17.for.body.i44_crit_edge
  %.pn21.i41 = phi ptr [ %.pn.i54, %configure_one_function.exit.i.for.body.i44_crit_edge ], [ %.pn19.i39, %if.end17.for.body.i44_crit_edge ]
  %entry1.0.i42 = getelementptr i8, ptr %.pn21.i41, i32 -944
  %tobool.not.i.i43 = icmp eq ptr %entry1.0.i42, null
  br i1 %tobool.not.i.i43, label %for.body.i44.configure_one_function.exit.i_crit_edge, label %lor.lhs.false.i.i47

for.body.i44.configure_one_function.exit.i_crit_edge: ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_one_function.exit.i

lor.lhs.false.i.i47:                              ; preds = %for.body.i44
  %driver.i.i45 = getelementptr i8, ptr %.pn21.i41, i32 -772
  %27 = ptrtoint ptr %driver.i.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver.i.i45, align 4
  %tobool2.not.i.i46 = icmp eq ptr %28, null
  br i1 %tobool2.not.i.i46, label %lor.lhs.false.i.i47.configure_one_function.exit.i_crit_edge, label %if.end.i.i49

lor.lhs.false.i.i47.configure_one_function.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_one_function.exit.i

if.end.i.i49:                                     ; preds = %lor.lhs.false.i.i47
  %config.i.i = getelementptr inbounds %struct.rmi_function_handler, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i.i, align 4
  %tobool5.not.i.i48 = icmp eq ptr %30, null
  br i1 %tobool5.not.i.i48, label %if.end.i.i49.configure_one_function.exit.i_crit_edge, label %if.then6.i.i52

if.end.i.i49.configure_one_function.exit.i_crit_edge: ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_one_function.exit.i

if.then6.i.i52:                                   ; preds = %if.end.i.i49
  %call.i.i50 = tail call i32 %30(ptr noundef nonnull %entry1.0.i42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp.i.i51 = icmp slt i32 %call.i.i50, 0
  br i1 %cmp.i.i51, label %32, label %if.then6.i.i52.configure_one_function.exit.i_crit_edge

if.then6.i.i52.configure_one_function.exit.i_crit_edge: ; preds = %if.then6.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %configure_one_function.exit.i

configure_one_function.exit.i:                    ; preds = %if.then6.i.i52.configure_one_function.exit.i_crit_edge, %if.end.i.i49.configure_one_function.exit.i_crit_edge, %lor.lhs.false.i.i47.configure_one_function.exit.i_crit_edge, %for.body.i44.configure_one_function.exit.i_crit_edge
  %31 = ptrtoint ptr %.pn21.i41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i54 = load ptr, ptr %.pn21.i41, align 4
  %cmp.not.i55 = icmp eq ptr %.pn.i54, %25
  br i1 %cmp.not.i55, label %configure_one_function.exit.i.cleanup_crit_edge, label %configure_one_function.exit.i.for.body.i44_crit_edge

configure_one_function.exit.i.for.body.i44_crit_edge: ; preds = %configure_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i44

configure_one_function.exit.i.cleanup_crit_edge:  ; preds = %configure_one_function.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

32:                                               ; preds = %if.then6.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.le.i53 = getelementptr i8, ptr %.pn21.i41, i32 -928
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.le.i53, ptr noundef nonnull @.str.37, i32 noundef %call.i.i50) #13
  br label %cleanup

cleanup:                                          ; preds = %32, %configure_one_function.exit.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %rmi_driver_process_reset_requests.exit, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end10 ], [ 0, %do.end ], [ %call.i.i, %rmi_driver_process_reset_requests.exit ], [ %call.i.i50, %32 ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %configure_one_function.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_clear_irq_bits(ptr noundef %rmi_dev, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq_mutex = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex, i32 noundef 0) #10
  %irq_count = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_count, align 4
  %fn_irq_bits = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %fn_irq_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fn_irq_bits, align 4
  %call.i = tail call i32 @__bitmap_andnot(ptr noundef %5, ptr noundef %5, ptr noundef %mask, i32 noundef %3) #10
  %new_irq_mask = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 11
  %current_irq_mask = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_count, align 4
  %8 = ptrtoint ptr %current_irq_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_irq_mask, align 4
  %10 = ptrtoint ptr %new_irq_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_irq_mask, align 4
  %call.i39 = tail call i32 @__bitmap_andnot(ptr noundef %11, ptr noundef %9, ptr noundef %mask, i32 noundef %7) #10
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f01_container, align 4
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %control_base_addr, align 4
  %add = add i16 %15, 1
  %16 = ptrtoint ptr %new_irq_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %new_irq_mask, align 4
  %num_of_irq_regs = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %num_of_irq_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_of_irq_regs, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %20 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i42 = tail call i32 %25(ptr noundef %21, i16 noundef zeroext %add, ptr noundef %17, i32 noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp = icmp slt i32 %call.i42, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #13
  br label %error_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %current_irq_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %current_irq_mask, align 4
  %28 = ptrtoint ptr %new_irq_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %new_irq_mask, align 4
  %30 = ptrtoint ptr %num_of_irq_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_of_irq_regs, align 4
  %sub.i43 = add i32 %31, 31
  %32 = lshr i32 %sub.i43, 3
  %mul.i = and i32 %32, 536870908
  %33 = call ptr @memcpy(ptr %27, ptr %29, i32 %mul.i)
  br label %error_unlock

error_unlock:                                     ; preds = %if.end, %do.end
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #10
  ret i32 %call.i42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_set_irq_bits(ptr noundef %rmi_dev, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq_mutex = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex, i32 noundef 0) #10
  %new_irq_mask = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 11
  %current_irq_mask = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 10
  %irq_count = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_count, align 4
  %4 = ptrtoint ptr %current_irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_irq_mask, align 4
  %6 = ptrtoint ptr %new_irq_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_irq_mask, align 4
  tail call void @__bitmap_or(ptr noundef %7, ptr noundef %5, ptr noundef %mask, i32 noundef %3) #10
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f01_container, align 4
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %control_base_addr, align 4
  %add = add i16 %11, 1
  %12 = ptrtoint ptr %new_irq_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_irq_mask, align 4
  %num_of_irq_regs = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %num_of_irq_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_of_irq_regs, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %16 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i = tail call i32 %21(ptr noundef %17, i16 noundef zeroext %add, ptr noundef %13, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.85) #13
  br label %error_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %current_irq_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %current_irq_mask, align 4
  %24 = ptrtoint ptr %new_irq_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %new_irq_mask, align 4
  %26 = ptrtoint ptr %num_of_irq_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_of_irq_regs, align 4
  %sub.i = add i32 %27, 31
  %28 = lshr i32 %sub.i, 3
  %mul.i = and i32 %28, 536870908
  %29 = call ptr @memcpy(ptr %23, ptr %25, i32 %mul.i)
  %30 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq_count, align 4
  %fn_irq_bits = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %fn_irq_bits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fn_irq_bits, align 4
  tail call void @__bitmap_or(ptr noundef %33, ptr noundef %33, ptr noundef %mask, i32 noundef %31) #10
  br label %error_unlock

error_unlock:                                     ; preds = %if.end, %do.end
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #10
  ret i32 %call.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rmi_driver_set_input_params(ptr nocapture noundef readnone %rmi_dev, ptr nocapture noundef writeonly %input) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.86, ptr %input, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 3
  %vendor = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1739, ptr %vendor, align 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 29, ptr %id, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rmi_is_physical_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_f34_create_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rmi_driver_set_input_name(ptr noundef %rmi_dev, ptr nocapture noundef writeonly %input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f01_container, align 4
  %call1 = tail call ptr @rmi_f01_get_product_ID(ptr noundef %3) #10
  %call3 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %rmi_dev, i32 noundef 3264, ptr noundef nonnull @.str.73, ptr noundef %call1) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %input, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_irq_init(ptr noundef %rmi_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %0 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rmi_dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_get_trigger_type.exit.thread, label %irq_get_trigger_type.exit

irq_get_trigger_type.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  br label %14

irq_get_trigger_type.exit:                        ; preds = %entry
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call2.op = or i32 %and.i.i, 8192
  br i1 %tobool.not, label %irq_get_trigger_type.exit._crit_edge, label %irq_get_trigger_type.exit._crit_edge27

irq_get_trigger_type.exit._crit_edge27:           ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %16

irq_get_trigger_type.exit._crit_edge:             ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %14

14:                                               ; preds = %irq_get_trigger_type.exit._crit_edge, %irq_get_trigger_type.exit.thread
  %15 = phi i32 [ %7, %irq_get_trigger_type.exit.thread ], [ %13, %irq_get_trigger_type.exit._crit_edge ]
  br label %16

16:                                               ; preds = %14, %irq_get_trigger_type.exit._crit_edge27
  %17 = phi i32 [ %15, %14 ], [ %13, %irq_get_trigger_type.exit._crit_edge27 ]
  %18 = phi i32 [ 8200, %14 ], [ %call2.op, %irq_get_trigger_type.exit._crit_edge27 ]
  %19 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xport.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call6 = tail call ptr @dev_driver_string(ptr noundef %22) #10
  %call7 = tail call i32 @devm_request_threaded_irq(ptr noundef %rmi_dev, i32 noundef %17, ptr noundef null, ptr noundef nonnull @rmi_irq_fn, i32 noundef %18, ptr noundef %call6, ptr noundef %rmi_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %16
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.74, i32 noundef %24) #13
  br label %cleanup

if.end11:                                         ; preds = %16
  call void @__sanitizer_cov_trace_pc() #12
  %enabled = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 18
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_of_property_read_u32(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmi_f01_get_product_ID(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_irq_fn(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end23.tailrecurse_crit_edge, %entry
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %attn_fifo = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %attn_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attn_fifo, align 4
  %out = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 21, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %tailrecurse.if.end13_crit_edge, label %if.then10

tailrecurse.if.end13_crit_edge:                   ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #12
  %buf = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 21, i32 1
  %mask = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 21, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %and = and i32 %7, %5
  %arrayidx = getelementptr %struct.rmi4_attn_data, ptr %buf, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %attn_data.sroa.0.0.copyload55 = load i32, ptr %arrayidx, align 4
  %attn_data.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %9 = ptrtoint ptr %attn_data.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %attn_data.sroa.6.0.copyload56 = load i32, ptr %attn_data.sroa.6.0.arrayidx.sroa_idx, align 4
  %attn_data.sroa.657.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %10 = ptrtoint ptr %attn_data.sroa.657.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %attn_data.sroa.657.0.copyload58 = load ptr, ptr %attn_data.sroa.657.0.arrayidx.sroa_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !206
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %out, align 4
  %irq_status11 = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %irq_status11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_status11, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %attn_data.sroa.0.0.copyload55, ptr %14, align 4
  %attn_data12 = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %attn_data12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %attn_data.sroa.0.0.copyload55, ptr %attn_data12, align 4
  %attn_data.sroa.6.0.attn_data12.sroa_idx = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 20, i32 1
  %17 = ptrtoint ptr %attn_data.sroa.6.0.attn_data12.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %attn_data.sroa.6.0.copyload56, ptr %attn_data.sroa.6.0.attn_data12.sroa_idx, align 4
  %attn_data.sroa.657.0.attn_data12.sroa_idx = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 20, i32 2
  %18 = ptrtoint ptr %attn_data.sroa.657.0.attn_data12.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %attn_data.sroa.657.0.copyload58, ptr %attn_data.sroa.657.0.attn_data12.sroa_idx, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %tailrecurse.if.end13_crit_edge
  %attn_data.sroa.657.064 = phi ptr [ %attn_data.sroa.657.0.copyload58, %if.then10 ], [ null, %tailrecurse.if.end13_crit_edge ]
  %call14 = tail call fastcc i32 @rmi_process_interrupt_requests(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 1, ptr noundef %dev_id, ptr noundef nonnull @.str.76, i32 noundef %call14) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  br i1 %cmp.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %attn_data.sroa.657.064) #10
  %data22 = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 20, i32 2
  %19 = ptrtoint ptr %data22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %data22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %20 = ptrtoint ptr %attn_fifo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attn_fifo, align 4
  %22 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out, align 4
  %cmp29 = icmp eq i32 %21, %23
  br i1 %cmp29, label %cleanup, label %if.end23.tailrecurse_crit_edge

if.end23.tailrecurse_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse

cleanup:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_f34_remove_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !124, !126, !128, !130, !132, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !152, !154, !156, !157, !158, !160, !162, !164, !165, !166, !167, !169, !171, !172, !173, !174, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 40, i32 41}
!2 = !{ptr @__ksymtab_rmi_set_attn_data, !3, !"__ksymtab_rmi_set_attn_data", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 186, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 680, i32 4}
!6 = !{ptr @__func__.rmi_read_register_desc, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 680, i32 50}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 811, i32 42}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 814, i32 4}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rmi_initial_reset._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @rmi_initial_reset._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 894, i32 4}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rmi_enable_irq._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @rmi_enable_irq._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 929, i32 4}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rmi_disable_irq._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @rmi_disable_irq._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 951, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rmi_driver_suspend._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rmi_driver_suspend._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_rmi_driver_suspend, !35, !"__ksymtab_rmi_driver_suspend", i1 false, i1 false}
!35 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 957, i32 1}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 967, i32 3}
!38 = !{ptr @rmi_driver_resume._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rmi_driver_resume._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_rmi_driver_resume, !41, !"__ksymtab_rmi_driver_resume", i1 false, i1 false}
!41 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 972, i32 1}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1026, i32 31}
!44 = !{ptr @__func__.rmi_probe_interrupts, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1026, i32 55}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1031, i32 3}
!48 = !{ptr @rmi_probe_interrupts._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rmi_probe_interrupts._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1036, i32 3}
!52 = !{ptr @rmi_probe_interrupts._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rmi_probe_interrupts._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1043, i32 3}
!56 = !{ptr @rmi_probe_interrupts._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rmi_probe_interrupts._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1053, i32 3}
!60 = !{ptr @rmi_probe_interrupts._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rmi_probe_interrupts._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1072, i32 31}
!64 = !{ptr @__func__.rmi_init_functions, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1072, i32 60}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1075, i32 3}
!68 = !{ptr @rmi_init_functions._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rmi_init_functions._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1081, i32 3}
!72 = !{ptr @rmi_init_functions._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rmi_init_functions._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1090, i32 3}
!76 = !{ptr @rmi_init_functions._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @rmi_init_functions._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1268, i32 3}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rmi_register_physical_driver._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @rmi_register_physical_driver._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 91, i32 4}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @configure_one_function._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @configure_one_function._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 143, i32 4}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rmi_process_interrupt_requests._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @rmi_process_interrupt_requests._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 467, i32 3}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rmi_read_pdt_entry._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @rmi_read_pdt_entry._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 268, i32 4}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @suspend_one_function._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @suspend_one_function._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 302, i32 4}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @resume_one_function._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @resume_one_function._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 754, i32 4}
!110 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @rmi_check_bootloader_mode._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @rmi_check_bootloader_mode._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 764, i32 4}
!115 = !{ptr @rmi_check_bootloader_mode._entry.49, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @rmi_check_bootloader_mode._entry_ptr.51, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 838, i32 31}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 845, i32 3}
!121 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @rmi_create_function._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @rmi_create_function._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1246, i32 11}
!126 = !{ptr @rmi_physical_driver, !127, !"rmi_physical_driver", i1 false, i1 false}
!127 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1243, i32 26}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1110, i32 31}
!130 = !{ptr @__func__.rmi_driver_probe, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1111, i32 4}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1114, i32 32}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1161, i32 3}
!136 = !{ptr @rmi_driver_probe._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @rmi_driver_probe._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1169, i32 3}
!140 = !{ptr @rmi_driver_probe._entry.59, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @rmi_driver_probe._entry_ptr.61, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @rmi_driver_probe.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1173, i32 2}
!144 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @rmi_driver_probe.__key.63, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1174, i32 2}
!147 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1192, i32 4}
!150 = !{ptr @rmi_driver_probe._entry.65, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @rmi_driver_probe._entry_ptr.67, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1199, i32 7}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 1215, i32 5}
!156 = !{ptr @rmi_driver_probe._entry.69, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @rmi_driver_probe._entry_ptr.71, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 997, i32 6}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 359, i32 10}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 232, i32 3}
!164 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @rmi_irq_init._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @rmi_irq_init._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 204, i32 4}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 434, i32 3}
!171 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @rmi_driver_reset_handler._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @rmi_driver_reset_handler._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @rmi_driver_reset_handler._entry.79, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 443, i32 3}
!176 = !{ptr @rmi_driver_reset_handler._entry_ptr.80, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 72, i32 4}
!179 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @reset_one_function._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @reset_one_function._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 412, i32 3}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @rmi_driver_clear_irq_bits._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @rmi_driver_clear_irq_bits._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 381, i32 3}
!189 = !{ptr @rmi_driver_set_irq_bits._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @rmi_driver_set_irq_bits._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/rmi4/rmi_driver.c", i32 345, i32 16}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i8 0, i8 2}
!203 = !{i64 2154367674}
!204 = !{!"auto-init"}
!205 = !{i64 2154413446}
!206 = !{i64 2154370704}
