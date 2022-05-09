; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/shpchp_hpc.c_pt.bc'
source_filename = "../drivers/pci/hotplug/shpchp_hpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hpc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.controller = type { %struct.mutex, %struct.mutex, i32, i32, ptr, %struct.list_head, ptr, %struct.wait_queue_head, i8, i32, i32, i32, i32, i32, ptr, %struct.timer_list }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.slot = type { i8, i8, i16, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.hotplug_slot, %struct.list_head, %struct.delayed_work, %struct.mutex, ptr, i8 }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@shpchp_debug = external dso_local local_unnamed_addr global i8, align 1
@shpc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 923, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Hotplug Controller:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shpc_init\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pci/hotplug/shpchp_hpc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr = internal global ptr @shpc_init._entry, section ".printk_index", align 4
@shpc_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 933, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot find PCI capability\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.8 = internal global ptr @shpc_init._entry.5, section ".printk_index", align 4
@shpc_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 936, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" cap_offset = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.11 = internal global ptr @shpc_init._entry.9, section ".printk_index", align 4
@shpc_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 940, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot read base_offset\0A\00", [39 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.14 = internal global ptr @shpc_init._entry.12, section ".printk_index", align 4
@shpc_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 946, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot read slot config\0A\00", [39 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.17 = internal global ptr @shpc_init._entry.15, section ".printk_index", align 4
@shpc_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 950, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" num_slots (indirect) %x\0A\00", [38 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.20 = internal global ptr @shpc_init._entry.18, section ".printk_index", align 4
@shpc_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 956, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot read creg (index = %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.23 = internal global ptr @shpc_init._entry.21, section ".printk_index", align 4
@shpc_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 959, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" offset %d: value %x\0A\00", [42 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.26 = internal global ptr @shpc_init._entry.24, section ".printk_index", align 4
@shpc_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 969, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"HPC vendor_id %x device_id %x ss_vid %x ss_did %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.30 = internal global ptr @shpc_init._entry.27, section ".printk_index", align 4
@shpc_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 973, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_enable_device failed\0A\00", [38 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.33 = internal global ptr @shpc_init._entry.31, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shpchp\00", [25 x i8] zeroinitializer }, align 32
@shpc_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 978, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot reserve MMIO region\0A\00", [36 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.37 = internal global ptr @shpc_init._entry.35, section ".printk_index", align 4
@shpc_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 986, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot remap MMIO region %lx @ %lx\0A\00", [60 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.40 = internal global ptr @shpc_init._entry.38, section ".printk_index", align 4
@shpc_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 991, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ctrl->creg %p\0A\00", [17 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.43 = internal global ptr @shpc_init._entry.41, section ".printk_index", align 4
@shpc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ctrl->crit_sect\00", [47 x i8] zeroinitializer }, align 32
@shpc_init.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctrl->cmd_lock\00", [16 x i8] zeroinitializer }, align 32
@shpc_init.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ctrl->queue\00", [19 x i8] zeroinitializer }, align 32
@shpchp_hpc_ops = internal constant { %struct.hpc_ops, [56 x i8] } { %struct.hpc_ops { ptr @hpc_power_on_slot, ptr @hpc_slot_enable, ptr @hpc_slot_disable, ptr @hpc_set_bus_speed_mode, ptr @hpc_get_power_status, ptr @hpc_get_attention_status, ptr @hpc_set_attention_status, ptr @hpc_get_latch_status, ptr @hpc_get_adapter_status, ptr @hpc_get_adapter_speed, ptr @hpc_get_mode1_ECC_cap, ptr @hpc_get_prog_int, ptr @hpc_query_power_fault, ptr @hpc_set_green_led_on, ptr @hpc_set_green_led_off, ptr @hpc_set_green_led_blink, ptr @hpc_release_ctlr, ptr null }, [56 x i8] zeroinitializer }, align 32
@shpc_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.1, ptr @.str.2, i32 1010, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SERR_INTR_ENABLE = %x\0A\00", [41 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.51 = internal global ptr @shpc_init._entry.49, section ".printk_index", align 4
@shpc_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.1, ptr @.str.2, i32 1016, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.53 = internal global ptr @shpc_init._entry.52, section ".printk_index", align 4
@shpc_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 1024, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Default Logical Slot Register %d value %x\0A\00", [53 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.56 = internal global ptr @shpc_init._entry.54, section ".printk_index", align 4
@shpchp_poll_mode = external dso_local local_unnamed_addr global i8, align 1
@shpc_init.__key.57 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&ctrl->poll_timer)\00", [44 x i8] zeroinitializer }, align 32
@shpc_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.1, ptr @.str.2, i32 1041, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't get msi for the hotplug controller\0A\00", [54 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.61 = internal global ptr @shpc_init._entry.59, section ".printk_index", align 4
@shpc_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.1, ptr @.str.2, i32 1042, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Use INTx for the hotplug controller\0A\00", [59 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.64 = internal global ptr @shpc_init._entry.62, section ".printk_index", align 4
@shpc_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.1, ptr @.str.2, i32 1050, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request_irq %d (returns %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.67 = internal global ptr @shpc_init._entry.65, section ".printk_index", align 4
@shpc_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.1, ptr @.str.2, i32 1053, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Can't get irq %d for the hotplug controller\0A\00", [51 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.70 = internal global ptr @shpc_init._entry.68, section ".printk_index", align 4
@shpc_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.1, ptr @.str.2, i32 1057, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HPC at %s irq=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.73 = internal global ptr @shpc_init._entry.71, section ".printk_index", align 4
@shpc_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 1068, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.75 = internal global ptr @shpc_init._entry.74, section ".printk_index", align 4
@shpc_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.1, ptr @.str.2, i32 1081, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@shpc_init._entry_ptr.77 = internal global ptr @shpc_init._entry.76, section ".printk_index", align 4
@hpc_power_on_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 601, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Write command failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hpc_power_on_slot\00", [46 x i8] zeroinitializer }, align 32
@hpc_power_on_slot._entry_ptr = internal global ptr @hpc_power_on_slot._entry, section ".printk_index", align 4
@shpc_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 299, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Controller is still busy after 1 sec\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shpc_write_cmd\00", [17 x i8] zeroinitializer }, align 32
@shpc_write_cmd._entry_ptr = internal global ptr @shpc_write_cmd._entry, section ".printk_index", align 4
@shpc_write_cmd._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 306, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: t_slot %x cmd %x\0A\00", [42 x i8] zeroinitializer }, align 32
@shpc_write_cmd._entry_ptr.84 = internal global ptr @shpc_write_cmd._entry.82, section ".printk_index", align 4
@shpc_write_cmd._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 323, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to issued command 0x%x (error code = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@shpc_write_cmd._entry_ptr.87 = internal global ptr @shpc_write_cmd._entry.85, section ".printk_index", align 4
@shpc_wait_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 279, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Command not completed in 1000 msec\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shpc_wait_cmd\00", [18 x i8] zeroinitializer }, align 32
@shpc_wait_cmd._entry_ptr = internal global ptr @shpc_wait_cmd._entry, section ".printk_index", align 4
@shpc_wait_cmd._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 282, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Command was interrupted by a signal\0A\00", [59 x i8] zeroinitializer }, align 32
@shpc_wait_cmd._entry_ptr.92 = internal global ptr @shpc_wait_cmd._entry.90, section ".printk_index", align 4
@hpc_check_cmd_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 342, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Switch opened!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hpc_check_cmd_status\00", [43 x i8] zeroinitializer }, align 32
@hpc_check_cmd_status._entry_ptr = internal global ptr @hpc_check_cmd_status._entry, section ".printk_index", align 4
@hpc_check_cmd_status._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 346, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid HPC command!\0A\00", [42 x i8] zeroinitializer }, align 32
@hpc_check_cmd_status._entry_ptr.97 = internal global ptr @hpc_check_cmd_status._entry.95, section ".printk_index", align 4
@hpc_check_cmd_status._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 350, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid bus speed/mode!\0A\00", [39 x i8] zeroinitializer }, align 32
@hpc_check_cmd_status._entry_ptr.100 = internal global ptr @hpc_check_cmd_status._entry.98, section ".printk_index", align 4
@hpc_slot_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.101, ptr @.str.2, i32 614, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hpc_slot_enable\00", [16 x i8] zeroinitializer }, align 32
@hpc_slot_enable._entry_ptr = internal global ptr @hpc_slot_enable._entry, section ".printk_index", align 4
@hpc_slot_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.102, ptr @.str.2, i32 627, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hpc_slot_disable\00", [47 x i8] zeroinitializer }, align 32
@hpc_slot_disable._entry_ptr = internal global ptr @hpc_slot_disable._entry, section ".printk_index", align 4
@hpc_set_bus_speed_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.103, ptr @.str.2, i32 760, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hpc_set_bus_speed_mode\00", [41 x i8] zeroinitializer }, align 32
@hpc_set_bus_speed_mode._entry_ptr = internal global ptr @hpc_set_bus_speed_mode._entry, section ".printk_index", align 4
@hpc_get_adapter_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: slot_reg = %x, pcix_cap = %x, m66_cap = %x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hpc_get_adapter_speed\00", [42 x i8] zeroinitializer }, align 32
@hpc_get_adapter_speed._entry_ptr = internal global ptr @hpc_get_adapter_speed._entry, section ".printk_index", align 4
@hpc_get_adapter_speed._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Adapter speed = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@hpc_get_adapter_speed._entry_ptr.108 = internal global ptr @hpc_get_adapter_speed._entry.106, section ".printk_index", align 4
@hpc_get_mode1_ECC_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mode 1 ECC cap = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hpc_get_mode1_ECC_cap\00", [42 x i8] zeroinitializer }, align 32
@hpc_get_mode1_ECC_cap._entry_ptr = internal global ptr @hpc_get_mode1_ECC_cap._entry, section ".printk_index", align 4
@shpchp_poll_time = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@shpc_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 778, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: intr_loc = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shpc_isr\00", [23 x i8] zeroinitializer }, align 32
@shpc_isr._entry_ptr = internal global ptr @shpc_isr._entry, section ".printk_index", align 4
@shpc_isr._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.2, i32 791, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: intr_loc2 = %x\0A\00", [44 x i8] zeroinitializer }, align 32
@shpc_isr._entry_ptr.115 = internal global ptr @shpc_isr._entry.113, section ".printk_index", align 4
@shpc_isr._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.112, ptr @.str.2, i32 817, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Slot %x with intr, slot register = %x\0A\00", [57 x i8] zeroinitializer }, align 32
@shpc_isr._entry_ptr.118 = internal global ptr @shpc_isr._entry.116, section ".printk_index", align 4
@shpc_get_max_bus_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 886, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Max bus speed = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"shpc_get_max_bus_speed\00", [41 x i8] zeroinitializer }, align 32
@shpc_get_max_bus_speed._entry_ptr = internal global ptr @shpc_get_max_bus_speed._entry, section ".printk_index", align 4
@shpc_get_cur_bus_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Current bus speed = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"shpc_get_cur_bus_speed\00", [41 x i8] zeroinitializer }, align 32
@shpc_get_cur_bus_speed._entry_ptr = internal global ptr @shpc_get_cur_bus_speed._entry, section ".printk_index", align 4
@switch.table.shpc_get_cur_bus_speed = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 9, i32 10, i32 11, i32 17, i32 18, i32 19], [40 x i8] zeroinitializer }, align 32
@switch.table.hpc_set_bus_speed_mode = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"@ABCDUVW@XYZ@@@@@[\\]", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [7 x i64] [i64 5, i64 3, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 923, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 933, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 936, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 940, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 946, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 950, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 955, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 959, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 967, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 973, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 977, i32 7 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 978, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 985, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 991, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 993, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 994, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 997, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"shpchp_hpc_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 891, i32 29 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1010, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1016, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1023, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1035, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1041, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1042, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1049, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1052, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1057, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1067, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1081, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 601, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 299, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 306, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 322, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 279, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 282, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 342, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 346, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 350, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 614, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 627, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 760, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 462, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 488, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 505, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 778, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 791, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 816, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 886, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private constant [36 x i8] c"../drivers/pci/hotplug/shpchp_hpc.c\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 696, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [36 x i8] c"switch.table.shpc_get_cur_bus_speed\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [36 x i8] c"switch.table.hpc_set_bus_speed_mode\00", align 1
@llvm.compiler.used = appending global [153 x ptr] [ptr @hpc_check_cmd_status._entry, ptr @hpc_check_cmd_status._entry.95, ptr @hpc_check_cmd_status._entry.98, ptr @hpc_check_cmd_status._entry_ptr, ptr @hpc_check_cmd_status._entry_ptr.100, ptr @hpc_check_cmd_status._entry_ptr.97, ptr @hpc_get_adapter_speed._entry, ptr @hpc_get_adapter_speed._entry.106, ptr @hpc_get_adapter_speed._entry_ptr, ptr @hpc_get_adapter_speed._entry_ptr.108, ptr @hpc_get_mode1_ECC_cap._entry, ptr @hpc_get_mode1_ECC_cap._entry_ptr, ptr @hpc_power_on_slot._entry, ptr @hpc_power_on_slot._entry_ptr, ptr @hpc_set_bus_speed_mode._entry, ptr @hpc_set_bus_speed_mode._entry_ptr, ptr @hpc_slot_disable._entry, ptr @hpc_slot_disable._entry_ptr, ptr @hpc_slot_enable._entry, ptr @hpc_slot_enable._entry_ptr, ptr @shpc_get_cur_bus_speed._entry, ptr @shpc_get_cur_bus_speed._entry_ptr, ptr @shpc_get_max_bus_speed._entry, ptr @shpc_get_max_bus_speed._entry_ptr, ptr @shpc_init._entry, ptr @shpc_init._entry.12, ptr @shpc_init._entry.15, ptr @shpc_init._entry.18, ptr @shpc_init._entry.21, ptr @shpc_init._entry.24, ptr @shpc_init._entry.27, ptr @shpc_init._entry.31, ptr @shpc_init._entry.35, ptr @shpc_init._entry.38, ptr @shpc_init._entry.41, ptr @shpc_init._entry.49, ptr @shpc_init._entry.5, ptr @shpc_init._entry.52, ptr @shpc_init._entry.54, ptr @shpc_init._entry.59, ptr @shpc_init._entry.62, ptr @shpc_init._entry.65, ptr @shpc_init._entry.68, ptr @shpc_init._entry.71, ptr @shpc_init._entry.74, ptr @shpc_init._entry.76, ptr @shpc_init._entry.9, ptr @shpc_init._entry_ptr, ptr @shpc_init._entry_ptr.11, ptr @shpc_init._entry_ptr.14, ptr @shpc_init._entry_ptr.17, ptr @shpc_init._entry_ptr.20, ptr @shpc_init._entry_ptr.23, ptr @shpc_init._entry_ptr.26, ptr @shpc_init._entry_ptr.30, ptr @shpc_init._entry_ptr.33, ptr @shpc_init._entry_ptr.37, ptr @shpc_init._entry_ptr.40, ptr @shpc_init._entry_ptr.43, ptr @shpc_init._entry_ptr.51, ptr @shpc_init._entry_ptr.53, ptr @shpc_init._entry_ptr.56, ptr @shpc_init._entry_ptr.61, ptr @shpc_init._entry_ptr.64, ptr @shpc_init._entry_ptr.67, ptr @shpc_init._entry_ptr.70, ptr @shpc_init._entry_ptr.73, ptr @shpc_init._entry_ptr.75, ptr @shpc_init._entry_ptr.77, ptr @shpc_init._entry_ptr.8, ptr @shpc_isr._entry, ptr @shpc_isr._entry.113, ptr @shpc_isr._entry.116, ptr @shpc_isr._entry_ptr, ptr @shpc_isr._entry_ptr.115, ptr @shpc_isr._entry_ptr.118, ptr @shpc_wait_cmd._entry, ptr @shpc_wait_cmd._entry.90, ptr @shpc_wait_cmd._entry_ptr, ptr @shpc_wait_cmd._entry_ptr.92, ptr @shpc_write_cmd._entry, ptr @shpc_write_cmd._entry.82, ptr @shpc_write_cmd._entry.85, ptr @shpc_write_cmd._entry_ptr, ptr @shpc_write_cmd._entry_ptr.84, ptr @shpc_write_cmd._entry_ptr.87, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @shpc_init.__key, ptr @.str.44, ptr @shpc_init.__key.45, ptr @.str.46, ptr @shpc_init.__key.47, ptr @.str.48, ptr @shpchp_hpc_ops, ptr @.str.50, ptr @.str.55, ptr @shpc_init.__key.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @switch.table.shpc_get_cur_bus_speed, ptr @switch.table.hpc_set_bus_speed_mode], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_hpc_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init.__key.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_power_on_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_write_cmd._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_write_cmd._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_wait_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_wait_cmd._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_check_cmd_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_check_cmd_status._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_check_cmd_status._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_slot_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_slot_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_set_bus_speed_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_get_adapter_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_get_adapter_speed._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpc_get_mode1_ECC_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_isr._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_isr._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_get_max_bus_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_get_cur_bus_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.shpc_get_cur_bus_speed to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hpc_set_bus_speed_mode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shpc_init(ptr noundef %ctrl, ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %shpc_base_offset = alloca i32, align 4
  %tempdword = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shpc_base_offset) #6
  %0 = ptrtoint ptr %shpc_base_offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %shpc_base_offset, align 4, !annotation !209
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tempdword) #6
  %1 = ptrtoint ptr %tempdword to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tempdword, align 4, !annotation !209
  %pci_dev = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pci_dev, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %3 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %5)
  %cmp = icmp eq i16 %5, 4130
  br i1 %cmp, label %land.lhs.true, label %do.end4.if.else_crit_edge

do.end4.if.else_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %do.end4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 29776, i16 %7)
  %cmp7 = icmp eq i16 %7, 29776
  br i1 %cmp7, label %if.then9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %mmio_base = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %10 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mmio_base, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12 = icmp eq i32 %12, 0
  br i1 %cmp12, label %if.then9.do.end108_crit_edge, label %cond.false

if.then9.do.end108_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end108

cond.false:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resource, align 8
  %sub = add i32 %12, 1
  %add = sub i32 %sub, %14
  br label %do.end108

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end4.if.else_crit_edge
  %call = tail call zeroext i8 @pci_find_capability(ptr noundef %pdev, i32 noundef 12) #6
  %conv20 = zext i8 %call to i32
  %cap_offset = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 11
  %15 = ptrtoint ptr %cap_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv20, ptr %cap_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool22.not = icmp eq i8 %call, 0
  br i1 %tobool22.not, label %do.end26, label %do.body30

do.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.6) #9
  br label %cleanup

do.body30:                                        ; preds = %if.else
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %18 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool31.not = icmp eq i8 %18, 0
  br i1 %tobool31.not, label %do.body30.do.end41_crit_edge, label %do.end35

do.body30.do.end41_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev37, ptr noundef nonnull @.str.10, i32 noundef %conv20) #9
  br label %do.end41

do.end41:                                         ; preds = %do.end35, %do.body30.do.end41_crit_edge
  %21 = ptrtoint ptr %cap_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap_offset, align 4
  %23 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev, align 4
  %add.i = add i32 %22, 2
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %24, i32 noundef %add.i, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %shpc_indirect_read.exit, label %do.end41.do.end47_crit_edge

do.end41.do.end47_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

shpc_indirect_read.exit:                          ; preds = %do.end41
  %add2.i = add i32 %22, 4
  %call3.i = call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef %add2.i, ptr noundef nonnull %shpc_base_offset) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool43.not = icmp eq i32 %call3.i, 0
  br i1 %tobool43.not, label %if.end50, label %shpc_indirect_read.exit.do.end47_crit_edge

shpc_indirect_read.exit.do.end47_crit_edge:       ; preds = %shpc_indirect_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

do.end47:                                         ; preds = %shpc_indirect_read.exit.do.end47_crit_edge, %do.end41.do.end47_crit_edge
  %retval.0.i525 = phi i32 [ %call3.i, %shpc_indirect_read.exit.do.end47_crit_edge ], [ %call.i, %do.end41.do.end47_crit_edge ]
  %25 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end50:                                         ; preds = %shpc_indirect_read.exit
  %27 = ptrtoint ptr %cap_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cap_offset, align 4
  %29 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev, align 4
  %add.i480 = add i32 %28, 2
  %call.i481 = call i32 @pci_write_config_byte(ptr noundef %30, i32 noundef %add.i480, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i481)
  %tobool.not.i482 = icmp eq i32 %call.i481, 0
  br i1 %tobool.not.i482, label %shpc_indirect_read.exit487, label %if.end50.do.end56_crit_edge

if.end50.do.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

shpc_indirect_read.exit487:                       ; preds = %if.end50
  %add2.i483 = add i32 %28, 4
  %call3.i484 = call i32 @pci_read_config_dword(ptr noundef %30, i32 noundef %add2.i483, ptr noundef nonnull %tempdword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i484)
  %tobool52.not = icmp eq i32 %call3.i484, 0
  br i1 %tobool52.not, label %if.end59, label %shpc_indirect_read.exit487.do.end56_crit_edge

shpc_indirect_read.exit487.do.end56_crit_edge:    ; preds = %shpc_indirect_read.exit487
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

do.end56:                                         ; preds = %shpc_indirect_read.exit487.do.end56_crit_edge, %if.end50.do.end56_crit_edge
  %retval.0.i486528 = phi i32 [ %call3.i484, %shpc_indirect_read.exit487.do.end56_crit_edge ], [ %call.i481, %if.end50.do.end56_crit_edge ]
  %31 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev, align 4
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end59:                                         ; preds = %shpc_indirect_read.exit487
  %33 = ptrtoint ptr %tempdword to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tempdword, align 4
  %and = and i32 %34, 31
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %35 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool61.not = icmp eq i8 %35, 0
  br i1 %tobool61.not, label %if.end59.do.end70_crit_edge, label %do.end65

if.end59.do.end70_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev67, ptr noundef nonnull @.str.19, i32 noundef %and) #9
  br label %do.end70

do.end70:                                         ; preds = %do.end65, %if.end59.do.end70_crit_edge
  %38 = add nuw nsw i32 %and, 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end70
  %indvars.iv = phi i32 [ 0, %do.end70 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %39 = ptrtoint ptr %cap_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cap_offset, align 4
  %41 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_dev, align 4
  %add.i490 = add i32 %40, 2
  %43 = trunc i32 %indvars.iv to i8
  %call.i491 = call i32 @pci_write_config_byte(ptr noundef %42, i32 noundef %add.i490, i8 noundef zeroext %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i491)
  %tobool.not.i492 = icmp eq i32 %call.i491, 0
  br i1 %tobool.not.i492, label %shpc_indirect_read.exit497, label %for.body.do.end81_crit_edge

for.body.do.end81_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

shpc_indirect_read.exit497:                       ; preds = %for.body
  %add2.i493 = add i32 %40, 4
  %call3.i494 = call i32 @pci_read_config_dword(ptr noundef %42, i32 noundef %add2.i493, ptr noundef nonnull %tempdword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i494)
  %tobool77.not = icmp eq i32 %call3.i494, 0
  br i1 %tobool77.not, label %do.body86, label %shpc_indirect_read.exit497.do.end81_crit_edge

shpc_indirect_read.exit497.do.end81_crit_edge:    ; preds = %shpc_indirect_read.exit497
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

do.end81:                                         ; preds = %shpc_indirect_read.exit497.do.end81_crit_edge, %for.body.do.end81_crit_edge
  %retval.0.i496531 = phi i32 [ %call3.i494, %shpc_indirect_read.exit497.do.end81_crit_edge ], [ %call.i491, %for.body.do.end81_crit_edge ]
  %44 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci_dev, align 4
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.22, i32 noundef %indvars.iv) #9
  br label %cleanup

do.body86:                                        ; preds = %shpc_indirect_read.exit497
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %46 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool87.not = icmp eq i8 %46, 0
  br i1 %tobool87.not, label %do.body86.for.inc_crit_edge, label %do.end91

do.body86.for.inc_crit_edge:                      ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end91:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_dev, align 4
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %tempdword to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tempdword, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev93, ptr noundef nonnull @.str.25, i32 noundef %indvars.iv, i32 noundef %50) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end91, %do.body86.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv, %38
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %resource98 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %51 = ptrtoint ptr %resource98 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %resource98, align 8
  %53 = ptrtoint ptr %shpc_base_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %shpc_base_offset, align 4
  %add101 = add i32 %54, %52
  %mmio_base102 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %55 = ptrtoint ptr %mmio_base102 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add101, ptr %mmio_base102, align 4
  %mul = shl nuw nsw i32 %and, 2
  %add103 = add nuw nsw i32 %mul, 36
  br label %do.end108

do.end108:                                        ; preds = %for.end, %cond.false, %if.then9.do.end108_crit_edge
  %cond.sink = phi i32 [ %add103, %for.end ], [ %add, %cond.false ], [ 0, %if.then9.do.end108_crit_edge ]
  %mmio_size = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 13
  %56 = ptrtoint ptr %mmio_size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond.sink, ptr %mmio_size, align 4
  %57 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev, align 4
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %59 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vendor, align 8
  %conv112 = zext i16 %60 to i32
  %device113 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %61 = ptrtoint ptr %device113 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %device113, align 2
  %conv114 = zext i16 %62 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %63 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %subsystem_vendor, align 4
  %conv115 = zext i16 %64 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %65 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %subsystem_device, align 2
  %conv116 = zext i16 %66 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev110, ptr noundef nonnull @.str.28, i32 noundef %conv112, i32 noundef %conv114, i32 noundef %conv115, i32 noundef %conv116) #9
  %call117 = call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end125, label %do.end122

do.end122:                                        ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_dev, align 4
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev124, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end125:                                        ; preds = %do.end108
  %mmio_base126 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %69 = ptrtoint ptr %mmio_base126 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mmio_base126, align 4
  %mmio_size127 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 13
  %71 = ptrtoint ptr %mmio_size127 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mmio_size127, align 4
  %call128 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %70, i32 noundef %72, ptr noundef nonnull @.str.34, i32 noundef 0) #6
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %do.end133, label %if.end136

do.end133:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pci_dev, align 4
  %dev135 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev135, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end136:                                        ; preds = %if.end125
  %75 = ptrtoint ptr %mmio_base126 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mmio_base126, align 4
  %77 = ptrtoint ptr %mmio_size127 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mmio_size127, align 4
  %call139 = call ptr @ioremap(i32 noundef %76, i32 noundef %78) #6
  %creg = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  %79 = ptrtoint ptr %creg to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call139, ptr %creg, align 4
  %tobool141.not = icmp eq ptr %call139, null
  br i1 %tobool141.not, label %do.end145, label %do.body153

do.end145:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci_dev, align 4
  %dev147 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %82 = ptrtoint ptr %mmio_size127 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mmio_size127, align 4
  %84 = ptrtoint ptr %mmio_base126 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mmio_base126, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev147, ptr noundef nonnull @.str.39, i32 noundef %83, i32 noundef %85) #9
  %86 = ptrtoint ptr %mmio_base126 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mmio_base126, align 4
  %88 = ptrtoint ptr %mmio_size127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mmio_size127, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %87, i32 noundef %89) #6
  br label %cleanup

do.body153:                                       ; preds = %if.end136
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %90 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool154.not = icmp eq i8 %90, 0
  br i1 %tobool154.not, label %do.body153.do.body165_crit_edge, label %do.end158

do.body153.do.body165_crit_edge:                  ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body165

do.end158:                                        ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pci_dev, align 4
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev160, ptr noundef nonnull @.str.42, ptr noundef nonnull %call139) #9
  br label %do.body165

do.body165:                                       ; preds = %do.end158, %do.body153.do.body165_crit_edge
  call void @__mutex_init(ptr noundef %ctrl, ptr noundef nonnull @.str.44, ptr noundef nonnull @shpc_init.__key) #6
  %cmd_lock = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 1
  call void @__mutex_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @shpc_init.__key.45) #6
  %queue = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 7
  call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.48, ptr noundef nonnull @shpc_init.__key.47) #6
  %hpc_ops = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 6
  %93 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @shpchp_hpc_ops, ptr %hpc_ops, align 4
  %94 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %creg, align 4
  %add.ptr.i = getelementptr i8, ptr %95, i32 12
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !211
  %97 = call i32 @llvm.bswap.i32(i32 %96) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %and175 = lshr i32 %97, 8
  %98 = trunc i32 %and175 to i8
  %conv176 = and i8 %98, 31
  %slot_device_offset = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 8
  %99 = ptrtoint ptr %slot_device_offset to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv176, ptr %slot_device_offset, align 4
  %and177 = and i32 %97, 31
  %num_slots178 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 2
  %100 = ptrtoint ptr %num_slots178 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and177, ptr %num_slots178, align 4
  %and179 = lshr i32 %97, 16
  %shr180 = and i32 %and179, 2047
  %first_slot = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 10
  %101 = ptrtoint ptr %first_slot to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %shr180, ptr %first_slot, align 4
  %102 = and i32 %97, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool183.not = icmp eq i32 %102, 0
  %cond184 = select i1 %tobool183.not, i32 -1, i32 1
  %slot_num_inc = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 3
  %103 = ptrtoint ptr %slot_num_inc to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %cond184, ptr %slot_num_inc, align 4
  %104 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %creg, align 4
  %add.ptr.i499 = getelementptr i8, ptr %105, i32 32
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i499) #6, !srcloc !211
  %107 = call i32 @llvm.bswap.i32(i32 %106) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %108 = ptrtoint ptr %tempdword to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %tempdword, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %109 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool187.not = icmp eq i8 %109, 0
  br i1 %tobool187.not, label %do.body165.do.end196_crit_edge, label %do.end191

do.body165.do.end196_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end196

do.end191:                                        ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pci_dev, align 4
  %dev193 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev193, ptr noundef nonnull @.str.50, i32 noundef %107) #9
  br label %do.end196

do.end196:                                        ; preds = %do.end191, %do.body165.do.end196_crit_edge
  %112 = ptrtoint ptr %tempdword to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tempdword, align 4
  %or = and i32 %113, 262128
  %and197 = or i32 %or, 15
  store i32 %and197, ptr %tempdword, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  call void @arm_heavy_mb() #6
  %114 = call i32 @llvm.bswap.i32(i32 %and197) #6
  %115 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %creg, align 4
  %add.ptr.i501 = getelementptr i8, ptr %116, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i501, i32 %114) #6, !srcloc !214
  %117 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %creg, align 4
  %add.ptr.i503 = getelementptr i8, ptr %118, i32 32
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i503) #6, !srcloc !211
  %120 = call i32 @llvm.bswap.i32(i32 %119) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %121 = ptrtoint ptr %tempdword to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %tempdword, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %122 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool200.not = icmp eq i8 %122, 0
  br i1 %tobool200.not, label %do.end196.do.end209_crit_edge, label %do.end204

do.end196.do.end209_crit_edge:                    ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end209

do.end204:                                        ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pci_dev, align 4
  %dev206 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev206, ptr noundef nonnull @.str.50, i32 noundef %120) #9
  br label %do.end209

do.end209:                                        ; preds = %do.end204, %do.end196.do.end209_crit_edge
  %125 = ptrtoint ptr %num_slots178 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_slots178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp213535 = icmp sgt i32 %126, 0
  br i1 %cmp213535, label %do.end209.for.body215_crit_edge, label %do.end209.for.end239_crit_edge

do.end209.for.end239_crit_edge:                   ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end239

do.end209.for.body215_crit_edge:                  ; preds = %do.end209
  br label %for.body215

for.body215:                                      ; preds = %do.end231.for.body215_crit_edge, %do.end209.for.body215_crit_edge
  %conv211537 = phi i32 [ %conv211, %do.end231.for.body215_crit_edge ], [ 0, %do.end209.for.body215_crit_edge ]
  %hp_slot.0536 = phi i8 [ %inc238, %do.end231.for.body215_crit_edge ], [ 0, %do.end209.for.body215_crit_edge ]
  %mul217 = shl nuw nsw i32 %conv211537, 2
  %add218 = add nuw nsw i32 %mul217, 36
  %127 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %creg, align 4
  %add.ptr.i505 = getelementptr i8, ptr %128, i32 %add218
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i505) #6, !srcloc !211
  %130 = call i32 @llvm.bswap.i32(i32 %129) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %131 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool221.not = icmp eq i8 %131, 0
  br i1 %tobool221.not, label %for.body215.do.end231_crit_edge, label %do.end225

for.body215.do.end231_crit_edge:                  ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end231

do.end225:                                        ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #8
  %132 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pci_dev, align 4
  %dev227 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev227, ptr noundef nonnull @.str.55, i32 noundef %conv211537, i32 noundef %130) #9
  br label %do.end231

do.end231:                                        ; preds = %do.end225, %for.body215.do.end231_crit_edge
  %or232 = and i32 %130, -2145419265
  %and233 = or i32 %or232, 2130706432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  call void @arm_heavy_mb() #6
  %134 = call i32 @llvm.bswap.i32(i32 %and233) #6
  %135 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %creg, align 4
  %add.ptr.i507 = getelementptr i8, ptr %136, i32 %add218
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i507, i32 %134) #6, !srcloc !214
  %inc238 = add i8 %hp_slot.0536, 1
  %conv211 = zext i8 %inc238 to i32
  %137 = ptrtoint ptr %num_slots178 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_slots178, align 4
  %cmp213 = icmp sgt i32 %138, %conv211
  br i1 %cmp213, label %do.end231.for.body215_crit_edge, label %do.end231.for.end239_crit_edge

do.end231.for.end239_crit_edge:                   ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end239

do.end231.for.body215_crit_edge:                  ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body215

for.end239:                                       ; preds = %do.end231.for.end239_crit_edge, %do.end209.for.end239_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_poll_mode to i32))
  %139 = load i8, ptr @shpchp_poll_mode, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool240.not = icmp eq i8 %139, 0
  br i1 %tobool240.not, label %if.else245, label %do.body242

do.body242:                                       ; preds = %for.end239
  call void @__sanitizer_cov_trace_pc() #8
  %poll_timer = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15
  call void @init_timer_key(ptr noundef %poll_timer, ptr noundef nonnull @int_poll_timeout, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @shpc_init.__key.57) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %140 = load volatile i32, ptr @jiffies, align 128
  %add.i508 = add i32 %140, 1000
  %expires.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 1
  %141 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add.i508, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %poll_timer) #6
  br label %do.body287

if.else245:                                       ; preds = %for.end239
  %call246 = call i32 @pci_enable_msi(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.else259, label %do.end251

do.end251:                                        ; preds = %if.else245
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pci_dev, align 4
  %dev253 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev253, ptr noundef nonnull @.str.60) #9
  %144 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pci_dev, align 4
  %dev258 = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev258, ptr noundef nonnull @.str.63) #9
  br label %if.end260

if.else259:                                       ; preds = %if.else245
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_set_master(ptr noundef %pdev) #6
  br label %if.end260

if.end260:                                        ; preds = %if.else259, %do.end251
  %146 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 46
  %148 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %irq, align 4
  %call.i509 = call i32 @request_threaded_irq(i32 noundef %149, ptr noundef nonnull @shpc_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.34, ptr noundef %ctrl) #6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %150 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool264.not = icmp eq i8 %150, 0
  br i1 %tobool264.not, label %if.end260.do.end275_crit_edge, label %do.end268

if.end260.do.end275_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end275

do.end268:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pci_dev, align 4
  %dev270 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  %irq272 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 46
  %153 = ptrtoint ptr %irq272 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %irq272, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev270, ptr noundef nonnull @.str.66, i32 noundef %154, i32 noundef %call.i509) #9
  br label %do.end275

do.end275:                                        ; preds = %do.end268, %if.end260.do.end275_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i509)
  %tobool276.not = icmp eq i32 %call.i509, 0
  br i1 %tobool276.not, label %do.end275.do.body287_crit_edge, label %do.end280

do.end275.do.body287_crit_edge:                   ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body287

do.end280:                                        ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pci_dev, align 4
  %dev282 = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 44
  %irq284 = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 46
  %157 = ptrtoint ptr %irq284 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %irq284, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev282, ptr noundef nonnull @.str.69, i32 noundef %158) #9
  %159 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %creg, align 4
  call void @iounmap(ptr noundef %160) #6
  br label %cleanup

do.body287:                                       ; preds = %do.end275.do.body287_crit_edge, %do.body242
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %161 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool288.not = icmp eq i8 %161, 0
  br i1 %tobool288.not, label %do.body287.do.end299_crit_edge, label %do.end292

do.body287.do.end299_crit_edge:                   ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end299

do.end292:                                        ; preds = %do.body287
  %162 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pci_dev, align 4
  %dev294 = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %164 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %165, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end292.pci_name.exit_crit_edge

do.end292.pci_name.exit_crit_edge:                ; preds = %do.end292
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end292
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %166 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end292.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %167, %if.end.i.i ], [ %165, %do.end292.pci_name.exit_crit_edge ]
  %irq296 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %168 = ptrtoint ptr %irq296 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %irq296, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev294, ptr noundef nonnull @.str.72, ptr noundef %retval.0.i.i, i32 noundef %169) #9
  br label %do.end299

do.end299:                                        ; preds = %pci_name.exit, %do.body287.do.end299_crit_edge
  %170 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pci_dev, align 4
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %subordinate.i, align 4
  %174 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %creg, align 4
  %add.ptr.i.i = getelementptr i8, ptr %175, i32 19
  %176 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %177 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %creg, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %178, i32 4
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #6, !srcloc !211
  %180 = call i32 @llvm.bswap.i32(i32 %179) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %181 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %creg, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %182, i32 8
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #6, !srcloc !211
  %184 = call i32 @llvm.bswap.i32(i32 %183) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %176)
  %cmp.i = icmp eq i8 %176, 2
  br i1 %cmp.i, label %if.then.i, label %do.end299.if.then33.i_crit_edge

do.end299.if.then33.i_crit_edge:                  ; preds = %do.end299
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33.i

if.then.i:                                        ; preds = %do.end299
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %184)
  %tobool.not.i511 = icmp ult i32 %184, 268435456
  br i1 %tobool.not.i511, label %if.else.i, label %if.then.i.if.end59.i_crit_edge

if.then.i.if.end59.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.else.i:                                        ; preds = %if.then.i
  %and6.i = and i32 %184, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else9.i, label %if.else.i.if.end59.i_crit_edge

if.else.i.if.end59.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.else9.i:                                       ; preds = %if.else.i
  %and10.i = and i32 %184, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else13.i, label %if.else9.i.if.end59.i_crit_edge

if.else9.i.if.end59.i_crit_edge:                  ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.else13.i:                                      ; preds = %if.else9.i
  %and14.i = and i32 %184, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else17.i, label %if.else13.i.if.end59.i_crit_edge

if.else13.i.if.end59.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.else17.i:                                      ; preds = %if.else13.i
  %and18.i = and i32 %184, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end30.i, label %if.else17.i.if.end59.i_crit_edge

if.else17.i.if.end59.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.end30.i:                                       ; preds = %if.else17.i
  %and22.i = and i32 %184, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end30.i.if.then33.i_crit_edge, label %if.end30.i.if.end59.i_crit_edge

if.end30.i.if.end59.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.end30.i.if.then33.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.end30.i.if.then33.i_crit_edge, %do.end299.if.then33.i_crit_edge
  %and34.i = and i32 %180, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.else37.i, label %if.then33.i.if.end59.i_crit_edge

if.then33.i.if.end59.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.else37.i:                                      ; preds = %if.then33.i
  %and38.i = and i32 %180, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.else41.i, label %if.else37.i.if.end59.i_crit_edge

if.else37.i.if.end59.i_crit_edge:                 ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.else41.i:                                      ; preds = %if.else37.i
  %and42.i = and i32 %180, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.else45.i, label %if.else41.i.if.end59.i_crit_edge

if.else41.i.if.end59.i_crit_edge:                 ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.else45.i:                                      ; preds = %if.else41.i
  %and46.i = and i32 %184, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.else49.i, label %if.else45.i.if.end59.i_crit_edge

if.else45.i.if.end59.i_crit_edge:                 ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.else49.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #8
  %and50.i = and i32 %180, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  %..i = select i1 %tobool51.not.i, i32 255, i32 0
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else49.i, %if.else45.i.if.end59.i_crit_edge, %if.else41.i.if.end59.i_crit_edge, %if.else37.i.if.end59.i_crit_edge, %if.then33.i.if.end59.i_crit_edge, %if.end30.i.if.end59.i_crit_edge, %if.else17.i.if.end59.i_crit_edge, %if.else13.i.if.end59.i_crit_edge, %if.else9.i.if.end59.i_crit_edge, %if.else.i.if.end59.i_crit_edge, %if.then.i.if.end59.i_crit_edge
  %bus_speed.1.i = phi i32 [ 9, %if.end30.i.if.end59.i_crit_edge ], [ 4, %if.then33.i.if.end59.i_crit_edge ], [ 3, %if.else37.i.if.end59.i_crit_edge ], [ 2, %if.else41.i.if.end59.i_crit_edge ], [ 1, %if.else45.i.if.end59.i_crit_edge ], [ %..i, %if.else49.i ], [ 10, %if.else17.i.if.end59.i_crit_edge ], [ 11, %if.else13.i.if.end59.i_crit_edge ], [ 17, %if.else9.i.if.end59.i_crit_edge ], [ 18, %if.else.i.if.end59.i_crit_edge ], [ 19, %if.then.i.if.end59.i_crit_edge ]
  %conv60.i = trunc i32 %bus_speed.1.i to i8
  %max_bus_speed.i = getelementptr inbounds %struct.pci_bus, ptr %173, i32 0, i32 14
  %185 = ptrtoint ptr %max_bus_speed.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv60.i, ptr %max_bus_speed.i, align 2
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %186 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool61.not.i = icmp eq i8 %186, 0
  br i1 %tobool61.not.i, label %if.end59.i.shpc_get_max_bus_speed.exit_crit_edge, label %do.end.i

if.end59.i.shpc_get_max_bus_speed.exit_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %shpc_get_max_bus_speed.exit

do.end.i:                                         ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  %187 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pci_dev, align 4
  %dev.i512 = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i512, ptr noundef nonnull @.str.119, i32 noundef %bus_speed.1.i) #9
  br label %shpc_get_max_bus_speed.exit

shpc_get_max_bus_speed.exit:                      ; preds = %do.end.i, %if.end59.i.shpc_get_max_bus_speed.exit_crit_edge
  call fastcc void @shpc_get_cur_bus_speed(ptr noundef %ctrl)
  %189 = ptrtoint ptr %num_slots178 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %num_slots178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp305538 = icmp sgt i32 %190, 0
  br i1 %cmp305538, label %shpc_get_max_bus_speed.exit.for.body307_crit_edge, label %shpc_get_max_bus_speed.exit.for.end330_crit_edge

shpc_get_max_bus_speed.exit.for.end330_crit_edge: ; preds = %shpc_get_max_bus_speed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end330

shpc_get_max_bus_speed.exit.for.body307_crit_edge: ; preds = %shpc_get_max_bus_speed.exit
  br label %for.body307

for.body307:                                      ; preds = %do.end323.for.body307_crit_edge, %shpc_get_max_bus_speed.exit.for.body307_crit_edge
  %conv303540 = phi i32 [ %conv303, %do.end323.for.body307_crit_edge ], [ 0, %shpc_get_max_bus_speed.exit.for.body307_crit_edge ]
  %hp_slot.1539 = phi i8 [ %inc329, %do.end323.for.body307_crit_edge ], [ 0, %shpc_get_max_bus_speed.exit.for.body307_crit_edge ]
  %mul309 = shl nuw nsw i32 %conv303540, 2
  %add310 = add nuw nsw i32 %mul309, 36
  %191 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %creg, align 4
  %add.ptr.i514 = getelementptr i8, ptr %192, i32 %add310
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i514) #6, !srcloc !211
  %194 = call i32 @llvm.bswap.i32(i32 %193) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %195 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool313.not = icmp eq i8 %195, 0
  br i1 %tobool313.not, label %for.body307.do.end323_crit_edge, label %do.end317

for.body307.do.end323_crit_edge:                  ; preds = %for.body307
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end323

do.end317:                                        ; preds = %for.body307
  call void @__sanitizer_cov_trace_pc() #8
  %196 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pci_dev, align 4
  %dev319 = getelementptr inbounds %struct.pci_dev, ptr %197, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev319, ptr noundef nonnull @.str.55, i32 noundef %conv303540, i32 noundef %194) #9
  br label %do.end323

do.end323:                                        ; preds = %do.end317, %for.body307.do.end323_crit_edge
  %and324 = and i32 %194, -534806529
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  call void @arm_heavy_mb() #6
  %198 = call i32 @llvm.bswap.i32(i32 %and324) #6
  %199 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %creg, align 4
  %add.ptr.i516 = getelementptr i8, ptr %200, i32 %add310
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i516, i32 %198) #6, !srcloc !214
  %inc329 = add i8 %hp_slot.1539, 1
  %conv303 = zext i8 %inc329 to i32
  %201 = ptrtoint ptr %num_slots178 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %num_slots178, align 4
  %cmp305 = icmp sgt i32 %202, %conv303
  br i1 %cmp305, label %do.end323.for.body307_crit_edge, label %do.end323.for.end330_crit_edge

do.end323.for.end330_crit_edge:                   ; preds = %do.end323
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end330

do.end323.for.body307_crit_edge:                  ; preds = %do.end323
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body307

for.end330:                                       ; preds = %do.end323.for.end330_crit_edge, %shpc_get_max_bus_speed.exit.for.end330_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_poll_mode to i32))
  %203 = load i8, ptr @shpchp_poll_mode, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool331.not = icmp eq i8 %203, 0
  br i1 %tobool331.not, label %if.then332, label %for.end330.cleanup_crit_edge

for.end330.cleanup_crit_edge:                     ; preds = %for.end330
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then332:                                       ; preds = %for.end330
  %204 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %creg, align 4
  %add.ptr.i518 = getelementptr i8, ptr %205, i32 32
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i518) #6, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %207 = and i32 %206, -83950848
  %208 = call i32 @llvm.bswap.i32(i32 %207)
  %209 = ptrtoint ptr %tempdword to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %tempdword, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  call void @arm_heavy_mb() #6
  %210 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %creg, align 4
  %add.ptr.i520 = getelementptr i8, ptr %211, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i520, i32 %207) #6, !srcloc !214
  %212 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %creg, align 4
  %add.ptr.i522 = getelementptr i8, ptr %213, i32 32
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i522) #6, !srcloc !211
  %215 = call i32 @llvm.bswap.i32(i32 %214) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %216 = ptrtoint ptr %tempdword to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %tempdword, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %217 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool337.not = icmp eq i8 %217, 0
  br i1 %tobool337.not, label %if.then332.cleanup_crit_edge, label %do.end341

if.then332.cleanup_crit_edge:                     ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end341:                                        ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #8
  %218 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pci_dev, align 4
  %dev343 = getelementptr inbounds %struct.pci_dev, ptr %219, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev343, ptr noundef nonnull @.str.50, i32 noundef %215) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end341, %if.then332.cleanup_crit_edge, %for.end330.cleanup_crit_edge, %do.end280, %do.end145, %do.end133, %do.end122, %do.end81, %do.end56, %do.end47, %do.end26
  %retval.0 = phi i32 [ 0, %if.then332.cleanup_crit_edge ], [ 0, %do.end341 ], [ 0, %for.end330.cleanup_crit_edge ], [ %call117, %do.end122 ], [ %call.i509, %do.end280 ], [ -1, %do.end145 ], [ -1, %do.end133 ], [ %retval.0.i525, %do.end47 ], [ %retval.0.i486528, %do.end56 ], [ %retval.0.i496531, %do.end81 ], [ -1, %do.end26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tempdword) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shpc_base_offset) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @int_poll_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -288
  %call = tail call i32 @shpc_isr(i32 noundef 0, ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @shpchp_poll_time to i32))
  %0 = load i32, ptr @shpchp_poll_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @shpchp_poll_time to i32))
  store i32 2, ptr @shpchp_poll_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @shpchp_poll_time to i32))
  %1 = load i32, ptr @shpchp_poll_time, align 4
  %2 = add i32 %1, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -60, i32 %2)
  %3 = icmp ult i32 %2, -60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sec.op.i = mul nuw nsw i32 %1, 100
  %mul.i = select i1 %3, i32 200, i32 %sec.op.i
  %add.i = add i32 %mul.i, %4
  %expires.i = getelementptr i8, ptr %t, i32 8
  %5 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %t) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shpc_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %creg.i = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 14
  %0 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !211
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %4 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 4
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef %3) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_poll_mode to i32))
  %7 = load i8, ptr @shpchp_poll_mode, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.then8, label %do.end6.if.end22_crit_edge

do.end6.if.end22_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then8:                                         ; preds = %do.end6
  %8 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %creg.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #6, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %11 = and i32 %10, -16841984
  %12 = or i32 %11, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %creg.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %12) #6, !srcloc !214
  %15 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %creg.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #6, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %18 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %if.then8.if.end22_crit_edge, label %do.end16

if.then8.if.end22_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %pci_dev17 = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 4
  %20 = ptrtoint ptr %pci_dev17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev17, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev18, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.112, i32 noundef %19) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end16, %if.then8.if.end22_crit_edge, %do.end6.if.end22_crit_edge
  %and23 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %creg.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #6, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %25 = and i32 %24, -64768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %creg.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %25) #6, !srcloc !214
  %queue = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %tobool30.not = icmp ult i32 %3, 2
  br i1 %tobool30.not, label %if.end28.out_crit_edge, label %for.cond.preheader

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.cond.preheader:                               ; preds = %if.end28
  %num_slots = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 2
  %28 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp147 = icmp sgt i32 %29, 0
  br i1 %cmp147, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pci_dev45 = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hp_slot.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %hp_slot.0148, 1
  %shl = shl i32 2, %hp_slot.0148
  %and33 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.body.for.inc_crit_edge, label %if.end36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end36:                                         ; preds = %for.body
  %mul = shl i32 %hp_slot.0148, 2
  %add37 = add i32 %mul, 36
  %30 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %creg.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %31, i32 %add37
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #6, !srcloc !211
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %34 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool40.not = icmp eq i8 %34, 0
  br i1 %tobool40.not, label %if.end36.do.end49_crit_edge, label %do.end44

if.end36.do.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %pci_dev45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_dev45, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev46, ptr noundef nonnull @.str.117, i32 noundef %hp_slot.0148, i32 noundef %33) #9
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %if.end36.do.end49_crit_edge
  %and50 = and i32 %33, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.end49.if.end54_crit_edge, label %if.then52

do.end49.if.end54_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then52:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %hp_slot.0148 to i8
  %call53 = tail call zeroext i8 @shpchp_handle_switch_change(i8 noundef zeroext %conv, ptr noundef %dev_id) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %do.end49.if.end54_crit_edge
  %and55 = and i32 %33, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end60_crit_edge, label %if.then57

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %conv58 = trunc i32 %hp_slot.0148 to i8
  %call59 = tail call zeroext i8 @shpchp_handle_attention_button(i8 noundef zeroext %conv58, ptr noundef %dev_id) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end54.if.end60_crit_edge
  %and61 = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end66_crit_edge, label %if.then63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %conv64 = trunc i32 %hp_slot.0148 to i8
  %call65 = tail call zeroext i8 @shpchp_handle_presence_change(i8 noundef zeroext %conv64, ptr noundef %dev_id) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  %and67 = and i32 %33, 1179648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end72_crit_edge, label %if.then69

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %conv70 = trunc i32 %hp_slot.0148 to i8
  %call71 = tail call zeroext i8 @shpchp_handle_power_fault(i8 noundef zeroext %conv70, ptr noundef %dev_id) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end66.if.end72_crit_edge
  %and73 = and i32 %33, -14712833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %and73) #6
  %38 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %creg.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %39, i32 %add37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %37) #6, !srcloc !214
  br label %for.inc

for.inc:                                          ; preds = %if.end72, %for.body.for.inc_crit_edge
  %40 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_slots, align 4
  %cmp = icmp slt i32 %add, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %for.cond.preheader.out_crit_edge, %if.end28.out_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_poll_mode to i32))
  %42 = load i8, ptr @shpchp_poll_mode, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool76.not = icmp eq i8 %42, 0
  br i1 %tobool76.not, label %if.then77, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then77:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %creg.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %44, i32 32
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #6, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %46 = and i32 %45, -16841984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %creg.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %48, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %46) #6, !srcloc !214
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then77 ], [ 1, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shpc_get_cur_bus_speed(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subordinate, align 4
  %creg.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  %4 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !217
  %7 = lshr i16 %6, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %8 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %creg.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %9, i32 19
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2) #6, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp = icmp eq i8 %10, 2
  %conv4 = trunc i16 %7 to i8
  %cond.v = select i1 %cmp, i8 15, i8 7
  %cond = and i8 %cond.v, %conv4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp9 = icmp eq i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %cond)
  %cmp12 = icmp ugt i8 %cond, 4
  %or.cond = select i1 %cmp9, i1 %cmp12, i1 false
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %cond)
  %11 = icmp ult i8 %cond, 14
  %or.cond3 = select i1 %or.cond.not, i1 %11, i1 false
  br i1 %or.cond3, label %switch.lookup, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = zext i8 %cond to i32
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.shpc_get_cur_bus_speed, i32 0, i32 %conv14
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %out

out:                                              ; preds = %switch.lookup, %entry.out_crit_edge
  %bus_speed.0 = phi i32 [ 255, %entry.out_crit_edge ], [ %switch.load, %switch.lookup ]
  %conv28 = trunc i32 %bus_speed.0 to i8
  %cur_bus_speed = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 15
  %13 = ptrtoint ptr %cur_bus_speed to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv28, ptr %cur_bus_speed, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %14 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %out.do.end34_crit_edge, label %do.end

out.do.end34_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end:                                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.34, i32 noundef %bus_speed.0) #9
  br label %do.end34

do.end34:                                         ; preds = %do.end, %out.do.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_power_on_slot(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %0 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hp_slot, align 4
  %call = tail call fastcc i32 @shpc_write_cmd(ptr noundef %slot, i8 noundef zeroext %1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_slot_enable(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %0 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hp_slot, align 4
  %call = tail call fastcc i32 @shpc_write_cmd(ptr noundef %slot, i8 noundef zeroext %1, i8 noundef zeroext 58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.101) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_slot_disable(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %0 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hp_slot, align 4
  %call = tail call fastcc i32 @shpc_write_cmd(ptr noundef %slot, i8 noundef zeroext %1, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.102) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_set_bus_speed_mode(ptr nocapture noundef readonly %slot, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl2 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl2, align 4
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 19
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp ne i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %value)
  %cmp4 = icmp ult i32 %value, 5
  %or.cond.not = or i1 %cmp4, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %value)
  %5 = icmp ult i32 %value, 20
  %or.cond31 = and i1 %or.cond.not, %5
  br i1 %or.cond31, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 921343, %value
  %6 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %switch.lobit.not = icmp eq i32 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [20 x i8], ptr @switch.table.hpc_set_bus_speed_mode, i32 0, i32 %value
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %7)
  %switch.load = load i8, ptr %switch.gep, align 1
  %call19 = tail call fastcc i32 @shpc_write_cmd(ptr noundef %slot, i8 noundef zeroext 0, i8 noundef zeroext %switch.load)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.103) #9
  br label %cleanup

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @shpc_get_cur_bus_speed(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ %call19, %do.end ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_get_power_status(ptr nocapture noundef readonly %slot, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %2 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hp_slot, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 36
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !211
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %conv2 = and i32 %7, 3
  %switch.tableidx = add nsw i32 %conv2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = sub i8 2, %switch.idx.cast
  %.sink = select i1 %8, i8 %switch.offset, i8 -1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %status, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_get_attention_status(ptr nocapture noundef readonly %slot, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %2 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hp_slot, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 36
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !211
  %7 = lshr i32 %6, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %conv2 = and i32 %7, 3
  %switch.tableidx = add nsw i32 %conv2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 513, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sink = select i1 %8, i8 %switch.masked, i8 -1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %status, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_set_attention_status(ptr nocapture noundef readonly %slot, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %value)
  %0 = icmp ult i8 %value, 3
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.cast = zext i8 %value to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 2101296, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %1 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hp_slot, align 4
  %call = tail call fastcc i32 @shpc_write_cmd(ptr noundef %slot, i8 noundef zeroext %2, i8 noundef zeroext %switch.masked)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %switch.lookup ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_get_latch_status(ptr nocapture noundef readonly %slot, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %2 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hp_slot, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 36
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !211
  %7 = lshr i32 %6, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %status, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_get_adapter_status(ptr nocapture noundef readonly %slot, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %2 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hp_slot, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 36
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %7 = and i32 %6, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %7)
  %cmp.not = icmp ne i32 %7, 786432
  %conv5 = zext i1 %cmp.not to i8
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %status, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_get_adapter_speed(ptr nocapture noundef readonly %slot, ptr nocapture noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl2 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl2, align 4
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %2 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hp_slot, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 36
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !211
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %and = lshr i32 %7, 9
  %8 = trunc i32 %and to i8
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl2, align 4
  %creg.i.i = getelementptr inbounds %struct.controller, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 19
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %entry.cleanup_crit_edge [
    i8 1, label %entry.do.body_crit_edge
    i8 2, label %sw.bb10
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %sw.bb10, %entry.do.body_crit_edge
  %.sink66 = phi i8 [ 7, %sw.bb10 ], [ 3, %entry.do.body_crit_edge ]
  %and8 = lshr i32 %7, 12
  %16 = trunc i32 %and8 to i8
  %conv9 = and i8 %.sink66, %16
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %17 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %do.body.do.end21_crit_edge, label %do.end

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %conv17 = zext i8 %conv9 to i32
  %conv18 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, i32 noundef %7, i32 noundef %conv17, i32 noundef %conv18) #9
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %trunc = trunc i8 %conv9 to i3
  %20 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.123)
  switch i3 %trunc, label %sw.default31 [
    i3 0, label %sw.bb23
    i3 1, label %do.end21.do.body33_crit_edge
    i3 3, label %sw.bb27
    i3 -4, label %sw.bb28
    i3 -3, label %sw.bb29
  ]

do.end21.do.body33_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

sw.bb23:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  %21 = zext i8 %9 to i32
  br label %do.body33

sw.bb27:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

sw.bb28:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

sw.bb29:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

sw.default31:                                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

do.body33:                                        ; preds = %sw.default31, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb23, %do.end21.do.body33_crit_edge
  %.sink = phi i32 [ %21, %sw.bb23 ], [ 4, %sw.bb27 ], [ 11, %sw.bb28 ], [ 19, %sw.bb29 ], [ 255, %sw.default31 ], [ 2, %do.end21.do.body33_crit_edge ]
  %retval1.0 = phi i32 [ 0, %sw.bb23 ], [ 0, %sw.bb27 ], [ 0, %sw.bb28 ], [ 0, %sw.bb29 ], [ -19, %sw.default31 ], [ 0, %do.end21.do.body33_crit_edge ]
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %value, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %23 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not = icmp eq i8 %23, 0
  br i1 %tobool34.not, label %do.body33.cleanup_crit_edge, label %do.end38

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev39 = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %pci_dev39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev39, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev40, ptr noundef nonnull @.str.107, i32 noundef %27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.body33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %retval1.0, %do.end38 ], [ %retval1.0, %do.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_get_mode1_ECC_cap(ptr nocapture noundef readonly %slot, ptr nocapture noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl2 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl2, align 4
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %5 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %creg.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %6, i32 19
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i17) #6, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = trunc i16 %4 to i8
  %conv6 = and i8 %8, 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %mode, align 1
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then ], [ -1, %entry.do.body_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %10 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode, align 1
  %conv9 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.109, i32 noundef %conv9) #9
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_get_prog_int(ptr nocapture noundef readonly %slot, ptr nocapture noundef writeonly %prog_int) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 19
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %5 = ptrtoint ptr %prog_int to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %prog_int, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpc_query_power_fault(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %2 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hp_slot, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 36
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !211
  %7 = lshr i32 %6, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %and.lobit = and i32 %7, 1
  %8 = xor i32 %and.lobit, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpc_set_green_led_on(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %0 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hp_slot, align 4
  %call = tail call fastcc i32 @shpc_write_cmd(ptr noundef %slot, i8 noundef zeroext %1, i8 noundef zeroext 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpc_set_green_led_off(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %0 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hp_slot, align 4
  %call = tail call fastcc i32 @shpc_write_cmd(ptr noundef %slot, i8 noundef zeroext %1, i8 noundef zeroext 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpc_set_green_led_blink(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hp_slot = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 17
  %0 = ptrtoint ptr %hp_slot to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hp_slot, align 4
  %call = tail call fastcc i32 @shpc_write_cmd(ptr noundef %slot, i8 noundef zeroext %1, i8 noundef zeroext 8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpc_release_ctlr(ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_slots = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp34 = icmp sgt i32 %1, 0
  br i1 %cmp34, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %creg.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.035, 2
  %add = add i32 %mul, 36
  %2 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %5 = and i32 %4, -8446080
  %6 = or i32 %5, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %creg.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %6) #6, !srcloc !214
  %inc = add nuw nsw i32 %i.035, 1
  %9 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_slots, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @cleanup_slots(ptr noundef %ctrl) #6
  %creg.i30 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  %11 = ptrtoint ptr %creg.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %creg.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %12, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #6, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %14 = and i32 %13, -251723008
  %15 = or i32 %14, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %creg.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %creg.i30, align 4
  %add.ptr.i33 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %15) #6, !srcloc !214
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_poll_mode to i32))
  %18 = load i8, ptr @shpchp_poll_mode, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %poll_timer = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15
  %call6 = tail call i32 @del_timer(ptr noundef %poll_timer) #6
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %ctrl) #6
  %23 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_disable_msi(ptr noundef %24) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = ptrtoint ptr %creg.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %creg.i30, align 4
  tail call void @iounmap(ptr noundef %26) #6
  %mmio_base = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %27 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mmio_base, align 4
  %mmio_size = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 13
  %29 = ptrtoint ptr %mmio_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mmio_size, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %28, i32 noundef %30) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shpc_write_cmd(ptr nocapture noundef readonly %slot, i8 noundef zeroext %t_slot, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %cmd_lock = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #6
  %call = tail call fastcc i32 @shpc_poll_ctrl_busy(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #9
  br label %out

if.end:                                           ; preds = %entry
  %inc = add i8 %t_slot, 1
  %conv = zext i8 %inc to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv4 = zext i8 %cmd to i32
  %or = or i32 %shl, %conv4
  %conv5 = trunc i32 %or to i16
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %4 = load i8, ptr @shpchp_debug, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %if.end.do.end18_crit_edge, label %do.end11

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev12 = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %pci_dev12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev12, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev13, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81, i32 noundef %conv, i32 noundef %conv4) #9
  br label %do.end18

do.end18:                                         ; preds = %do.end11, %if.end.do.end18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv5) #6
  %creg.i = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %creg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %7) #6, !srcloc !220
  %10 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl1, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_poll_mode to i32))
  %12 = load i8, ptr @shpchp_poll_mode, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call fastcc i32 @shpc_poll_ctrl_busy(ptr noundef %11) #6
  br label %if.end46.i

if.else.i:                                        ; preds = %do.end18
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 276) #6
  %creg.i.i.i = getelementptr inbounds %struct.controller, ptr %11, i32 0, i32 14
  %13 = ptrtoint ptr %creg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %creg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 22
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %16 = and i16 %15, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool7.not.i = icmp eq i16 %16, 0
  br i1 %tobool7.not.i, label %if.else.i.if.end23_crit_edge, label %if.then15.i

if.else.i.if.end23_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then15.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %17 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %queue.i = getelementptr inbounds %struct.controller, ptr %11, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then15.i
  %__ret16.0.i = phi i32 [ 100, %if.then15.i ], [ %call41.i, %cleanup.i ]
  %call17.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %18 = ptrtoint ptr %creg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %creg.i.i.i, align 4
  %add.ptr.i.i86.i = getelementptr i8, ptr %19, i32 22
  %20 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i86.i) #6, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %21 = and i16 %20, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool20.not.i = icmp eq i16 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.0.i)
  %tobool25.not.i = icmp eq i32 %__ret16.0.i, 0
  %22 = select i1 %tobool20.not.i, i1 %tobool25.not.i, i1 false
  %__ret16.1.i = select i1 %22, i32 1, i32 %__ret16.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1.i)
  %tobool31.not.i = icmp eq i32 %__ret16.1.i, 0
  %23 = select i1 %tobool20.not.i, i1 true, i1 %tobool31.not.i
  br i1 %23, label %for.end.i, label %if.end37.i

if.end37.i:                                       ; preds = %for.cond.i
  %tobool38.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool38.not.i, label %cleanup.i, label %if.end37.i.__out.i_crit_edge

if.end37.i.__out.i_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out.i

cleanup.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i = call i32 @schedule_timeout(i32 noundef %__ret16.1.i) #6
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i) #6
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end37.i.__out.i_crit_edge
  %__ret16.293.i = phi i32 [ %__ret16.1.i, %for.end.i ], [ %call17.i, %if.end37.i.__out.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %if.end46.i

if.end46.i:                                       ; preds = %__out.i, %if.then.i
  %rc.0.i = phi i32 [ %call2.i, %if.then.i ], [ %__ret16.293.i, %__out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool47.not.i = icmp eq i32 %rc.0.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true48.i, label %if.else55.i

land.lhs.true48.i:                                ; preds = %if.end46.i
  %creg.i.i88.i = getelementptr inbounds %struct.controller, ptr %11, i32 0, i32 14
  %24 = ptrtoint ptr %creg.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %creg.i.i88.i, align 4
  %add.ptr.i.i89.i = getelementptr i8, ptr %25, i32 22
  %26 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i89.i) #6, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %27 = and i16 %26, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool50.not.i = icmp eq i16 %27, 0
  br i1 %tobool50.not.i, label %land.lhs.true48.i.if.end23_crit_edge, label %if.then51.i

land.lhs.true48.i.if.end23_crit_edge:             ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then51.i:                                      ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev.i = getelementptr inbounds %struct.controller, ptr %11, i32 0, i32 4
  %28 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.88) #9
  br label %out

if.else55.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp.i = icmp slt i32 %rc.0.i, 0
  br i1 %cmp.i, label %if.then56.i, label %if.else55.i.if.end23_crit_edge

if.else55.i.if.end23_crit_edge:                   ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then56.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev60.i = getelementptr inbounds %struct.controller, ptr %11, i32 0, i32 4
  %30 = ptrtoint ptr %pci_dev60.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_dev60.i, align 4
  %dev61.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61.i, ptr noundef nonnull @.str.91) #9
  br label %out

if.end23:                                         ; preds = %if.else55.i.if.end23_crit_edge, %land.lhs.true48.i.if.end23_crit_edge, %if.else.i.if.end23_crit_edge
  %32 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl1, align 4
  %creg.i.i = getelementptr inbounds %struct.controller, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 22
  %36 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !217
  %37 = lshr i16 %36, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %38 = and i16 %37, 15
  %conv3.i = zext i16 %38 to i32
  %39 = lshr i32 %conv3.i, 1
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %39, label %hpc_check_cmd_status.exit [
    i32 0, label %if.end23.out_crit_edge
    i32 1, label %if.end23.do.end31.sink.split_crit_edge
    i32 2, label %sw.bb5.i
    i32 4, label %sw.bb11.i
  ]

if.end23.do.end31.sink.split_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.sink.split

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb5.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.sink.split

sw.bb11.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.sink.split

hpc_check_cmd_status.exit:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool27.not = icmp eq i16 %38, 0
  br i1 %tobool27.not, label %hpc_check_cmd_status.exit.out_crit_edge, label %hpc_check_cmd_status.exit.do.end31_crit_edge

hpc_check_cmd_status.exit.do.end31_crit_edge:     ; preds = %hpc_check_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

hpc_check_cmd_status.exit.out_crit_edge:          ; preds = %hpc_check_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end31.sink.split:                              ; preds = %sw.bb11.i, %sw.bb5.i, %if.end23.do.end31.sink.split_crit_edge
  %.str.93.sink = phi ptr [ @.str.96, %sw.bb5.i ], [ @.str.99, %sw.bb11.i ], [ @.str.93, %if.end23.do.end31.sink.split_crit_edge ]
  %pci_dev.i53 = getelementptr inbounds %struct.controller, ptr %33, i32 0, i32 4
  %41 = ptrtoint ptr %pci_dev.i53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_dev.i53, align 4
  %dev.i54 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i54, ptr noundef nonnull %.str.93.sink) #9
  br label %do.end31

do.end31:                                         ; preds = %do.end31.sink.split, %hpc_check_cmd_status.exit.do.end31_crit_edge
  %retval1.0.i5561 = phi i32 [ %conv3.i, %hpc_check_cmd_status.exit.do.end31_crit_edge ], [ %39, %do.end31.sink.split ]
  %pci_dev32 = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %pci_dev32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev32, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.86, i32 noundef %conv4, i32 noundef %retval1.0.i5561) #9
  br label %out

out:                                              ; preds = %do.end31, %hpc_check_cmd_status.exit.out_crit_edge, %if.end23.out_crit_edge, %if.then56.i, %if.then51.i, %do.end
  %retval2.0 = phi i32 [ -5, %do.end31 ], [ 0, %hpc_check_cmd_status.exit.out_crit_edge ], [ -16, %do.end ], [ -4, %if.then56.i ], [ -5, %if.then51.i ], [ %39, %if.end23.out_crit_edge ]
  %45 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl1, align 4
  %cmd_lock38 = getelementptr inbounds %struct.controller, ptr %46, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %cmd_lock38) #6
  ret i32 %retval2.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shpc_poll_ctrl_busy(ptr nocapture noundef readonly %ctrl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %creg.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  %0 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 22
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %3 = and i16 %2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  tail call void @msleep(i32 noundef 100) #6
  %4 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %5, i32 22
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %7 = and i16 %6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %for.body.preheader.cleanup_crit_edge, label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  tail call void @msleep(i32 noundef 100) #6
  %8 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8.1 = getelementptr i8, ptr %9, i32 22
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8.1) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.not.1 = icmp eq i16 %11, 0
  br i1 %tobool2.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  tail call void @msleep(i32 noundef 100) #6
  %12 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8.2 = getelementptr i8, ptr %13, i32 22
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8.2) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool2.not.2 = icmp eq i16 %15, 0
  br i1 %tobool2.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @msleep(i32 noundef 100) #6
  %16 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8.3 = getelementptr i8, ptr %17, i32 22
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8.3) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %19 = and i16 %18, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool2.not.3 = icmp eq i16 %19, 0
  br i1 %tobool2.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  tail call void @msleep(i32 noundef 100) #6
  %20 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8.4 = getelementptr i8, ptr %21, i32 22
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8.4) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %23 = and i16 %22, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool2.not.4 = icmp eq i16 %23, 0
  br i1 %tobool2.not.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  tail call void @msleep(i32 noundef 100) #6
  %24 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8.5 = getelementptr i8, ptr %25, i32 22
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8.5) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %27 = and i16 %26, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool2.not.5 = icmp eq i16 %27, 0
  br i1 %tobool2.not.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  tail call void @msleep(i32 noundef 100) #6
  %28 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8.6 = getelementptr i8, ptr %29, i32 22
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8.6) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %31 = and i16 %30, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool2.not.6 = icmp eq i16 %31, 0
  br i1 %tobool2.not.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  tail call void @msleep(i32 noundef 100) #6
  %32 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8.7 = getelementptr i8, ptr %33, i32 22
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8.7) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %35 = and i16 %34, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool2.not.7 = icmp eq i16 %35, 0
  br i1 %tobool2.not.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  tail call void @msleep(i32 noundef 100) #6
  %36 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8.8 = getelementptr i8, ptr %37, i32 22
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8.8) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %39 = and i16 %38, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool2.not.8 = icmp eq i16 %39, 0
  br i1 %tobool2.not.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 100) #6
  %40 = ptrtoint ptr %creg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %creg.i.i, align 4
  %add.ptr.i.i8.9 = getelementptr i8, ptr %41, i32 22
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i8.9) #6, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %43 = lshr i16 %42, 8
  %.lobit = and i16 %43, 1
  %44 = xor i16 %.lobit, 1
  %45 = zext i16 %44 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.8, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %for.body.preheader.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ], [ 1, %for.cond.1.cleanup_crit_edge ], [ 1, %for.cond.2.cleanup_crit_edge ], [ 1, %for.cond.3.cleanup_crit_edge ], [ 1, %for.cond.4.cleanup_crit_edge ], [ 1, %for.cond.5.cleanup_crit_edge ], [ 1, %for.cond.6.cleanup_crit_edge ], [ 1, %for.cond.7.cleanup_crit_edge ], [ %45, %for.cond.8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_slots(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @shpchp_handle_switch_change(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @shpchp_handle_attention_button(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @shpchp_handle_presence_change(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @shpchp_handle_power_fault(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 923, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @shpc_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @shpc_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 933, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @shpc_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @shpc_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 936, i32 3}
!15 = !{ptr @shpc_init._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @shpc_init._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 940, i32 4}
!19 = !{ptr @shpc_init._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @shpc_init._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 946, i32 4}
!23 = !{ptr @shpc_init._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @shpc_init._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 950, i32 3}
!27 = !{ptr @shpc_init._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @shpc_init._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 955, i32 5}
!31 = !{ptr @shpc_init._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @shpc_init._entry_ptr.23, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.25, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 959, i32 4}
!35 = !{ptr @shpc_init._entry.24, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @shpc_init._entry_ptr.26, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.28, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 967, i32 2}
!39 = !{ptr @.str.29, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @shpc_init._entry.27, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @shpc_init._entry_ptr.30, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.32, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 973, i32 3}
!44 = !{ptr @shpc_init._entry.31, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @shpc_init._entry_ptr.33, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.34, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 977, i32 7}
!48 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 978, i32 3}
!50 = !{ptr @shpc_init._entry.35, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @shpc_init._entry_ptr.37, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.39, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 985, i32 3}
!54 = !{ptr @shpc_init._entry.38, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @shpc_init._entry_ptr.40, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.42, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 991, i32 2}
!58 = !{ptr @shpc_init._entry.41, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @shpc_init._entry_ptr.43, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @shpc_init.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 993, i32 2}
!62 = !{ptr @.str.44, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @shpc_init.__key.45, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 994, i32 2}
!65 = !{ptr @.str.46, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @shpc_init.__key.47, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 997, i32 2}
!68 = !{ptr @.str.48, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.50, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1010, i32 2}
!71 = !{ptr @shpc_init._entry.49, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @shpc_init._entry_ptr.51, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @shpc_init._entry.52, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1016, i32 2}
!75 = !{ptr @shpc_init._entry_ptr.53, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.55, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1023, i32 3}
!78 = !{ptr @shpc_init._entry.54, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @shpc_init._entry_ptr.56, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @shpc_init.__key.57, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1035, i32 3}
!82 = !{ptr @.str.58, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.60, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1041, i32 4}
!85 = !{ptr @shpc_init._entry.59, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @shpc_init._entry_ptr.61, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.63, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1042, i32 4}
!89 = !{ptr @shpc_init._entry.62, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @shpc_init._entry_ptr.64, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.66, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1049, i32 3}
!93 = !{ptr @shpc_init._entry.65, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @shpc_init._entry_ptr.67, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.69, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1052, i32 4}
!97 = !{ptr @shpc_init._entry.68, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @shpc_init._entry_ptr.70, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.72, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1057, i32 2}
!101 = !{ptr @shpc_init._entry.71, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @shpc_init._entry_ptr.73, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @shpc_init._entry.74, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1067, i32 3}
!105 = !{ptr @shpc_init._entry_ptr.75, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @shpc_init._entry.76, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 1081, i32 3}
!108 = !{ptr @shpc_init._entry_ptr.77, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @shpchp_hpc_ops, !110, !"shpchp_hpc_ops", i1 false, i1 false}
!110 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 891, i32 29}
!111 = !{ptr @.str.78, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 601, i32 3}
!113 = !{ptr @.str.79, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @hpc_power_on_slot._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @hpc_power_on_slot._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.80, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 299, i32 3}
!118 = !{ptr @.str.81, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @shpc_write_cmd._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @shpc_write_cmd._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.83, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 306, i32 2}
!123 = !{ptr @shpc_write_cmd._entry.82, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @shpc_write_cmd._entry_ptr.84, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.86, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 322, i32 3}
!127 = !{ptr @shpc_write_cmd._entry.85, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @shpc_write_cmd._entry_ptr.87, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.88, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 279, i32 3}
!131 = !{ptr @.str.89, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @shpc_wait_cmd._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @shpc_wait_cmd._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.91, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 282, i32 3}
!136 = !{ptr @shpc_wait_cmd._entry.90, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @shpc_wait_cmd._entry_ptr.92, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.93, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 342, i32 3}
!140 = !{ptr @.str.94, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @hpc_check_cmd_status._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @hpc_check_cmd_status._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.96, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 346, i32 3}
!145 = !{ptr @hpc_check_cmd_status._entry.95, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @hpc_check_cmd_status._entry_ptr.97, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.99, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 350, i32 3}
!149 = !{ptr @hpc_check_cmd_status._entry.98, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @hpc_check_cmd_status._entry_ptr.100, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.101, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 614, i32 3}
!153 = !{ptr @hpc_slot_enable._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @hpc_slot_enable._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.102, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 627, i32 3}
!157 = !{ptr @hpc_slot_disable._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @hpc_slot_disable._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.103, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 760, i32 3}
!161 = !{ptr @hpc_set_bus_speed_mode._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @hpc_set_bus_speed_mode._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.104, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 462, i32 2}
!165 = !{ptr @.str.105, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @hpc_get_adapter_speed._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @hpc_get_adapter_speed._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.107, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 488, i32 2}
!170 = !{ptr @hpc_get_adapter_speed._entry.106, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @hpc_get_adapter_speed._entry_ptr.108, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.109, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 505, i32 2}
!174 = !{ptr @.str.110, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @hpc_get_mode1_ECC_cap._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @hpc_get_mode1_ECC_cap._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.111, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 778, i32 2}
!179 = !{ptr @.str.112, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @shpc_isr._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @shpc_isr._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.114, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 791, i32 3}
!184 = !{ptr @shpc_isr._entry.113, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @shpc_isr._entry_ptr.115, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.117, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 816, i32 3}
!188 = !{ptr @shpc_isr._entry.116, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @shpc_isr._entry_ptr.118, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.119, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 886, i32 2}
!192 = !{ptr @.str.120, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @shpc_get_max_bus_speed._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @shpc_get_max_bus_speed._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.121, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pci/hotplug/shpchp_hpc.c", i32 696, i32 2}
!197 = !{ptr @.str.122, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @shpc_get_cur_bus_speed._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @shpc_get_cur_bus_speed._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{!"auto-init"}
!210 = !{i8 0, i8 2}
!211 = !{i64 5006292}
!212 = !{i64 2154479406}
!213 = !{i64 2154479788}
!214 = !{i64 5005874}
!215 = !{i64 5006072}
!216 = !{i64 2154477548}
!217 = !{i64 5005454}
!218 = !{i64 2154478199}
!219 = !{i64 2154478581}
!220 = !{i64 5005254}
