; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/shpchp_ctrl.c_pt.bc'
source_filename = "../drivers/pci/hotplug/shpchp_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.slot = type { i8, i8, i16, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.hotplug_slot, %struct.list_head, %struct.delayed_work, %struct.mutex, ptr, i8 }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.hpc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.event_info = type { i32, ptr, %struct.work_struct }
%struct.pushbutton_work_info = type { ptr, %struct.work_struct }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@shpchp_debug = external dso_local local_unnamed_addr global i8, align 1
@shpchp_handle_attention_button._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Attention button interrupt received\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"shpchp_handle_attention_button\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pci/hotplug/shpchp_ctrl.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@shpchp_handle_attention_button._entry_ptr = internal global ptr @shpchp_handle_attention_button._entry, section ".printk_index", align 4
@shpchp_handle_attention_button._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 59, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Button pressed on Slot(%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@shpchp_handle_attention_button._entry_ptr.8 = internal global ptr @shpchp_handle_attention_button._entry.5, section ".printk_index", align 4
@shpchp_handle_switch_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Switch interrupt received\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"shpchp_handle_switch_change\00", [36 x i8] zeroinitializer }, align 32
@shpchp_handle_switch_change._entry_ptr = internal global ptr @shpchp_handle_switch_change._entry, section ".printk_index", align 4
@shpchp_handle_switch_change._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Card present %x Power status %x\0A\00", [63 x i8] zeroinitializer }, align 32
@shpchp_handle_switch_change._entry_ptr.13 = internal global ptr @shpchp_handle_switch_change._entry.11, section ".printk_index", align 4
@shpchp_handle_switch_change._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 87, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Latch open on Slot(%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@shpchp_handle_switch_change._entry_ptr.16 = internal global ptr @shpchp_handle_switch_change._entry.14, section ".printk_index", align 4
@shpchp_handle_switch_change._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 91, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Surprise Removal of card\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@shpchp_handle_switch_change._entry_ptr.20 = internal global ptr @shpchp_handle_switch_change._entry.17, section ".printk_index", align 4
@shpchp_handle_switch_change._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.2, i32 97, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Latch close on Slot(%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@shpchp_handle_switch_change._entry_ptr.23 = internal global ptr @shpchp_handle_switch_change._entry.21, section ".printk_index", align 4
@shpchp_handle_presence_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Presence/Notify input change\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"shpchp_handle_presence_change\00", [34 x i8] zeroinitializer }, align 32
@shpchp_handle_presence_change._entry_ptr = internal global ptr @shpchp_handle_presence_change._entry, section ".printk_index", align 4
@shpchp_handle_presence_change._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 125, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Card present on Slot(%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@shpchp_handle_presence_change._entry_ptr.28 = internal global ptr @shpchp_handle_presence_change._entry.26, section ".printk_index", align 4
@shpchp_handle_presence_change._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 132, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Card not present on Slot(%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@shpchp_handle_presence_change._entry_ptr.31 = internal global ptr @shpchp_handle_presence_change._entry.29, section ".printk_index", align 4
@shpchp_handle_power_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Power fault interrupt received\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shpchp_handle_power_fault\00", [38 x i8] zeroinitializer }, align 32
@shpchp_handle_power_fault._entry_ptr = internal global ptr @shpchp_handle_power_fault._entry, section ".printk_index", align 4
@shpchp_handle_power_fault._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 156, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Power fault cleared on Slot(%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@shpchp_handle_power_fault._entry_ptr.36 = internal global ptr @shpchp_handle_power_fault._entry.34, section ".printk_index", align 4
@shpchp_handle_power_fault._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 163, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Power fault on Slot(%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@shpchp_handle_power_fault._entry_ptr.39 = internal global ptr @shpchp_handle_power_fault._entry.37, section ".printk_index", align 4
@shpchp_handle_power_fault._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 167, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Power fault bit %x set\0A\00", [40 x i8] zeroinitializer }, align 32
@shpchp_handle_power_fault._entry_ptr.42 = internal global ptr @shpchp_handle_power_fault._entry.40, section ".printk_index", align 4
@shpchp_queue_pushbutton_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 424, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Cannot allocate memory\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"shpchp_queue_pushbutton_work\00", [35 x i8] zeroinitializer }, align 32
@shpchp_queue_pushbutton_work._entry_ptr = internal global ptr @shpchp_queue_pushbutton_work._entry, section ".printk_index", align 4
@shpchp_queue_pushbutton_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&info->work)\00", [33 x i8] zeroinitializer }, align 32
@shpchp_sysfs_enable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 654, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Slot %s is already in powering on state\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"shpchp_sysfs_enable_slot\00", [39 x i8] zeroinitializer }, align 32
@shpchp_sysfs_enable_slot._entry_ptr = internal global ptr @shpchp_sysfs_enable_slot._entry, section ".printk_index", align 4
@shpchp_sysfs_enable_slot._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 659, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Already enabled on slot %s\0A\00", [36 x i8] zeroinitializer }, align 32
@shpchp_sysfs_enable_slot._entry_ptr.50 = internal global ptr @shpchp_sysfs_enable_slot._entry.48, section ".printk_index", align 4
@shpchp_sysfs_enable_slot._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 663, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Not a valid state on slot %s\0A\00", [34 x i8] zeroinitializer }, align 32
@shpchp_sysfs_enable_slot._entry_ptr.53 = internal global ptr @shpchp_sysfs_enable_slot._entry.51, section ".printk_index", align 4
@shpchp_sysfs_disable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 690, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Slot %s is already in powering off state\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shpchp_sysfs_disable_slot\00", [38 x i8] zeroinitializer }, align 32
@shpchp_sysfs_disable_slot._entry_ptr = internal global ptr @shpchp_sysfs_disable_slot._entry, section ".printk_index", align 4
@shpchp_sysfs_disable_slot._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 695, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Already disabled on slot %s\0A\00", [35 x i8] zeroinitializer }, align 32
@shpchp_sysfs_disable_slot._entry_ptr.58 = internal global ptr @shpchp_sysfs_disable_slot._entry.56, section ".printk_index", align 4
@shpchp_sysfs_disable_slot._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.55, ptr @.str.2, i32 699, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@shpchp_sysfs_disable_slot._entry_ptr.60 = internal global ptr @shpchp_sysfs_disable_slot._entry.59, section ".printk_index", align 4
@shpchp_find_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.63, i32 224, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Slot (device=0x%02x) not found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"shpchp_find_slot\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/pci/hotplug/shpchp.h\00", [35 x i8] zeroinitializer }, align 32
@shpchp_find_slot._entry_ptr = internal global ptr @shpchp_find_slot._entry, section ".printk_index", align 4
@queue_interrupt_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@interrupt_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 528, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Power fault\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"interrupt_event_handler\00", [40 x i8] zeroinitializer }, align 32
@interrupt_event_handler._entry_ptr = internal global ptr @interrupt_event_handler._entry, section ".printk_index", align 4
@handle_button_press_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 469, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"PCI slot #%s - powering off due to button press\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"handle_button_press_event\00", [38 x i8] zeroinitializer }, align 32
@handle_button_press_event._entry_ptr = internal global ptr @handle_button_press_event._entry, section ".printk_index", align 4
@handle_button_press_event._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 473, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PCI slot #%s - powering on due to button press\0A\00", [48 x i8] zeroinitializer }, align 32
@handle_button_press_event._entry_ptr.70 = internal global ptr @handle_button_press_event._entry.68, section ".printk_index", align 4
@handle_button_press_event._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 489, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Button cancel on Slot(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@handle_button_press_event._entry_ptr.73 = internal global ptr @handle_button_press_event._entry.71, section ".printk_index", align 4
@handle_button_press_event._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 497, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"PCI slot #%s - action canceled due to button press\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_button_press_event._entry_ptr.76 = internal global ptr @handle_button_press_event._entry.74, section ".printk_index", align 4
@handle_button_press_event._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 508, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Button ignore on Slot(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@handle_button_press_event._entry_ptr.79 = internal global ptr @handle_button_press_event._entry.77, section ".printk_index", align 4
@handle_button_press_event._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.67, ptr @.str.2, i32 512, ptr @.str.82, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Not a valid state\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@handle_button_press_event._entry_ptr.83 = internal global ptr @handle_button_press_event._entry.80, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@shpchp_enable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 552, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No adapter on slot(%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"shpchp_enable_slot\00", [45 x i8] zeroinitializer }, align 32
@shpchp_enable_slot._entry_ptr = internal global ptr @shpchp_enable_slot._entry, section ".printk_index", align 4
@shpchp_enable_slot._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 557, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Latch open on slot(%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@shpchp_enable_slot._entry_ptr.88 = internal global ptr @shpchp_enable_slot._entry.86, section ".printk_index", align 4
@shpchp_enable_slot._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 563, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Already enabled on slot(%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@shpchp_enable_slot._entry_ptr.91 = internal global ptr @shpchp_enable_slot._entry.89, section ".printk_index", align 4
@shpchp_enable_slot._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 572, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: p_slot->pwr_save %x\0A\00", [39 x i8] zeroinitializer }, align 32
@shpchp_enable_slot._entry_ptr.94 = internal global ptr @shpchp_enable_slot._entry.92, section ".printk_index", align 4
@board_added._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: p_slot->device, slot_offset, hp_slot = %d, %d ,%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"board_added\00", [20 x i8] zeroinitializer }, align 32
@board_added._entry_ptr = internal global ptr @board_added._entry, section ".printk_index", align 4
@board_added._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 246, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to power on slot\0A\00", [39 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.99 = internal global ptr @board_added._entry.97, section ".printk_index", align 4
@board_added._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.2, i32 254, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Issue of set bus speed mode command failed\0A\00", [48 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.102 = internal global ptr @board_added._entry.100, section ".printk_index", align 4
@board_added._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.2, i32 261, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Issue of Slot Enable command failed\0A\00", [59 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.105 = internal global ptr @board_added._entry.103, section ".printk_index", align 4
@board_added._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.96, ptr @.str.2, i32 268, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can't get adapter speed or bus mode mismatch\0A\00", [50 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.108 = internal global ptr @board_added._entry.106, section ".printk_index", align 4
@board_added._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.96, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s: slots_not_empty %d, adapter_speed %d, bus_speed %d, max_bus_speed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.111 = internal global ptr @board_added._entry.109, section ".printk_index", align 4
@board_added._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.2, i32 290, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.113 = internal global ptr @board_added._entry.112, section ".printk_index", align 4
@board_added._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.96, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: slot status = %x\0A\00", [42 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.116 = internal global ptr @board_added._entry.114, section ".printk_index", align 4
@board_added._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.96, ptr @.str.2, i32 301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.118 = internal global ptr @board_added._entry.117, section ".printk_index", align 4
@board_added._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.96, ptr @.str.2, i32 308, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot add device at %04x:%02x:%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.121 = internal global ptr @board_added._entry.119, section ".printk_index", align 4
@board_added._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.96, ptr @.str.2, i32 325, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Issue of Slot Disable command failed\0A\00", [54 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.124 = internal global ptr @board_added._entry.122, section ".printk_index", align 4
@fix_bus_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 206, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Speed of bus %x and adapter %x mismatch\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fix_bus_speed\00", [18 x i8] zeroinitializer }, align 32
@fix_bus_speed._entry_ptr = internal global ptr @fix_bus_speed._entry, section ".printk_index", align 4
@change_bus_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Change speed to %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"change_bus_speed\00", [47 x i8] zeroinitializer }, align 32
@change_bus_speed._entry_ptr = internal global ptr @change_bus_speed._entry, section ".printk_index", align 4
@change_bus_speed._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.128, ptr @.str.2, i32 187, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@change_bus_speed._entry_ptr.130 = internal global ptr @change_bus_speed._entry.129, section ".printk_index", align 4
@amd_pogo_errata_restore_misc_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.63, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Bridge_Errors[ PERR_OBSERVED = %08X] (W1C)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amd_pogo_errata_restore_misc_reg\00", [63 x i8] zeroinitializer }, align 32
@amd_pogo_errata_restore_misc_reg._entry_ptr = internal global ptr @amd_pogo_errata_restore_misc_reg._entry, section ".printk_index", align 4
@amd_pogo_errata_restore_misc_reg._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.63, i32 269, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Memory_Base_Limit[ RSE ] (W1C)\0A\00", [32 x i8] zeroinitializer }, align 32
@amd_pogo_errata_restore_misc_reg._entry_ptr.135 = internal global ptr @amd_pogo_errata_restore_misc_reg._entry.133, section ".printk_index", align 4
@shpchp_disable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.136, ptr @.str.2, i32 613, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shpchp_disable_slot\00", [44 x i8] zeroinitializer }, align 32
@shpchp_disable_slot._entry_ptr = internal global ptr @shpchp_disable_slot._entry, section ".printk_index", align 4
@shpchp_disable_slot._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.136, ptr @.str.2, i32 618, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@shpchp_disable_slot._entry_ptr.138 = internal global ptr @shpchp_disable_slot._entry.137, section ".printk_index", align 4
@shpchp_disable_slot._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.136, ptr @.str.2, i32 624, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Already disabled on slot(%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@shpchp_disable_slot._entry_ptr.141 = internal global ptr @shpchp_disable_slot._entry.139, section ".printk_index", align 4
@remove_board._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: hp_slot = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"remove_board\00", [19 x i8] zeroinitializer }, align 32
@remove_board._entry_ptr = internal global ptr @remove_board._entry, section ".printk_index", align 4
@remove_board._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.143, ptr @.str.2, i32 358, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@remove_board._entry_ptr.145 = internal global ptr @remove_board._entry.144, section ".printk_index", align 4
@remove_board._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.143, ptr @.str.2, i32 364, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Issue of Set Attention command failed\0A\00", [57 x i8] zeroinitializer }, align 32
@remove_board._entry_ptr.148 = internal global ptr @remove_board._entry.146, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.150 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.151 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.153 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 51, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 59, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 75, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 80, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 87, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 91, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 97, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 112, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 124, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 131, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 147, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 155, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 163, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 167, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 423, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 428, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 653, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 658, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 662, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 689, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 694, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 698, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 224, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 38, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 528, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 468, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 472, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 488, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 496, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 507, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 512, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 552, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 557, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 562, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 572, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 240, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 246, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 253, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 261, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 268, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 279, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 290, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 297, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 301, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 307, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 324, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 205, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 183, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 186, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 258, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant [32 x i8] c"../drivers/pci/hotplug/shpchp.h\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 269, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 613, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 618, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 623, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 348, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 357, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.542 = private constant [37 x i8] c"../drivers/pci/hotplug/shpchp_ctrl.c\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 364, i32 3 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @amd_pogo_errata_restore_misc_reg._entry, ptr @amd_pogo_errata_restore_misc_reg._entry.133, ptr @amd_pogo_errata_restore_misc_reg._entry_ptr, ptr @amd_pogo_errata_restore_misc_reg._entry_ptr.135, ptr @board_added._entry, ptr @board_added._entry.100, ptr @board_added._entry.103, ptr @board_added._entry.106, ptr @board_added._entry.109, ptr @board_added._entry.112, ptr @board_added._entry.114, ptr @board_added._entry.117, ptr @board_added._entry.119, ptr @board_added._entry.122, ptr @board_added._entry.97, ptr @board_added._entry_ptr, ptr @board_added._entry_ptr.102, ptr @board_added._entry_ptr.105, ptr @board_added._entry_ptr.108, ptr @board_added._entry_ptr.111, ptr @board_added._entry_ptr.113, ptr @board_added._entry_ptr.116, ptr @board_added._entry_ptr.118, ptr @board_added._entry_ptr.121, ptr @board_added._entry_ptr.124, ptr @board_added._entry_ptr.99, ptr @change_bus_speed._entry, ptr @change_bus_speed._entry.129, ptr @change_bus_speed._entry_ptr, ptr @change_bus_speed._entry_ptr.130, ptr @fix_bus_speed._entry, ptr @fix_bus_speed._entry_ptr, ptr @handle_button_press_event._entry, ptr @handle_button_press_event._entry.68, ptr @handle_button_press_event._entry.71, ptr @handle_button_press_event._entry.74, ptr @handle_button_press_event._entry.77, ptr @handle_button_press_event._entry.80, ptr @handle_button_press_event._entry_ptr, ptr @handle_button_press_event._entry_ptr.70, ptr @handle_button_press_event._entry_ptr.73, ptr @handle_button_press_event._entry_ptr.76, ptr @handle_button_press_event._entry_ptr.79, ptr @handle_button_press_event._entry_ptr.83, ptr @interrupt_event_handler._entry, ptr @interrupt_event_handler._entry_ptr, ptr @remove_board._entry, ptr @remove_board._entry.144, ptr @remove_board._entry.146, ptr @remove_board._entry_ptr, ptr @remove_board._entry_ptr.145, ptr @remove_board._entry_ptr.148, ptr @shpchp_disable_slot._entry, ptr @shpchp_disable_slot._entry.137, ptr @shpchp_disable_slot._entry.139, ptr @shpchp_disable_slot._entry_ptr, ptr @shpchp_disable_slot._entry_ptr.138, ptr @shpchp_disable_slot._entry_ptr.141, ptr @shpchp_enable_slot._entry, ptr @shpchp_enable_slot._entry.86, ptr @shpchp_enable_slot._entry.89, ptr @shpchp_enable_slot._entry.92, ptr @shpchp_enable_slot._entry_ptr, ptr @shpchp_enable_slot._entry_ptr.88, ptr @shpchp_enable_slot._entry_ptr.91, ptr @shpchp_enable_slot._entry_ptr.94, ptr @shpchp_find_slot._entry, ptr @shpchp_find_slot._entry_ptr, ptr @shpchp_handle_attention_button._entry, ptr @shpchp_handle_attention_button._entry.5, ptr @shpchp_handle_attention_button._entry_ptr, ptr @shpchp_handle_attention_button._entry_ptr.8, ptr @shpchp_handle_power_fault._entry, ptr @shpchp_handle_power_fault._entry.34, ptr @shpchp_handle_power_fault._entry.37, ptr @shpchp_handle_power_fault._entry.40, ptr @shpchp_handle_power_fault._entry_ptr, ptr @shpchp_handle_power_fault._entry_ptr.36, ptr @shpchp_handle_power_fault._entry_ptr.39, ptr @shpchp_handle_power_fault._entry_ptr.42, ptr @shpchp_handle_presence_change._entry, ptr @shpchp_handle_presence_change._entry.26, ptr @shpchp_handle_presence_change._entry.29, ptr @shpchp_handle_presence_change._entry_ptr, ptr @shpchp_handle_presence_change._entry_ptr.28, ptr @shpchp_handle_presence_change._entry_ptr.31, ptr @shpchp_handle_switch_change._entry, ptr @shpchp_handle_switch_change._entry.11, ptr @shpchp_handle_switch_change._entry.14, ptr @shpchp_handle_switch_change._entry.17, ptr @shpchp_handle_switch_change._entry.21, ptr @shpchp_handle_switch_change._entry_ptr, ptr @shpchp_handle_switch_change._entry_ptr.13, ptr @shpchp_handle_switch_change._entry_ptr.16, ptr @shpchp_handle_switch_change._entry_ptr.20, ptr @shpchp_handle_switch_change._entry_ptr.23, ptr @shpchp_queue_pushbutton_work._entry, ptr @shpchp_queue_pushbutton_work._entry_ptr, ptr @shpchp_sysfs_disable_slot._entry, ptr @shpchp_sysfs_disable_slot._entry.56, ptr @shpchp_sysfs_disable_slot._entry.59, ptr @shpchp_sysfs_disable_slot._entry_ptr, ptr @shpchp_sysfs_disable_slot._entry_ptr.58, ptr @shpchp_sysfs_disable_slot._entry_ptr.60, ptr @shpchp_sysfs_enable_slot._entry, ptr @shpchp_sysfs_enable_slot._entry.48, ptr @shpchp_sysfs_enable_slot._entry.51, ptr @shpchp_sysfs_enable_slot._entry_ptr, ptr @shpchp_sysfs_enable_slot._entry_ptr.50, ptr @shpchp_sysfs_enable_slot._entry_ptr.53, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @shpchp_queue_pushbutton_work.__key, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @queue_interrupt_event.__key, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.115, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.147], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_attention_button._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_attention_button._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_switch_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_switch_change._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_switch_change._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_switch_change._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_switch_change._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_presence_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_presence_change._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_presence_change._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_power_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_power_fault._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_power_fault._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_handle_power_fault._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_queue_pushbutton_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_queue_pushbutton_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_sysfs_enable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_sysfs_enable_slot._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_sysfs_enable_slot._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_sysfs_disable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_sysfs_disable_slot._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_sysfs_disable_slot._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_find_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_interrupt_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_button_press_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_button_press_event._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_button_press_event._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_button_press_event._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_button_press_event._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_button_press_event._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_enable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_enable_slot._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_enable_slot._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_enable_slot._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fix_bus_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @change_bus_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @change_bus_speed._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_pogo_errata_restore_misc_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_pogo_errata_restore_misc_reg._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_disable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_disable_slot._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_disable_slot._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_board._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_board._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_board._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @shpchp_handle_attention_button(i8 noundef zeroext %hp_slot, ptr noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %0 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %slot_device_offset = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %slot_device_offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %slot_device_offset, align 4
  %add = add i8 %4, %hp_slot
  %slot_list.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end3
  %.pn.in.i = phi ptr [ %slot_list.i, %do.end3 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slot_list.i
  br i1 %cmp.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %device3.i = getelementptr i8, ptr %.pn.i, i32 -47
  %6 = ptrtoint ptr %device3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %device3.i, align 1
  %cmp5.i = icmp eq i8 %7, %add
  br i1 %cmp5.i, label %cleanup.loopexit.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv12.i = zext i8 %add to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %conv12.i) #8
  br label %shpchp_find_slot.exit

cleanup.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %slot.0.le.i = getelementptr i8, ptr %.pn.i, i32 -48
  br label %shpchp_find_slot.exit

shpchp_find_slot.exit:                            ; preds = %cleanup.loopexit.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %slot.0.le.i, %cleanup.loopexit.i ]
  %hpc_ops = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 11
  %10 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status = getelementptr inbounds %struct.hpc_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %get_adapter_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_adapter_status, align 4
  %presence_save = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 7
  %call6 = tail call i32 %13(ptr noundef %retval.0.i, ptr noundef %presence_save) #5
  %pci_dev10 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %14 = ptrtoint ptr %pci_dev10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 12, i32 2
  %16 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.6, ptr noundef %19) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 2592, i32 noundef 52) #9
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %shpchp_find_slot.exit.queue_interrupt_event.exit_crit_edge, label %if.end.i

shpchp_find_slot.exit.queue_interrupt_event.exit_crit_edge: ; preds = %shpchp_find_slot.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue_interrupt_event.exit

if.end.i:                                         ; preds = %shpchp_find_slot.exit
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %call7.i.i, align 8
  %p_slot2.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %p_slot2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i, ptr %p_slot2.i, align 4
  %work.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #5
  %23 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @queue_interrupt_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry6.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry6.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @interrupt_event_handler, ptr %func.i, align 4
  %wq.i = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 16
  %27 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work.i) #5
  br label %queue_interrupt_event.exit

queue_interrupt_event.exit:                       ; preds = %if.end.i, %shpchp_find_slot.exit.queue_interrupt_event.exit_crit_edge
  ret i8 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @shpchp_handle_switch_change(i8 noundef zeroext %hp_slot, ptr noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  %getstatus = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %getstatus) #5
  %0 = ptrtoint ptr %getstatus to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %getstatus, align 1, !annotation !252
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %1 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %slot_device_offset = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %slot_device_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slot_device_offset, align 4
  %add = add i8 %5, %hp_slot
  %slot_list.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end3
  %.pn.in.i = phi ptr [ %slot_list.i, %do.end3 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slot_list.i
  br i1 %cmp.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %device3.i = getelementptr i8, ptr %.pn.i, i32 -47
  %7 = ptrtoint ptr %device3.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %device3.i, align 1
  %cmp5.i = icmp eq i8 %8, %add
  br i1 %cmp5.i, label %cleanup.loopexit.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %9 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %conv12.i = zext i8 %add to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %conv12.i) #8
  br label %shpchp_find_slot.exit

cleanup.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %slot.0.le.i = getelementptr i8, ptr %.pn.i, i32 -48
  br label %shpchp_find_slot.exit

shpchp_find_slot.exit:                            ; preds = %cleanup.loopexit.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %slot.0.le.i, %cleanup.loopexit.i ]
  %hpc_ops = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 11
  %11 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status = getelementptr inbounds %struct.hpc_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %get_adapter_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_adapter_status, align 4
  %presence_save = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 7
  %call6 = tail call i32 %14(ptr noundef %retval.0.i, ptr noundef %presence_save) #5
  %15 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hpc_ops, align 4
  %get_latch_status = getelementptr inbounds %struct.hpc_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %get_latch_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_latch_status, align 4
  %call8 = call i32 %18(ptr noundef %retval.0.i, ptr noundef nonnull %getstatus) #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %19 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not = icmp eq i8 %19, 0
  br i1 %tobool10.not, label %shpchp_find_slot.exit.do.end22_crit_edge, label %do.end14

shpchp_find_slot.exit.do.end22_crit_edge:         ; preds = %shpchp_find_slot.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

do.end14:                                         ; preds = %shpchp_find_slot.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev15 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %20 = ptrtoint ptr %pci_dev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %presence_save to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %presence_save, align 1
  %conv18 = zext i8 %23 to i32
  %pwr_save = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 9
  %24 = ptrtoint ptr %pwr_save to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pwr_save, align 1
  %conv19 = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16, ptr noundef nonnull @.str.12, i32 noundef %conv18, i32 noundef %conv19) #8
  br label %do.end22

do.end22:                                         ; preds = %do.end14, %shpchp_find_slot.exit.do.end22_crit_edge
  %26 = ptrtoint ptr %getstatus to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %getstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool23.not = icmp eq i8 %27, 0
  %pci_dev47 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %28 = ptrtoint ptr %pci_dev47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev47, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %pci_slot.i.i69 = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 12, i32 2
  %30 = ptrtoint ptr %pci_slot.i.i69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_slot.i.i69, align 4
  %kobj.i.i.i70 = getelementptr inbounds %struct.pci_slot, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %kobj.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %kobj.i.i.i70, align 4
  br i1 %tobool23.not, label %do.end46, label %do.end27

do.end27:                                         ; preds = %do.end22
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.15, ptr noundef %33) #8
  %pwr_save31 = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 9
  %34 = ptrtoint ptr %pwr_save31 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pwr_save31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool33.not = icmp eq i8 %35, 0
  br i1 %tobool33.not, label %do.end27.if.end50_crit_edge, label %land.lhs.true

do.end27.if.end50_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true:                                    ; preds = %do.end27
  %36 = ptrtoint ptr %presence_save to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %presence_save, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool36.not = icmp eq i8 %37, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end50_crit_edge, label %if.then37

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %pci_dev47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci_dev47, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.18) #8
  br label %if.end50

do.end46:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.22, ptr noundef %33) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end46, %if.then37, %land.lhs.true.if.end50_crit_edge, %do.end27.if.end50_crit_edge
  %event_type.0 = phi i32 [ 5, %if.then37 ], [ 4, %land.lhs.true.if.end50_crit_edge ], [ 4, %do.end27.if.end50_crit_edge ], [ 3, %do.end46 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 2592, i32 noundef 52) #9
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end50.queue_interrupt_event.exit_crit_edge, label %if.end.i

if.end50.queue_interrupt_event.exit_crit_edge:    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue_interrupt_event.exit

if.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %event_type.0, ptr %call7.i.i, align 8
  %p_slot2.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %p_slot2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i, ptr %p_slot2.i, align 4
  %work.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #5
  %43 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @queue_interrupt_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry6.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry6.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @interrupt_event_handler, ptr %func.i, align 4
  %wq.i = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 16
  %47 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wq.i, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %work.i) #5
  br label %queue_interrupt_event.exit

queue_interrupt_event.exit:                       ; preds = %if.end.i, %if.end50.queue_interrupt_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %getstatus) #5
  ret i8 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @shpchp_handle_presence_change(i8 noundef zeroext %hp_slot, ptr noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %0 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %slot_device_offset = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %slot_device_offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %slot_device_offset, align 4
  %add = add i8 %4, %hp_slot
  %slot_list.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end3
  %.pn.in.i = phi ptr [ %slot_list.i, %do.end3 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slot_list.i
  br i1 %cmp.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %device3.i = getelementptr i8, ptr %.pn.i, i32 -47
  %6 = ptrtoint ptr %device3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %device3.i, align 1
  %cmp5.i = icmp eq i8 %7, %add
  br i1 %cmp5.i, label %cleanup.loopexit.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv12.i = zext i8 %add to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %conv12.i) #8
  br label %shpchp_find_slot.exit

cleanup.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %slot.0.le.i = getelementptr i8, ptr %.pn.i, i32 -48
  br label %shpchp_find_slot.exit

shpchp_find_slot.exit:                            ; preds = %cleanup.loopexit.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %slot.0.le.i, %cleanup.loopexit.i ]
  %hpc_ops = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 11
  %10 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status = getelementptr inbounds %struct.hpc_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %get_adapter_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_adapter_status, align 4
  %presence_save = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 7
  %call6 = tail call i32 %13(ptr noundef %retval.0.i, ptr noundef %presence_save) #5
  %14 = ptrtoint ptr %presence_save to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %presence_save, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  %pci_dev19 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %16 = ptrtoint ptr %pci_dev19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev19, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %pci_slot.i.i34 = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 12, i32 2
  %18 = ptrtoint ptr %pci_slot.i.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_slot.i.i34, align 4
  %kobj.i.i.i35 = getelementptr inbounds %struct.pci_slot, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %kobj.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kobj.i.i.i35, align 4
  %.str.30..str.27 = select i1 %tobool8.not, ptr @.str.30, ptr @.str.27
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull %.str.30..str.27, ptr noundef %21) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2592, i32 noundef 52) #9
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %shpchp_find_slot.exit.queue_interrupt_event.exit_crit_edge, label %if.end.i

shpchp_find_slot.exit.queue_interrupt_event.exit_crit_edge: ; preds = %shpchp_find_slot.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue_interrupt_event.exit

if.end.i:                                         ; preds = %shpchp_find_slot.exit
  call void @__sanitizer_cov_trace_pc() #7
  %. = select i1 %tobool8.not, i32 2, i32 1
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %., ptr %call7.i.i, align 8
  %p_slot2.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %p_slot2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %p_slot2.i, align 4
  %work.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #5
  %25 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @queue_interrupt_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry6.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry6.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @interrupt_event_handler, ptr %func.i, align 4
  %wq.i = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 16
  %29 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %work.i) #5
  br label %queue_interrupt_event.exit

queue_interrupt_event.exit:                       ; preds = %if.end.i, %shpchp_find_slot.exit.queue_interrupt_event.exit_crit_edge
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @shpchp_handle_power_fault(i8 noundef zeroext %hp_slot, ptr noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %0 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.32) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %slot_device_offset = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %slot_device_offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %slot_device_offset, align 4
  %add = add i8 %4, %hp_slot
  %slot_list.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end3
  %.pn.in.i = phi ptr [ %slot_list.i, %do.end3 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slot_list.i
  br i1 %cmp.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %device3.i = getelementptr i8, ptr %.pn.i, i32 -47
  %6 = ptrtoint ptr %device3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %device3.i, align 1
  %cmp5.i = icmp eq i8 %7, %add
  br i1 %cmp5.i, label %cleanup.loopexit.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv12.i = zext i8 %add to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %conv12.i) #8
  br label %shpchp_find_slot.exit

cleanup.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %slot.0.le.i = getelementptr i8, ptr %.pn.i, i32 -48
  br label %shpchp_find_slot.exit

shpchp_find_slot.exit:                            ; preds = %cleanup.loopexit.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %slot.0.le.i, %cleanup.loopexit.i ]
  %hpc_ops = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 11
  %10 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hpc_ops, align 4
  %query_power_fault = getelementptr inbounds %struct.hpc_ops, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %query_power_fault to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %query_power_fault, align 4
  %call6 = tail call i32 %13(ptr noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end11, label %do.end17

do.end11:                                         ; preds = %shpchp_find_slot.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev12 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %14 = ptrtoint ptr %pci_dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev12, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 12, i32 2
  %16 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.35, ptr noundef %19) #8
  %status = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %status, align 2
  br label %if.end28

do.end17:                                         ; preds = %shpchp_find_slot.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %hp_slot to i32
  %pci_dev18 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  %21 = ptrtoint ptr %pci_dev18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %pci_slot.i.i42 = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 12, i32 2
  %23 = ptrtoint ptr %pci_slot.i.i42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_slot.i.i42, align 4
  %kobj.i.i.i43 = getelementptr inbounds %struct.pci_slot, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %kobj.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kobj.i.i.i43, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.38, ptr noundef %26) #8
  %status21 = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 2
  %27 = ptrtoint ptr %status21 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 255, ptr %status21, align 2
  %28 = ptrtoint ptr %pci_dev18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev18, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef nonnull @.str.41, i32 noundef %conv) #8
  br label %if.end28

if.end28:                                         ; preds = %do.end17, %do.end11
  %event_type.0 = phi i32 [ 5, %do.end17 ], [ 6, %do.end11 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 2592, i32 noundef 52) #9
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end28.queue_interrupt_event.exit_crit_edge, label %if.end.i

if.end28.queue_interrupt_event.exit_crit_edge:    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue_interrupt_event.exit

if.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %event_type.0, ptr %call7.i.i, align 8
  %p_slot2.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %p_slot2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i, ptr %p_slot2.i, align 4
  %work.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #5
  %33 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @queue_interrupt_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry6.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry6.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.event_info, ptr %call7.i.i, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @interrupt_event_handler, ptr %func.i, align 4
  %wq.i = getelementptr inbounds %struct.slot, ptr %retval.0.i, i32 0, i32 16
  %37 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %work.i) #5
  br label %queue_interrupt_event.exit

queue_interrupt_event.exit:                       ; preds = %if.end.i, %if.end28.queue_interrupt_event.exit_crit_edge
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shpchp_queue_pushbutton_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctrl = getelementptr i8, ptr %work, i32 -40
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %call7.i, align 8
  %work3 = getelementptr inbounds %struct.pushbutton_work_info, ptr %call7.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work3, i32 noundef 0) #5
  %6 = ptrtoint ptr %work3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %work3, align 4
  %lockdep_map = getelementptr inbounds %struct.pushbutton_work_info, ptr %call7.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.45, ptr noundef nonnull @shpchp_queue_pushbutton_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry7 = getelementptr inbounds %struct.pushbutton_work_info, ptr %call7.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry7, ptr %entry7, align 8
  %prev.i = getelementptr inbounds %struct.pushbutton_work_info, ptr %call7.i, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pushbutton_work_info, ptr %call7.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @shpchp_pushbutton_thread, ptr %func, align 8
  %lock = getelementptr i8, ptr %work, i32 100
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %state = getelementptr i8, ptr %work, i32 -47
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %sw.default [
    i8 2, label %if.end.sw.epilog_crit_edge
    i8 1, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %out

sw.epilog:                                        ; preds = %sw.bb12, %if.end.sw.epilog_crit_edge
  %storemerge = phi i8 [ 3, %sw.bb12 ], [ 4, %if.end.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %storemerge, ptr %state, align 1
  %wq = getelementptr i8, ptr %work, i32 192
  %14 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work3) #5
  br label %out

out:                                              ; preds = %sw.epilog, %sw.default
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shpchp_pushbutton_thread(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 4, label %sw.bb
    i8 3, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %call = tail call fastcc i32 @shpchp_disable_slot(ptr noundef %1)
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %call7 = tail call fastcc i32 @shpchp_enable_slot(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %sw.bb5.sw.epilog.sink.split_crit_edge, label %if.then

sw.bb5.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %hpc_ops = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hpc_ops, align 4
  %green_led_off = getelementptr inbounds %struct.hpc_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %green_led_off to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %green_led_off, align 4
  tail call void %8(ptr noundef %1) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then, %sw.bb5.sw.epilog.sink.split_crit_edge, %sw.bb
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %state, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  tail call void @kfree(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shpchp_sysfs_enable_slot(ptr noundef %p_slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl2 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl2, align 4
  %lock = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %3, label %do.end20 [
    i8 1, label %sw.bb
    i8 0, label %entry.sw.bb3_crit_edge
    i8 3, label %do.end
    i8 2, label %entry.do.end14_crit_edge
    i8 4, label %entry.do.end14_crit_edge43
  ]

entry.do.end14_crit_edge43:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %work = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #5
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %state, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %call6 = tail call fastcc i32 @shpchp_enable_slot(ptr noundef %p_slot)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %state, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef %12) #8
  br label %sw.epilog

do.end14:                                         ; preds = %entry.do.end14_crit_edge, %entry.do.end14_crit_edge43
  %pci_dev15 = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %pci_dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %pci_slot.i.i39 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %pci_slot.i.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_slot.i.i39, align 4
  %kobj.i.i.i40 = getelementptr inbounds %struct.pci_slot, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %kobj.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kobj.i.i.i40, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.49, ptr noundef %18) #8
  br label %sw.epilog

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev21 = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %pci_dev21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %pci_slot.i.i41 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %pci_slot.i.i41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_slot.i.i41, align 4
  %kobj.i.i.i42 = getelementptr inbounds %struct.pci_slot, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %kobj.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kobj.i.i.i42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.52, ptr noundef %24) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end20, %do.end14, %do.end, %sw.bb3
  %retval1.0 = phi i32 [ -19, %do.end20 ], [ -19, %do.end14 ], [ -19, %do.end ], [ %call6, %sw.bb3 ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shpchp_enable_slot(ptr noundef %p_slot) unnamed_addr #0 align 64 {
entry:
  %pcix_misc2_temp.i128 = alloca i32, align 4
  %pcix_bridge_errors_reg.i = alloca i32, align 4
  %pcix_mem_base_reg.i = alloca i32, align 4
  %pcix_misc2_temp.i = alloca i32, align 4
  %getstatus = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %getstatus) #5
  %0 = ptrtoint ptr %getstatus to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %getstatus, align 1
  %ctrl2 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 10
  %1 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl2, align 4
  tail call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #5
  %hpc_ops = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 11
  %3 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status = getelementptr inbounds %struct.hpc_ops, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %get_adapter_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_adapter_status, align 4
  %call = call i32 %6(ptr noundef %p_slot, ptr noundef nonnull %getstatus) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %getstatus to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %getstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kobj.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.84, ptr noundef %14) #8
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hpc_ops, align 4
  %get_latch_status = getelementptr inbounds %struct.hpc_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %get_latch_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_latch_status, align 4
  %call7 = call i32 %18(ptr noundef %p_slot, ptr noundef nonnull %getstatus) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

lor.lhs.false9:                                   ; preds = %if.end
  %19 = ptrtoint ptr %getstatus to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %getstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %if.end18, label %lor.lhs.false9.do.end14_crit_edge

lor.lhs.false9.do.end14_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.end14:                                         ; preds = %lor.lhs.false9.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %pci_dev15 = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %21 = ptrtoint ptr %pci_dev15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %pci_slot.i.i124 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %23 = ptrtoint ptr %pci_slot.i.i124 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_slot.i.i124, align 4
  %kobj.i.i.i125 = getelementptr inbounds %struct.pci_slot, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %kobj.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kobj.i.i.i125, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.87, ptr noundef %26) #8
  br label %out

if.end18:                                         ; preds = %lor.lhs.false9
  %27 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hpc_ops, align 4
  %get_power_status = getelementptr inbounds %struct.hpc_ops, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %get_power_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_power_status, align 4
  %call20 = call i32 %30(ptr noundef %p_slot, ptr noundef nonnull %getstatus) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %if.end18.do.end28_crit_edge

if.end18.do.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

lor.lhs.false22:                                  ; preds = %if.end18
  %31 = ptrtoint ptr %getstatus to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %getstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool24.not = icmp eq i8 %32, 0
  br i1 %tobool24.not, label %if.end32, label %lor.lhs.false22.do.end28_crit_edge

lor.lhs.false22.do.end28_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end28:                                         ; preds = %lor.lhs.false22.do.end28_crit_edge, %if.end18.do.end28_crit_edge
  %pci_dev29 = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %33 = ptrtoint ptr %pci_dev29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev29, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %pci_slot.i.i126 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %35 = ptrtoint ptr %pci_slot.i.i126 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_slot.i.i126, align 4
  %kobj.i.i.i127 = getelementptr inbounds %struct.pci_slot, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %kobj.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %kobj.i.i.i127, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.90, ptr noundef %38) #8
  br label %out

if.end32:                                         ; preds = %lor.lhs.false22
  %is_a_board = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 4
  %39 = ptrtoint ptr %is_a_board to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %is_a_board, align 4
  %40 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status34 = getelementptr inbounds %struct.hpc_ops, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %get_adapter_status34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_adapter_status34, align 4
  %presence_save = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 7
  %call35 = call i32 %43(ptr noundef %p_slot, ptr noundef %presence_save) #5
  %44 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hpc_ops, align 4
  %get_power_status37 = getelementptr inbounds %struct.hpc_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %get_power_status37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_power_status37, align 4
  %pwr_save = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 9
  %call38 = call i32 %47(ptr noundef %p_slot, ptr noundef %pwr_save) #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %48 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool40.not = icmp eq i8 %48, 0
  br i1 %tobool40.not, label %if.end32.do.end51_crit_edge, label %do.end44

if.end32.do.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

do.end44:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev45 = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %49 = ptrtoint ptr %pci_dev45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci_dev45, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %pwr_save to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pwr_save, align 1
  %conv48 = zext i8 %52 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev46, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.85, i32 noundef %conv48) #8
  br label %do.end51

do.end51:                                         ; preds = %do.end44, %if.end32.do.end51_crit_edge
  %53 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hpc_ops, align 4
  %get_latch_status53 = getelementptr inbounds %struct.hpc_ops, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %get_latch_status53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %get_latch_status53, align 4
  %call54 = call i32 %56(ptr noundef %p_slot, ptr noundef nonnull %getstatus) #5
  %57 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctrl2, align 4
  %pci_dev56 = getelementptr inbounds %struct.controller, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %pci_dev56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci_dev56, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %62)
  %cmp = icmp eq i16 %62, 4130
  br i1 %cmp, label %land.lhs.true, label %do.end51.if.else_crit_edge

do.end51.if.else_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %do.end51
  %device = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 8
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 29784, i16 %64)
  %cmp62 = icmp eq i16 %64, 29784
  br i1 %cmp62, label %land.lhs.true64, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true64:                                  ; preds = %land.lhs.true
  %num_slots = getelementptr inbounds %struct.controller, ptr %58, i32 0, i32 2
  %65 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp66 = icmp eq i32 %66, 1
  br i1 %cmp66, label %if.then68, label %land.lhs.true64.if.else_crit_edge

land.lhs.true64.if.else_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then68:                                        ; preds = %land.lhs.true64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcix_misc2_temp.i) #5
  %67 = ptrtoint ptr %pcix_misc2_temp.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %pcix_misc2_temp.i, align 4, !annotation !252
  %call.i = call i32 @pci_read_config_dword(ptr noundef %60, i32 noundef 72, ptr noundef nonnull %pcix_misc2_temp.i) #5
  %68 = ptrtoint ptr %pcix_misc2_temp.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pcix_misc2_temp.i, align 4
  %70 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctrl2, align 4
  %pcix_misc2_reg.i = getelementptr inbounds %struct.controller, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %pcix_misc2_reg.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %pcix_misc2_reg.i, align 4
  %and5.i = and i32 %69, -8126465
  store i32 %and5.i, ptr %pcix_misc2_temp.i, align 4
  %73 = load ptr, ptr %ctrl2, align 4
  %pci_dev7.i = getelementptr inbounds %struct.controller, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %pci_dev7.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pci_dev7.i, align 4
  %call8.i = call i32 @pci_write_config_dword(ptr noundef %75, i32 noundef 72, i32 noundef %and5.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcix_misc2_temp.i) #5
  %call69 = call fastcc i32 @board_added(ptr noundef %p_slot)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcix_misc2_temp.i128) #5
  %76 = ptrtoint ptr %pcix_misc2_temp.i128 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %pcix_misc2_temp.i128, align 4, !annotation !252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcix_bridge_errors_reg.i) #5
  %77 = ptrtoint ptr %pcix_bridge_errors_reg.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %pcix_bridge_errors_reg.i, align 4, !annotation !252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcix_mem_base_reg.i) #5
  %78 = ptrtoint ptr %pcix_mem_base_reg.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %pcix_mem_base_reg.i, align 4, !annotation !252
  %79 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctrl2, align 4
  %pci_dev.i130 = getelementptr inbounds %struct.controller, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %pci_dev.i130 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pci_dev.i130, align 4
  %call.i131 = call i32 @pci_read_config_dword(ptr noundef %82, i32 noundef 128, ptr noundef nonnull %pcix_bridge_errors_reg.i) #5
  %83 = ptrtoint ptr %pcix_bridge_errors_reg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pcix_bridge_errors_reg.i, align 4
  %conv101.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv101.i)
  %tobool.not.i = icmp eq i32 %conv101.i, 0
  br i1 %tobool.not.i, label %if.then68.amd_pogo_errata_restore_misc_reg.exit_crit_edge, label %do.body.i

if.then68.amd_pogo_errata_restore_misc_reg.exit_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %amd_pogo_errata_restore_misc_reg.exit

do.body.i:                                        ; preds = %if.then68
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %85 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool1.not.i = icmp eq i8 %85, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end8.i_crit_edge, label %do.end.i

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl2, align 4
  %pci_dev5.i = getelementptr inbounds %struct.controller, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %pci_dev5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pci_dev5.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.131, i32 noundef 1) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %do.body.i.do.end8.i_crit_edge
  %90 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctrl2, align 4
  %pci_dev10.i = getelementptr inbounds %struct.controller, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %pci_dev10.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci_dev10.i, align 4
  %call12.i = call i32 @pci_write_config_dword(ptr noundef %93, i32 noundef 128, i32 noundef 1) #5
  br label %amd_pogo_errata_restore_misc_reg.exit

amd_pogo_errata_restore_misc_reg.exit:            ; preds = %do.end8.i, %if.then68.amd_pogo_errata_restore_misc_reg.exit_crit_edge
  %94 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctrl2, align 4
  %pci_dev15.i = getelementptr inbounds %struct.controller, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %pci_dev15.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pci_dev15.i, align 4
  %call16.i = call i32 @pci_read_config_dword(ptr noundef %97, i32 noundef 28, ptr noundef nonnull %pcix_mem_base_reg.i) #5
  %98 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ctrl2, align 4
  %pci_dev39.i = getelementptr inbounds %struct.controller, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %pci_dev39.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pci_dev39.i, align 4
  %call40.i = call i32 @pci_read_config_dword(ptr noundef %101, i32 noundef 72, ptr noundef nonnull %pcix_misc2_temp.i128) #5
  %102 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctrl2, align 4
  %pcix_misc2_reg.i132 = getelementptr inbounds %struct.controller, ptr %103, i32 0, i32 9
  %104 = ptrtoint ptr %pcix_misc2_reg.i132 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pcix_misc2_reg.i132, align 4
  %106 = ptrtoint ptr %pcix_misc2_temp.i128 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pcix_misc2_temp.i128, align 4
  %and45.i = and i32 %107, -8126465
  %storemerge.i = and i32 %105, 8126464
  %storemerge105.i = or i32 %storemerge.i, %and45.i
  store i32 %storemerge105.i, ptr %pcix_misc2_temp.i128, align 4
  %pci_dev84.i = getelementptr inbounds %struct.controller, ptr %103, i32 0, i32 4
  %108 = ptrtoint ptr %pci_dev84.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pci_dev84.i, align 4
  %call85.i = call i32 @pci_write_config_dword(ptr noundef %109, i32 noundef 72, i32 noundef %storemerge105.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcix_mem_base_reg.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcix_bridge_errors_reg.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcix_misc2_temp.i128) #5
  br label %if.end71

if.else:                                          ; preds = %land.lhs.true64.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %do.end51.if.else_crit_edge
  %call70 = call fastcc i32 @board_added(ptr noundef %p_slot)
  br label %if.end71

if.end71:                                         ; preds = %if.else, %amd_pogo_errata_restore_misc_reg.exit
  %retval1.0 = phi i32 [ %call69, %amd_pogo_errata_restore_misc_reg.exit ], [ %call70, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool72.not = icmp eq i32 %retval1.0, 0
  br i1 %tobool72.not, label %if.end71.if.end81_crit_edge, label %if.then73

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status75 = getelementptr inbounds %struct.hpc_ops, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %get_adapter_status75 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %get_adapter_status75, align 4
  %call77 = call i32 %113(ptr noundef %p_slot, ptr noundef %presence_save) #5
  %114 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hpc_ops, align 4
  %get_latch_status79 = getelementptr inbounds %struct.hpc_ops, ptr %115, i32 0, i32 7
  %116 = ptrtoint ptr %get_latch_status79 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %get_latch_status79, align 4
  %call80 = call i32 %117(ptr noundef %p_slot, ptr noundef nonnull %getstatus) #5
  br label %if.end81

if.end81:                                         ; preds = %if.then73, %if.end71.if.end81_crit_edge
  %118 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hpc_ops, align 4
  %get_power_status.i = getelementptr inbounds %struct.hpc_ops, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %get_power_status.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %get_power_status.i, align 4
  %call.i133 = call i32 %121(ptr noundef %p_slot, ptr noundef %pwr_save) #5
  %122 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hpc_ops, align 4
  %get_attention_status.i = getelementptr inbounds %struct.hpc_ops, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %get_attention_status.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %get_attention_status.i, align 4
  %attention_save.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 6
  %call2.i = call i32 %125(ptr noundef %p_slot, ptr noundef %attention_save.i) #5
  %126 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hpc_ops, align 4
  %get_latch_status.i = getelementptr inbounds %struct.hpc_ops, ptr %127, i32 0, i32 7
  %128 = ptrtoint ptr %get_latch_status.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %get_latch_status.i, align 4
  %latch_save.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 8
  %call4.i = call i32 %129(ptr noundef %p_slot, ptr noundef %latch_save.i) #5
  %130 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status.i = getelementptr inbounds %struct.hpc_ops, ptr %131, i32 0, i32 8
  %132 = ptrtoint ptr %get_adapter_status.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %get_adapter_status.i, align 4
  %call6.i = call i32 %133(ptr noundef %p_slot, ptr noundef %presence_save) #5
  br label %out

out:                                              ; preds = %if.end81, %do.end28, %do.end14, %do.end
  %retval1.1 = phi i32 [ -19, %do.end ], [ -19, %do.end14 ], [ -19, %do.end28 ], [ %retval1.0, %if.end81 ]
  %134 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ctrl2, align 4
  call void @mutex_unlock(ptr noundef %135) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %getstatus) #5
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shpchp_sysfs_disable_slot(ptr noundef %p_slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl2 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl2, align 4
  %lock = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %3, label %do.end20 [
    i8 2, label %sw.bb
    i8 0, label %entry.sw.bb3_crit_edge
    i8 4, label %do.end
    i8 1, label %entry.do.end14_crit_edge
    i8 3, label %entry.do.end14_crit_edge43
  ]

entry.do.end14_crit_edge43:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %work = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #5
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %state, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %call6 = tail call fastcc i32 @shpchp_disable_slot(ptr noundef %p_slot)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %state, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef %12) #8
  br label %sw.epilog

do.end14:                                         ; preds = %entry.do.end14_crit_edge, %entry.do.end14_crit_edge43
  %pci_dev15 = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %pci_dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %pci_slot.i.i39 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %pci_slot.i.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_slot.i.i39, align 4
  %kobj.i.i.i40 = getelementptr inbounds %struct.pci_slot, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %kobj.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kobj.i.i.i40, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.57, ptr noundef %18) #8
  br label %sw.epilog

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev21 = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %pci_dev21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %pci_slot.i.i41 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %pci_slot.i.i41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_slot.i.i41, align 4
  %kobj.i.i.i42 = getelementptr inbounds %struct.pci_slot, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %kobj.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kobj.i.i.i42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.52, ptr noundef %24) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end20, %do.end14, %do.end, %sw.bb3
  %retval1.0 = phi i32 [ -19, %do.end20 ], [ -19, %do.end14 ], [ -19, %do.end ], [ %call6, %sw.bb3 ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shpchp_disable_slot(ptr noundef %p_slot) unnamed_addr #0 align 64 {
entry:
  %getstatus = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %getstatus) #5
  %0 = ptrtoint ptr %getstatus to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %getstatus, align 1
  %ctrl2 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 10
  %1 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl2, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull %2, i32 noundef 0) #5
  %hpc_ops = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 11
  %3 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status = getelementptr inbounds %struct.hpc_ops, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %get_adapter_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_adapter_status, align 4
  %call = call i32 %6(ptr noundef %p_slot, ptr noundef nonnull %getstatus) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %getstatus to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %getstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %lor.lhs.false.do.end_crit_edge, label %if.end9

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kobj.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.84, ptr noundef %14) #8
  br label %out

if.end9:                                          ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hpc_ops, align 4
  %get_latch_status = getelementptr inbounds %struct.hpc_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %get_latch_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_latch_status, align 4
  %call11 = call i32 %18(ptr noundef %p_slot, ptr noundef nonnull %getstatus) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.end9.do.end18_crit_edge

if.end9.do.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

lor.lhs.false13:                                  ; preds = %if.end9
  %19 = ptrtoint ptr %getstatus to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %getstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool14.not = icmp eq i8 %20, 0
  br i1 %tobool14.not, label %if.end22, label %lor.lhs.false13.do.end18_crit_edge

lor.lhs.false13.do.end18_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false13.do.end18_crit_edge, %if.end9.do.end18_crit_edge
  %pci_dev19 = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %21 = ptrtoint ptr %pci_dev19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev19, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %pci_slot.i.i60 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %23 = ptrtoint ptr %pci_slot.i.i60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_slot.i.i60, align 4
  %kobj.i.i.i61 = getelementptr inbounds %struct.pci_slot, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %kobj.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kobj.i.i.i61, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.87, ptr noundef %26) #8
  br label %out

if.end22:                                         ; preds = %lor.lhs.false13
  %27 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hpc_ops, align 4
  %get_power_status = getelementptr inbounds %struct.hpc_ops, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %get_power_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_power_status, align 4
  %call24 = call i32 %30(ptr noundef %p_slot, ptr noundef nonnull %getstatus) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %if.end22.do.end31_crit_edge

if.end22.do.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

lor.lhs.false26:                                  ; preds = %if.end22
  %31 = ptrtoint ptr %getstatus to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %getstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool27.not = icmp eq i8 %32, 0
  br i1 %tobool27.not, label %lor.lhs.false26.do.end31_crit_edge, label %if.end35

lor.lhs.false26.do.end31_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

do.end31:                                         ; preds = %lor.lhs.false26.do.end31_crit_edge, %if.end22.do.end31_crit_edge
  %pci_dev32 = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %33 = ptrtoint ptr %pci_dev32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev32, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %pci_slot.i.i62 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 12, i32 2
  %35 = ptrtoint ptr %pci_slot.i.i62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_slot.i.i62, align 4
  %kobj.i.i.i63 = getelementptr inbounds %struct.pci_slot, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %kobj.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %kobj.i.i.i63, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef nonnull @.str.140, ptr noundef %38) #8
  br label %out

if.end35:                                         ; preds = %lor.lhs.false26
  %39 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl2, align 4
  call void @shpchp_unconfigure_device(ptr noundef %p_slot) #5
  %device.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 1
  %41 = ptrtoint ptr %device.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %device.i, align 1
  %slot_device_offset.i = getelementptr inbounds %struct.controller, ptr %40, i32 0, i32 8
  %43 = ptrtoint ptr %slot_device_offset.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %slot_device_offset.i, align 4
  %slot_list.i.i = getelementptr inbounds %struct.controller, ptr %40, i32 0, i32 5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end35
  %.pn.in.i.i = phi ptr [ %slot_list.i.i, %if.end35 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %45 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %slot_list.i.i
  br i1 %cmp.not.i.i, label %do.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %device3.i.i = getelementptr i8, ptr %.pn.i.i, i32 -47
  %46 = ptrtoint ptr %device3.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %device3.i.i, align 1
  %cmp5.i.i = icmp eq i8 %47, %42
  br i1 %cmp5.i.i, label %cleanup.loopexit.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

do.end.i.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev.i.i = getelementptr inbounds %struct.controller, ptr %40, i32 0, i32 4
  %48 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %conv12.i.i = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.61, i32 noundef %conv12.i.i) #8
  br label %shpchp_find_slot.exit.i

cleanup.loopexit.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %slot.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -48
  br label %shpchp_find_slot.exit.i

shpchp_find_slot.exit.i:                          ; preds = %cleanup.loopexit.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %slot.0.le.i.i, %cleanup.loopexit.i.i ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %50 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %shpchp_find_slot.exit.i.do.end11.i_crit_edge, label %do.end.i

shpchp_find_slot.exit.i.do.end11.i_crit_edge:     ; preds = %shpchp_find_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11.i

do.end.i:                                         ; preds = %shpchp_find_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i8 %42, %44
  %conv4.i = zext i8 %sub.i to i32
  %pci_dev.i = getelementptr inbounds %struct.controller, ptr %40, i32 0, i32 4
  %51 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143, i32 noundef %conv4.i) #8
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %shpchp_find_slot.exit.i.do.end11.i_crit_edge
  %is_a_board.i = getelementptr inbounds %struct.slot, ptr %retval.0.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %is_a_board.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %is_a_board.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool12.not.i = icmp eq i8 %54, 0
  br i1 %tobool12.not.i, label %do.end11.i.if.end14.i_crit_edge, label %if.then13.i

do.end11.i.if.end14.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then13.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.slot, ptr %retval.0.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %status.i, align 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %do.end11.i.if.end14.i_crit_edge
  %hpc_ops.i = getelementptr inbounds %struct.slot, ptr %retval.0.i.i, i32 0, i32 11
  %56 = ptrtoint ptr %hpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hpc_ops.i, align 4
  %slot_disable.i = getelementptr inbounds %struct.hpc_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %slot_disable.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %slot_disable.i, align 4
  %call15.i = call i32 %59(ptr noundef %retval.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end23.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev21.i = getelementptr inbounds %struct.controller, ptr %40, i32 0, i32 4
  %60 = ptrtoint ptr %pci_dev21.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci_dev21.i, align 4
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.143) #8
  br label %remove_board.exit

if.end23.i:                                       ; preds = %if.end14.i
  %62 = ptrtoint ptr %hpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hpc_ops.i, align 4
  %set_attention_status.i = getelementptr inbounds %struct.hpc_ops, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %set_attention_status.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_attention_status.i, align 4
  %call25.i = call i32 %65(ptr noundef %retval.0.i.i, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end33.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev31.i = getelementptr inbounds %struct.controller, ptr %40, i32 0, i32 4
  %66 = ptrtoint ptr %pci_dev31.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pci_dev31.i, align 4
  %dev32.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i, ptr noundef nonnull @.str.147) #8
  br label %remove_board.exit

if.end33.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %pwr_save.i = getelementptr inbounds %struct.slot, ptr %retval.0.i.i, i32 0, i32 9
  %68 = ptrtoint ptr %pwr_save.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %pwr_save.i, align 1
  %69 = ptrtoint ptr %is_a_board.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %is_a_board.i, align 4
  br label %remove_board.exit

remove_board.exit:                                ; preds = %if.end33.i, %do.end30.i, %do.end20.i
  %retval.0.i = phi i32 [ %call15.i, %do.end20.i ], [ %call25.i, %do.end30.i ], [ 0, %if.end33.i ]
  %70 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hpc_ops, align 4
  %get_power_status.i = getelementptr inbounds %struct.hpc_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %get_power_status.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %get_power_status.i, align 4
  %pwr_save.i65 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 9
  %call.i = call i32 %73(ptr noundef %p_slot, ptr noundef %pwr_save.i65) #5
  %74 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hpc_ops, align 4
  %get_attention_status.i = getelementptr inbounds %struct.hpc_ops, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %get_attention_status.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %get_attention_status.i, align 4
  %attention_save.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 6
  %call2.i = call i32 %77(ptr noundef %p_slot, ptr noundef %attention_save.i) #5
  %78 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hpc_ops, align 4
  %get_latch_status.i = getelementptr inbounds %struct.hpc_ops, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %get_latch_status.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %get_latch_status.i, align 4
  %latch_save.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 8
  %call4.i = call i32 %81(ptr noundef %p_slot, ptr noundef %latch_save.i) #5
  %82 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status.i = getelementptr inbounds %struct.hpc_ops, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %get_adapter_status.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %get_adapter_status.i, align 4
  %presence_save.i = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 7
  %call6.i = call i32 %85(ptr noundef %p_slot, ptr noundef %presence_save.i) #5
  br label %out

out:                                              ; preds = %remove_board.exit, %do.end31, %do.end18, %do.end
  %retval1.0 = phi i32 [ -19, %do.end ], [ -19, %do.end18 ], [ -19, %do.end31 ], [ %retval.0.i, %remove_board.exit ]
  %86 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl2, align 4
  call void @mutex_unlock(ptr noundef %87) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %out ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %getstatus) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @interrupt_event_handler(ptr noundef %work) #0 align 64 {
entry:
  %getstatus.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %p_slot1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %p_slot1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_slot1, align 4
  %lock = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %3, label %sw.default [
    i32 7, label %sw.bb
    i32 5, label %do.body
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %getstatus.i) #5
  %5 = ptrtoint ptr %getstatus.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %getstatus.i, align 1, !annotation !252
  %ctrl1.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl1.i, align 4
  %state.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %9, label %do.end51.i [
    i8 0, label %sw.bb.i
    i8 2, label %sw.bb.do.end18.i_crit_edge
    i8 1, label %sw.bb.do.end18.i_crit_edge21
    i8 4, label %sw.bb.do.end45.i_crit_edge
    i8 3, label %sw.bb.do.end45.i_crit_edge22
  ]

sw.bb.do.end45.i_crit_edge22:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45.i

sw.bb.do.end45.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45.i

sw.bb.do.end18.i_crit_edge21:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18.i

sw.bb.do.end18.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18.i

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %hpc_ops.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %hpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hpc_ops.i, align 4
  %get_power_status.i = getelementptr inbounds %struct.hpc_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %get_power_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_power_status.i, align 4
  %call.i = call i32 %14(ptr noundef %1, ptr noundef nonnull %getstatus.i) #5
  %15 = ptrtoint ptr %getstatus.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %getstatus.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %..i = select i1 %tobool.not.i, i8 1, i8 2
  %.str.69..str.66.i = select i1 %tobool.not.i, ptr @.str.69, ptr @.str.66
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %..i, ptr %state.i, align 1
  %pci_dev8.i = getelementptr inbounds %struct.controller, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %pci_dev8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev8.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %pci_slot.i.i85.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %pci_slot.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_slot.i.i85.i, align 4
  %kobj.i.i.i86.i = getelementptr inbounds %struct.pci_slot, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %kobj.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kobj.i.i.i86.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i, ptr noundef nonnull %.str.69..str.66.i, ptr noundef %23) #8
  %24 = ptrtoint ptr %hpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hpc_ops.i, align 4
  %green_led_blink.i = getelementptr inbounds %struct.hpc_ops, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %green_led_blink.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %green_led_blink.i, align 4
  call void %27(ptr noundef %1) #5
  %28 = ptrtoint ptr %hpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hpc_ops.i, align 4
  %set_attention_status.i = getelementptr inbounds %struct.hpc_ops, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %set_attention_status.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_attention_status.i, align 4
  %call13.i = call i32 %31(ptr noundef %1, i8 noundef zeroext 0) #5
  %wq.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wq.i, align 4
  %work.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 14
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %work.i, i32 noundef 500) #5
  br label %handle_button_press_event.exit

do.end18.i:                                       ; preds = %sw.bb.do.end18.i_crit_edge, %sw.bb.do.end18.i_crit_edge21
  %pci_dev19.i = getelementptr inbounds %struct.controller, ptr %7, i32 0, i32 4
  %34 = ptrtoint ptr %pci_dev19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev19.i, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %pci_slot.i.i87.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 12, i32 2
  %36 = ptrtoint ptr %pci_slot.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_slot.i.i87.i, align 4
  %kobj.i.i.i88.i = getelementptr inbounds %struct.pci_slot, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %kobj.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kobj.i.i.i88.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.72, ptr noundef %39) #8
  %work22.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 14
  %call23.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work22.i) #5
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp.i = icmp eq i8 %41, 2
  %hpc_ops28.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %hpc_ops28.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hpc_ops28.i, align 4
  %green_led_off.i = getelementptr inbounds %struct.hpc_ops, ptr %43, i32 0, i32 14
  %green_led_on.i = getelementptr inbounds %struct.hpc_ops, ptr %43, i32 0, i32 13
  %green_led_off.sink.i = select i1 %cmp.i, ptr %green_led_on.i, ptr %green_led_off.i
  %44 = ptrtoint ptr %green_led_off.sink.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %green_led_off.sink.i, align 4
  tail call void %45(ptr noundef %1) #5
  %46 = ptrtoint ptr %hpc_ops28.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hpc_ops28.i, align 4
  %set_attention_status33.i = getelementptr inbounds %struct.hpc_ops, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %set_attention_status33.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_attention_status33.i, align 4
  %call34.i = tail call i32 %49(ptr noundef %1, i8 noundef zeroext 0) #5
  %50 = ptrtoint ptr %pci_dev19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci_dev19.i, align 4
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %pci_slot.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci_slot.i.i87.i, align 4
  %kobj.i.i.i90.i = getelementptr inbounds %struct.pci_slot, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %kobj.i.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %kobj.i.i.i90.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39.i, ptr noundef nonnull @.str.75, ptr noundef %55) #8
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %state.i, align 1
  br label %handle_button_press_event.exit

do.end45.i:                                       ; preds = %sw.bb.do.end45.i_crit_edge, %sw.bb.do.end45.i_crit_edge22
  %pci_dev46.i = getelementptr inbounds %struct.controller, ptr %7, i32 0, i32 4
  %57 = ptrtoint ptr %pci_dev46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev46.i, align 4
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %pci_slot.i.i91.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 12, i32 2
  %59 = ptrtoint ptr %pci_slot.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci_slot.i.i91.i, align 4
  %kobj.i.i.i92.i = getelementptr inbounds %struct.pci_slot, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %kobj.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %kobj.i.i.i92.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47.i, ptr noundef nonnull @.str.78, ptr noundef %62) #8
  %hpc_ops.i.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %hpc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hpc_ops.i.i, align 4
  %get_power_status.i.i = getelementptr inbounds %struct.hpc_ops, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %get_power_status.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %get_power_status.i.i, align 4
  %pwr_save.i.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 9
  %call.i93.i = tail call i32 %66(ptr noundef %1, ptr noundef %pwr_save.i.i) #5
  %67 = ptrtoint ptr %hpc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hpc_ops.i.i, align 4
  %get_attention_status.i.i = getelementptr inbounds %struct.hpc_ops, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %get_attention_status.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_attention_status.i.i, align 4
  %attention_save.i.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 6
  %call2.i.i = tail call i32 %70(ptr noundef %1, ptr noundef %attention_save.i.i) #5
  %71 = ptrtoint ptr %hpc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hpc_ops.i.i, align 4
  %get_latch_status.i.i = getelementptr inbounds %struct.hpc_ops, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %get_latch_status.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %get_latch_status.i.i, align 4
  %latch_save.i.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 8
  %call4.i.i = tail call i32 %74(ptr noundef %1, ptr noundef %latch_save.i.i) #5
  %75 = ptrtoint ptr %hpc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hpc_ops.i.i, align 4
  %get_adapter_status.i.i = getelementptr inbounds %struct.hpc_ops, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %get_adapter_status.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_adapter_status.i.i, align 4
  %presence_save.i.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 7
  %call6.i.i = tail call i32 %78(ptr noundef %1, ptr noundef %presence_save.i.i) #5
  br label %handle_button_press_event.exit

do.end51.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev52.i = getelementptr inbounds %struct.controller, ptr %7, i32 0, i32 4
  %79 = ptrtoint ptr %pci_dev52.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci_dev52.i, align 4
  %dev53.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev53.i, ptr noundef nonnull @.str.81) #8
  br label %handle_button_press_event.exit

handle_button_press_event.exit:                   ; preds = %do.end51.i, %do.end45.i, %do.end18.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %getstatus.i) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %81 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not = icmp eq i8 %81, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ctrl = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 10
  %82 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %hpc_ops = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 11
  %86 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hpc_ops, align 4
  %set_attention_status = getelementptr inbounds %struct.hpc_ops, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %set_attention_status to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_attention_status, align 4
  %call = tail call i32 %89(ptr noundef %1, i8 noundef zeroext 1) #5
  %90 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hpc_ops, align 4
  %green_led_off = getelementptr inbounds %struct.hpc_ops, ptr %91, i32 0, i32 14
  %92 = ptrtoint ptr %green_led_off to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %green_led_off, align 4
  tail call void %93(ptr noundef %1) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hpc_ops.i18 = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 11
  %94 = ptrtoint ptr %hpc_ops.i18 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hpc_ops.i18, align 4
  %get_power_status.i19 = getelementptr inbounds %struct.hpc_ops, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %get_power_status.i19 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %get_power_status.i19, align 4
  %pwr_save.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 9
  %call.i20 = tail call i32 %97(ptr noundef %1, ptr noundef %pwr_save.i) #5
  %98 = ptrtoint ptr %hpc_ops.i18 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hpc_ops.i18, align 4
  %get_attention_status.i = getelementptr inbounds %struct.hpc_ops, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %get_attention_status.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %get_attention_status.i, align 4
  %attention_save.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 6
  %call2.i = tail call i32 %101(ptr noundef %1, ptr noundef %attention_save.i) #5
  %102 = ptrtoint ptr %hpc_ops.i18 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hpc_ops.i18, align 4
  %get_latch_status.i = getelementptr inbounds %struct.hpc_ops, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %get_latch_status.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %get_latch_status.i, align 4
  %latch_save.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 8
  %call4.i = tail call i32 %105(ptr noundef %1, ptr noundef %latch_save.i) #5
  %106 = ptrtoint ptr %hpc_ops.i18 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hpc_ops.i18, align 4
  %get_adapter_status.i = getelementptr inbounds %struct.hpc_ops, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %get_adapter_status.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %get_adapter_status.i, align 4
  %presence_save.i = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 7
  %call6.i = tail call i32 %109(ptr noundef %1, ptr noundef %presence_save.i) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end5, %handle_button_press_event.exit
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @kfree(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @board_added(ptr noundef %p_slot) unnamed_addr #0 align 64 {
entry:
  %asp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %asp) #5
  %0 = ptrtoint ptr %asp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %asp, align 4, !annotation !252
  %ctrl1 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 10
  %1 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl1, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subordinate, align 4
  %device = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %7 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %slot_device_offset = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %slot_device_offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slot_device_offset, align 4
  %conv2 = zext i8 %9 to i32
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %device, align 1
  %conv = zext i8 %11 to i32
  %sub = sub i8 %11, %9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %conv10 = zext i8 %sub to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv10) #8
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %hpc_ops = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 11
  %12 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hpc_ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call = tail call i32 %15(ptr noundef %p_slot) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 4
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.98) #8
  br label %cleanup

if.end20:                                         ; preds = %do.end12
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %19)
  %cmp = icmp eq i16 %19, -32634
  br i1 %cmp, label %land.lhs.true, label %if.end20.if.end50_crit_edge

if.end20.if.end50_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end20
  %device25 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %device25 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 818, i16 %21)
  %cmp27 = icmp eq i16 %21, 818
  br i1 %cmp27, label %if.then29, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then29:                                        ; preds = %land.lhs.true
  %22 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hpc_ops, align 4
  %set_bus_speed_mode = getelementptr inbounds %struct.hpc_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %set_bus_speed_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_bus_speed_mode, align 4
  %call31 = tail call i32 %25(ptr noundef %p_slot, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_dev, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.96) #8
  br label %cleanup

if.end39:                                         ; preds = %if.then29
  %28 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hpc_ops, align 4
  %slot_enable = getelementptr inbounds %struct.hpc_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %slot_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slot_enable, align 4
  %call41 = tail call i32 %31(ptr noundef %p_slot) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end39.if.end50_crit_edge, label %do.end46

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.104) #8
  br label %cleanup

if.end50:                                         ; preds = %if.end39.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %if.end20.if.end50_crit_edge
  %34 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_speed = getelementptr inbounds %struct.hpc_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %get_adapter_speed to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_adapter_speed, align 4
  %call52 = call i32 %37(ptr noundef %p_slot, ptr noundef nonnull %asp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  %38 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci_dev, align 4
  br i1 %tobool53.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.107) #8
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  %subordinate62 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %subordinate62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %subordinate62, align 4
  %cur_bus_speed = getelementptr inbounds %struct.pci_bus, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %cur_bus_speed to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cur_bus_speed, align 1
  %conv63 = zext i8 %43 to i32
  %max_bus_speed = getelementptr inbounds %struct.pci_bus, ptr %41, i32 0, i32 14
  %44 = ptrtoint ptr %max_bus_speed to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %max_bus_speed, align 2
  %conv66 = zext i8 %45 to i32
  %devices = getelementptr inbounds %struct.pci_bus, ptr %41, i32 0, i32 3
  %46 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %devices, align 4
  %cmp.i.not = icmp ne ptr %47, %devices
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %48 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool74.not = icmp eq i8 %48, 0
  br i1 %tobool74.not, label %if.end60.do.end84_crit_edge, label %do.end78

if.end60.do.end84_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end84

do.end78:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %conv81 = zext i1 %cmp.i.not to i32
  %49 = ptrtoint ptr %asp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %asp, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev80, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.96, i32 noundef %conv81, i32 noundef %50, i32 noundef %conv63, i32 noundef %conv66) #8
  br label %do.end84

do.end84:                                         ; preds = %do.end78, %if.end60.do.end84_crit_edge
  %51 = ptrtoint ptr %asp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %asp, align 4
  br i1 %cmp.i.not, label %if.then.i, label %if.end2.i

if.then.i:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv63)
  %cmp.i221 = icmp ult i32 %52, %conv63
  br i1 %cmp.i221, label %do.end.i, label %if.then.i.if.end88_crit_edge

if.then.i.if.end88_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_dev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.125, i32 noundef %conv63, i32 noundef %52) #8
  br label %cleanup

if.end2.i:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv66)
  %cmp3.i = icmp ult i32 %52, %conv66
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv63)
  %cmp5.not.i = icmp eq i32 %52, %conv63
  br i1 %cmp5.not.i, label %if.then4.i.if.end88_crit_edge, label %if.then6.i

if.then4.i.if.end88_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then6.i:                                       ; preds = %if.then4.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %55 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %if.then6.i.do.end3.i.i_crit_edge, label %do.end.i.i

if.then6.i.do.end3.i.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci_dev, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i.i, ptr noundef nonnull @.str.127, i32 noundef %52) #8
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.then6.i.do.end3.i.i_crit_edge
  %58 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hpc_ops, align 4
  %set_bus_speed_mode.i.i = getelementptr inbounds %struct.hpc_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %set_bus_speed_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_bus_speed_mode.i.i, align 4
  %call.i.i = call i32 %61(ptr noundef %p_slot, i32 noundef %52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %do.end3.i.i.if.end88_crit_edge, label %do.end8.i.i

do.end3.i.i.if.end88_crit_edge:                   ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

do.end8.i.i:                                      ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci_dev, align 4
  %dev10.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i.i, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.128) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp8.not.i = icmp eq i8 %43, %45
  br i1 %cmp8.not.i, label %if.else.i.if.end88_crit_edge, label %if.then9.i

if.else.i.if.end88_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then9.i:                                       ; preds = %if.else.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %64 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i26.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i26.i, label %if.then9.i.do.end3.i34.i_crit_edge, label %do.end.i29.i

if.then9.i.do.end3.i34.i_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3.i34.i

do.end.i29.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci_dev, align 4
  %dev.i28.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i28.i, ptr noundef nonnull @.str.127, i32 noundef %conv66) #8
  br label %do.end3.i34.i

do.end3.i34.i:                                    ; preds = %do.end.i29.i, %if.then9.i.do.end3.i34.i_crit_edge
  %67 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hpc_ops, align 4
  %set_bus_speed_mode.i31.i = getelementptr inbounds %struct.hpc_ops, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %set_bus_speed_mode.i31.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_bus_speed_mode.i31.i, align 4
  %call.i32.i = call i32 %70(ptr noundef %p_slot, i32 noundef %conv66) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool4.not.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool4.not.i33.i, label %do.end3.i34.i.if.end88_crit_edge, label %do.end8.i37.i

do.end3.i34.i.if.end88_crit_edge:                 ; preds = %do.end3.i34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

do.end8.i37.i:                                    ; preds = %do.end3.i34.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci_dev, align 4
  %dev10.i36.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i36.i, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.128) #8
  br label %cleanup

if.end88:                                         ; preds = %do.end3.i34.i.if.end88_crit_edge, %if.else.i.if.end88_crit_edge, %do.end3.i.i.if.end88_crit_edge, %if.then4.i.if.end88_crit_edge, %if.then.i.if.end88_crit_edge
  %73 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hpc_ops, align 4
  %slot_enable90 = getelementptr inbounds %struct.hpc_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %slot_enable90 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %slot_enable90, align 4
  %call91 = call i32 %76(ptr noundef %p_slot) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end99, label %do.end96

do.end96:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pci_dev, align 4
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev98, ptr noundef nonnull @.str.104) #8
  br label %cleanup

if.end99:                                         ; preds = %if.end88
  call void @msleep(i32 noundef 1000) #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %79 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool101.not = icmp eq i8 %79, 0
  br i1 %tobool101.not, label %if.end99.do.end111_crit_edge, label %do.end105

if.end99.do.end111_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end111

do.end105:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci_dev, align 4
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %status = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 2
  %82 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %status, align 2
  %conv108 = zext i16 %83 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev107, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.96, i32 noundef %conv108) #8
  br label %do.end111

do.end111:                                        ; preds = %do.end105, %if.end99.do.end111_crit_edge
  %status112 = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 2
  %84 = ptrtoint ptr %status112 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %status112, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %85)
  %cmp114 = icmp eq i16 %85, 255
  br i1 %cmp114, label %do.body117, label %if.end129

do.body117:                                       ; preds = %do.end111
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @shpchp_debug to i32))
  %86 = load i8, ptr @shpchp_debug, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool118.not = icmp eq i8 %86, 0
  br i1 %tobool118.not, label %do.body117.do.end127_crit_edge, label %do.end122

do.body117.do.end127_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end127

do.end122:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pci_dev, align 4
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev124, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.96) #8
  br label %do.end127

do.end127:                                        ; preds = %do.end122, %do.body117.do.end127_crit_edge
  %89 = ptrtoint ptr %status112 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %status112, align 2
  br label %err_exit

if.end129:                                        ; preds = %do.end111
  %call130 = call i32 @shpchp_configure_device(ptr noundef %p_slot) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end142, label %do.end135

do.end135:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pci_dev, align 4
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 16
  %92 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %domain_nr.i, align 8
  %94 = ptrtoint ptr %p_slot to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %p_slot, align 4
  %conv139 = zext i8 %95 to i32
  %96 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %device, align 1
  %conv141 = zext i8 %97 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev137, ptr noundef nonnull @.str.120, i32 noundef %93, i32 noundef %conv139, i32 noundef %conv141) #8
  br label %err_exit

if.end142:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %status112 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %status112, align 2
  %is_a_board = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 4
  %99 = ptrtoint ptr %is_a_board to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %is_a_board, align 4
  %pwr_save = getelementptr inbounds %struct.slot, ptr %p_slot, i32 0, i32 9
  %100 = ptrtoint ptr %pwr_save to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %pwr_save, align 1
  %101 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hpc_ops, align 4
  %green_led_on = getelementptr inbounds %struct.hpc_ops, ptr %102, i32 0, i32 13
  %103 = ptrtoint ptr %green_led_on to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %green_led_on, align 4
  call void %104(ptr noundef %p_slot) #5
  br label %cleanup

err_exit:                                         ; preds = %do.end135, %do.end127
  %105 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hpc_ops, align 4
  %slot_disable = getelementptr inbounds %struct.hpc_ops, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %slot_disable to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %slot_disable, align 4
  %call146 = call i32 %108(ptr noundef %p_slot) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %err_exit.cleanup_crit_edge, label %do.end151

err_exit.cleanup_crit_edge:                       ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end151:                                        ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pci_dev, align 4
  %dev153 = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev153, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.96) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end151, %err_exit.cleanup_crit_edge, %if.end142, %do.end96, %do.end8.i37.i, %do.end8.i.i, %do.end.i, %do.end57, %do.end46, %do.end36, %do.end17
  %retval.0 = phi i32 [ -1, %do.end17 ], [ 13, %do.end36 ], [ %call41, %do.end46 ], [ 13, %do.end57 ], [ %call91, %do.end96 ], [ %call146, %do.end151 ], [ 0, %if.end142 ], [ 0, %err_exit.cleanup_crit_edge ], [ 13, %do.end.i ], [ 13, %do.end8.i.i ], [ 13, %do.end8.i37.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %asp) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shpchp_configure_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @shpchp_unconfigure_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !102, !103, !104, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !207, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !240, !241}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 51, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @shpchp_handle_attention_button._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @shpchp_handle_attention_button._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 59, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @shpchp_handle_attention_button._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @shpchp_handle_attention_button._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 75, i32 2}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @shpchp_handle_switch_change._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @shpchp_handle_switch_change._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 80, i32 2}
!20 = !{ptr @shpchp_handle_switch_change._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @shpchp_handle_switch_change._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 87, i32 3}
!24 = !{ptr @shpchp_handle_switch_change._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @shpchp_handle_switch_change._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 91, i32 4}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @shpchp_handle_switch_change._entry.17, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @shpchp_handle_switch_change._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 97, i32 3}
!33 = !{ptr @shpchp_handle_switch_change._entry.21, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @shpchp_handle_switch_change._entry_ptr.23, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 112, i32 2}
!37 = !{ptr @.str.25, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @shpchp_handle_presence_change._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @shpchp_handle_presence_change._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 124, i32 3}
!42 = !{ptr @shpchp_handle_presence_change._entry.26, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @shpchp_handle_presence_change._entry_ptr.28, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 131, i32 3}
!46 = !{ptr @shpchp_handle_presence_change._entry.29, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @shpchp_handle_presence_change._entry_ptr.31, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 147, i32 2}
!50 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @shpchp_handle_power_fault._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @shpchp_handle_power_fault._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 155, i32 3}
!55 = !{ptr @shpchp_handle_power_fault._entry.34, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @shpchp_handle_power_fault._entry_ptr.36, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 163, i32 3}
!59 = !{ptr @shpchp_handle_power_fault._entry.37, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @shpchp_handle_power_fault._entry_ptr.39, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 167, i32 3}
!63 = !{ptr @shpchp_handle_power_fault._entry.40, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @shpchp_handle_power_fault._entry_ptr.42, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 423, i32 3}
!67 = !{ptr @.str.44, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @shpchp_queue_pushbutton_work._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @shpchp_queue_pushbutton_work._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @shpchp_queue_pushbutton_work.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 428, i32 2}
!72 = !{ptr @.str.45, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 653, i32 3}
!75 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @shpchp_sysfs_enable_slot._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @shpchp_sysfs_enable_slot._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.49, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 658, i32 3}
!80 = !{ptr @shpchp_sysfs_enable_slot._entry.48, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @shpchp_sysfs_enable_slot._entry_ptr.50, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.52, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 662, i32 3}
!84 = !{ptr @shpchp_sysfs_enable_slot._entry.51, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @shpchp_sysfs_enable_slot._entry_ptr.53, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 689, i32 3}
!88 = !{ptr @.str.55, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @shpchp_sysfs_disable_slot._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @shpchp_sysfs_disable_slot._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.57, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 694, i32 3}
!93 = !{ptr @shpchp_sysfs_disable_slot._entry.56, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @shpchp_sysfs_disable_slot._entry_ptr.58, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @shpchp_sysfs_disable_slot._entry.59, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 698, i32 3}
!97 = !{ptr @shpchp_sysfs_disable_slot._entry_ptr.60, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/hotplug/shpchp.h", i32 224, i32 2}
!100 = !{ptr @.str.62, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.63, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @shpchp_find_slot._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @shpchp_find_slot._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @queue_interrupt_event.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 38, i32 2}
!106 = !{ptr @.str.64, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 528, i32 3}
!108 = !{ptr @.str.65, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @interrupt_event_handler._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @interrupt_event_handler._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 468, i32 4}
!113 = !{ptr @.str.67, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @handle_button_press_event._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @handle_button_press_event._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 472, i32 4}
!118 = !{ptr @handle_button_press_event._entry.68, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @handle_button_press_event._entry_ptr.70, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.72, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 488, i32 3}
!122 = !{ptr @handle_button_press_event._entry.71, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @handle_button_press_event._entry_ptr.73, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.75, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 496, i32 3}
!126 = !{ptr @handle_button_press_event._entry.74, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @handle_button_press_event._entry_ptr.76, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.78, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 507, i32 3}
!130 = !{ptr @handle_button_press_event._entry.77, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @handle_button_press_event._entry_ptr.79, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.81, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 512, i32 3}
!134 = !{ptr @.str.82, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @handle_button_press_event._entry.80, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @handle_button_press_event._entry_ptr.83, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.84, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 552, i32 3}
!139 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @shpchp_enable_slot._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @shpchp_enable_slot._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.87, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 557, i32 3}
!144 = !{ptr @shpchp_enable_slot._entry.86, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @shpchp_enable_slot._entry_ptr.88, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.90, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 562, i32 3}
!148 = !{ptr @shpchp_enable_slot._entry.89, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @shpchp_enable_slot._entry_ptr.91, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.93, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 572, i32 2}
!152 = !{ptr @shpchp_enable_slot._entry.92, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @shpchp_enable_slot._entry_ptr.94, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.95, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 240, i32 2}
!156 = !{ptr @.str.96, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @board_added._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @board_added._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.98, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 246, i32 3}
!161 = !{ptr @board_added._entry.97, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @board_added._entry_ptr.99, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.101, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 253, i32 4}
!165 = !{ptr @board_added._entry.100, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @board_added._entry_ptr.102, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.104, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 261, i32 4}
!169 = !{ptr @board_added._entry.103, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @board_added._entry_ptr.105, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.107, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 268, i32 3}
!173 = !{ptr @board_added._entry.106, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @board_added._entry_ptr.108, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.110, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 279, i32 2}
!177 = !{ptr @board_added._entry.109, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @board_added._entry_ptr.111, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @board_added._entry.112, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 290, i32 3}
!181 = !{ptr @board_added._entry_ptr.113, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.115, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 297, i32 2}
!184 = !{ptr @board_added._entry.114, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @board_added._entry_ptr.116, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @board_added._entry.117, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 301, i32 3}
!188 = !{ptr @board_added._entry_ptr.118, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.120, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 307, i32 3}
!191 = !{ptr @board_added._entry.119, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @board_added._entry_ptr.121, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.123, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 324, i32 3}
!195 = !{ptr @board_added._entry.122, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @board_added._entry_ptr.124, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.125, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 205, i32 4}
!199 = !{ptr @.str.126, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @fix_bus_speed._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @fix_bus_speed._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.127, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 183, i32 2}
!204 = !{ptr @.str.128, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @change_bus_speed._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @change_bus_speed._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @change_bus_speed._entry.129, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 186, i32 3}
!209 = !{ptr @change_bus_speed._entry_ptr.130, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.131, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pci/hotplug/shpchp.h", i32 258, i32 3}
!212 = !{ptr @.str.132, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @amd_pogo_errata_restore_misc_reg._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @amd_pogo_errata_restore_misc_reg._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.134, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pci/hotplug/shpchp.h", i32 269, i32 3}
!217 = !{ptr @amd_pogo_errata_restore_misc_reg._entry.133, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @amd_pogo_errata_restore_misc_reg._entry_ptr.135, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.136, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 613, i32 3}
!221 = !{ptr @shpchp_disable_slot._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @shpchp_disable_slot._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @shpchp_disable_slot._entry.137, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 618, i32 3}
!225 = !{ptr @shpchp_disable_slot._entry_ptr.138, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.140, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 623, i32 3}
!228 = !{ptr @shpchp_disable_slot._entry.139, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @shpchp_disable_slot._entry_ptr.141, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.142, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 348, i32 2}
!232 = !{ptr @.str.143, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @remove_board._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @remove_board._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @remove_board._entry.144, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 357, i32 3}
!237 = !{ptr @remove_board._entry_ptr.145, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.147, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pci/hotplug/shpchp_ctrl.c", i32 364, i32 3}
!240 = !{ptr @remove_board._entry.146, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @remove_board._entry_ptr.148, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 1, !"min_enum_size", i32 4}
!244 = !{i32 8, !"branch-target-enforcement", i32 0}
!245 = !{i32 8, !"sign-return-address", i32 0}
!246 = !{i32 8, !"sign-return-address-all", i32 0}
!247 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!248 = !{i32 7, !"uwtable", i32 1}
!249 = !{i32 7, !"frame-pointer", i32 2}
!250 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!251 = !{i8 0, i8 2}
!252 = !{!"auto-init"}
