; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/pciehp_ctrl.c_pt.bc'
source_filename = "../drivers/pci/hotplug/pciehp_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.controller = type { ptr, i32, i8, i16, %struct.mutex, i32, i8, %struct.wait_queue_head, %struct.atomic_t, i8, i32, ptr, i8, %struct.mutex, %struct.delayed_work, %struct.hotplug_slot, %struct.rw_semaphore, i32, i32, i32, %struct.wait_queue_head }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@pciehp_poll_mode = external dso_local local_unnamed_addr global i8, align 1
@pciehp_handle_button_press._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pciehp: Slot(%s): Powering off due to button press\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pciehp_handle_button_press\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pci/hotplug/pciehp_ctrl.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pciehp_handle_button_press._entry_ptr = internal global ptr @pciehp_handle_button_press._entry, section ".printk_index", align 4
@pciehp_handle_button_press._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"pciehp: Slot(%s) Powering on due to button press\0A\00", [46 x i8] zeroinitializer }, align 32
@pciehp_handle_button_press._entry_ptr.7 = internal global ptr @pciehp_handle_button_press._entry.5, section ".printk_index", align 4
@pciehp_handle_button_press._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pciehp: Slot(%s): Button cancel\0A\00", [63 x i8] zeroinitializer }, align 32
@pciehp_handle_button_press._entry_ptr.10 = internal global ptr @pciehp_handle_button_press._entry.8, section ".printk_index", align 4
@pciehp_handle_button_press._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"pciehp: Slot(%s): Action canceled due to button press\0A\00", [41 x i8] zeroinitializer }, align 32
@pciehp_handle_button_press._entry_ptr.13 = internal global ptr @pciehp_handle_button_press._entry.11, section ".printk_index", align 4
@pciehp_handle_button_press._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 204, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"pciehp: Slot(%s): Ignoring invalid state %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pciehp_handle_button_press._entry_ptr.17 = internal global ptr @pciehp_handle_button_press._entry.14, section ".printk_index", align 4
@pciehp_handle_presence_or_link_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pciehp: Slot(%s): Link Down\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pciehp_handle_presence_or_link_change\00", [58 x i8] zeroinitializer }, align 32
@pciehp_handle_presence_or_link_change._entry_ptr = internal global ptr @pciehp_handle_presence_or_link_change._entry, section ".printk_index", align 4
@pciehp_handle_presence_or_link_change._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pciehp: Slot(%s): Card not present\0A\00", [60 x i8] zeroinitializer }, align 32
@pciehp_handle_presence_or_link_change._entry_ptr.22 = internal global ptr @pciehp_handle_presence_or_link_change._entry.20, section ".printk_index", align 4
@pciehp_handle_presence_or_link_change._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pciehp: Slot(%s): Card present\0A\00", [32 x i8] zeroinitializer }, align 32
@pciehp_handle_presence_or_link_change._entry_ptr.25 = internal global ptr @pciehp_handle_presence_or_link_change._entry.23, section ".printk_index", align 4
@pciehp_handle_presence_or_link_change._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 275, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pciehp: Slot(%s): Link Up\0A\00", [37 x i8] zeroinitializer }, align 32
@pciehp_handle_presence_or_link_change._entry_ptr.28 = internal global ptr @pciehp_handle_presence_or_link_change._entry.26, section ".printk_index", align 4
@pciehp_sysfs_enable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"pciehp: Slot(%s): Already in powering on state\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pciehp_sysfs_enable_slot\00", [39 x i8] zeroinitializer }, align 32
@pciehp_sysfs_enable_slot._entry_ptr = internal global ptr @pciehp_sysfs_enable_slot._entry, section ".printk_index", align 4
@pciehp_sysfs_enable_slot._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pciehp: Slot(%s): Already enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@pciehp_sysfs_enable_slot._entry_ptr.33 = internal global ptr @pciehp_sysfs_enable_slot._entry.31, section ".printk_index", align 4
@pciehp_sysfs_enable_slot._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 391, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pciehp: Slot(%s): Invalid state %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@pciehp_sysfs_enable_slot._entry_ptr.36 = internal global ptr @pciehp_sysfs_enable_slot._entry.34, section ".printk_index", align 4
@pciehp_sysfs_disable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pciehp: Slot(%s): Already in powering off state\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pciehp_sysfs_disable_slot\00", [38 x i8] zeroinitializer }, align 32
@pciehp_sysfs_disable_slot._entry_ptr = internal global ptr @pciehp_sysfs_disable_slot._entry, section ".printk_index", align 4
@pciehp_sysfs_disable_slot._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 421, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pciehp: Slot(%s): Already disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@pciehp_sysfs_disable_slot._entry_ptr.41 = internal global ptr @pciehp_sysfs_disable_slot._entry.39, section ".printk_index", align 4
@pciehp_sysfs_disable_slot._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.38, ptr @.str.2, i32 425, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pciehp_sysfs_disable_slot._entry_ptr.43 = internal global ptr @pciehp_sysfs_disable_slot._entry.42, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__pciehp_enable_slot._entry = internal constant %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, align 1
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pciehp: Slot(%s): Latch open\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__pciehp_enable_slot\00", [43 x i8] zeroinitializer }, align 32
@__pciehp_enable_slot._entry_ptr = internal global ptr @__pciehp_enable_slot._entry, section ".printk_index", align 4
@__pciehp_enable_slot._entry.46 = internal constant %struct.pi_entry { ptr @.str.32, ptr @.str.45, ptr @.str.2, i32 301, ptr @.str.3, ptr @.str.4 }, align 1
@__pciehp_enable_slot._entry_ptr.47 = internal global ptr @__pciehp_enable_slot._entry.46, section ".printk_index", align 4
@board_added._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 81, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pciehp: Slot(%s): Power fault\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"board_added\00", [20 x i8] zeroinitializer }, align 32
@board_added._entry_ptr = internal global ptr @board_added._entry, section ".printk_index", align 4
@board_added._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 90, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pciehp: Cannot add device at %04x:%02x:00\0A\00", [53 x i8] zeroinitializer }, align 32
@board_added._entry_ptr.52 = internal global ptr @board_added._entry.50, section ".printk_index", align 4
@__pciehp_disable_slot._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.53, ptr @.str.2, i32 336, ptr @.str.3, ptr @.str.4 }, align 1
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__pciehp_disable_slot\00", [42 x i8] zeroinitializer }, align 32
@__pciehp_disable_slot._entry_ptr = internal global ptr @__pciehp_disable_slot._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.59 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 169, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 173, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 188, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 199, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 203, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 242, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 245, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 271, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 274, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 380, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 386, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 390, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 414, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 420, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 424, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 291, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 81, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 89, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [37 x i8] c"../drivers/pci/hotplug/pciehp_ctrl.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 335, i32 4 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__pciehp_disable_slot._entry, ptr @__pciehp_disable_slot._entry_ptr, ptr @__pciehp_enable_slot._entry, ptr @__pciehp_enable_slot._entry.46, ptr @__pciehp_enable_slot._entry_ptr, ptr @__pciehp_enable_slot._entry_ptr.47, ptr @board_added._entry, ptr @board_added._entry.50, ptr @board_added._entry_ptr, ptr @board_added._entry_ptr.52, ptr @pciehp_handle_button_press._entry, ptr @pciehp_handle_button_press._entry.11, ptr @pciehp_handle_button_press._entry.14, ptr @pciehp_handle_button_press._entry.5, ptr @pciehp_handle_button_press._entry.8, ptr @pciehp_handle_button_press._entry_ptr, ptr @pciehp_handle_button_press._entry_ptr.10, ptr @pciehp_handle_button_press._entry_ptr.13, ptr @pciehp_handle_button_press._entry_ptr.17, ptr @pciehp_handle_button_press._entry_ptr.7, ptr @pciehp_handle_presence_or_link_change._entry, ptr @pciehp_handle_presence_or_link_change._entry.20, ptr @pciehp_handle_presence_or_link_change._entry.23, ptr @pciehp_handle_presence_or_link_change._entry.26, ptr @pciehp_handle_presence_or_link_change._entry_ptr, ptr @pciehp_handle_presence_or_link_change._entry_ptr.22, ptr @pciehp_handle_presence_or_link_change._entry_ptr.25, ptr @pciehp_handle_presence_or_link_change._entry_ptr.28, ptr @pciehp_sysfs_disable_slot._entry, ptr @pciehp_sysfs_disable_slot._entry.39, ptr @pciehp_sysfs_disable_slot._entry.42, ptr @pciehp_sysfs_disable_slot._entry_ptr, ptr @pciehp_sysfs_disable_slot._entry_ptr.41, ptr @pciehp_sysfs_disable_slot._entry_ptr.43, ptr @pciehp_sysfs_enable_slot._entry, ptr @pciehp_sysfs_enable_slot._entry.31, ptr @pciehp_sysfs_enable_slot._entry.34, ptr @pciehp_sysfs_enable_slot._entry_ptr, ptr @pciehp_sysfs_enable_slot._entry_ptr.33, ptr @pciehp_sysfs_enable_slot._entry_ptr.36, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_handle_button_press._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_handle_button_press._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_handle_button_press._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_handle_button_press._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_handle_button_press._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_handle_presence_or_link_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_handle_presence_or_link_change._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_handle_presence_or_link_change._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_handle_presence_or_link_change._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_sysfs_enable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_sysfs_enable_slot._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_sysfs_enable_slot._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_sysfs_disable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_sysfs_disable_slot._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_sysfs_disable_slot._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_added._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_request(ptr noundef %ctrl, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_events = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_events, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %pending_events, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events, ptr %pending_events, i32 %action, ptr elementtype(i32) %pending_events) #5, !srcloc !97
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %1 = load i8, ptr @pciehp_poll_mode, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  tail call void @irq_wake_thread(i32 noundef %5, ptr noundef %ctrl) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_wake_thread(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_queue_pushbutton_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -276
  %state_lock = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %state = getelementptr i8, ptr %work, i32 -96
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pending_events.i = getelementptr i8, ptr %work, i32 -112
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_events.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %pending_events.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events.i, ptr %pending_events.i, i32 65536, ptr elementtype(i32) %pending_events.i) #5, !srcloc !97
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %4 = load i8, ptr @pciehp_poll_mode, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %pending_events.i7 = getelementptr i8, ptr %work, i32 -112
  %call.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_events.i7, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %pending_events.i7, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events.i7, ptr %pending_events.i7, i32 8, ptr elementtype(i32) %pending_events.i7) #5, !srcloc !97
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %6 = load i8, ptr @pciehp_poll_mode, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i9 = icmp eq i8 %6, 0
  br i1 %tobool.not.i9, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  tail call void @irq_wake_thread(i32 noundef %10, ptr noundef %add.ptr) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_handle_button_press(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %1, label %do.end38 [
    i8 1, label %entry.do.end15_crit_edge
    i8 2, label %entry.do.end15_crit_edge81
    i8 5, label %entry.if.end_crit_edge
    i8 0, label %if.else
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.do.end15_crit_edge81:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.else ], [ 2, %entry.if.end_crit_edge ]
  %.str.6.sink = phi ptr [ @.str.6, %if.else ], [ @.str, %entry.if.end_crit_edge ]
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %state, align 4
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %port9 = getelementptr inbounds %struct.pcie_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port9, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %pci_slot.i.i70 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %pci_slot.i.i70 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_slot.i.i70, align 4
  %kobj.i.i.i71 = getelementptr inbounds %struct.pci_slot, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %kobj.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kobj.i.i.i71, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull %.str.6.sink, ptr noundef %11) #8
  tail call void @pciehp_set_indicators(ptr noundef %ctrl, i32 noundef 512, i32 noundef 192) #5
  %button_work = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %button_work, i32 noundef 500) #5
  br label %sw.epilog

do.end15:                                         ; preds = %entry.do.end15_crit_edge, %entry.do.end15_crit_edge81
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl, align 4
  %port17 = getelementptr inbounds %struct.pcie_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %port17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port17, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %pci_slot.i.i72 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %17 = ptrtoint ptr %pci_slot.i.i72 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_slot.i.i72, align 4
  %kobj.i.i.i73 = getelementptr inbounds %struct.pci_slot, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %kobj.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kobj.i.i.i73, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.9, ptr noundef %20) #8
  %button_work20 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  %call21 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %button_work20) #5
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp24 = icmp eq i8 %22, 2
  %. = select i1 %cmp24, i8 5, i8 0
  %.80 = select i1 %cmp24, i32 256, i32 768
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %., ptr %state, align 4
  tail call void @pciehp_set_indicators(ptr noundef %ctrl, i32 noundef %.80, i32 noundef 192) #5
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl, align 4
  %port34 = getelementptr inbounds %struct.pcie_device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %port34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %pci_slot.i.i72 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_slot.i.i72, align 4
  %kobj.i.i.i75 = getelementptr inbounds %struct.pci_slot, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %kobj.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %kobj.i.i.i75, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev35, ptr noundef nonnull @.str.12, ptr noundef %31) #8
  br label %sw.epilog

do.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl, align 4
  %port40 = getelementptr inbounds %struct.pcie_device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %port40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port40, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %pci_slot.i.i76 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %36 = ptrtoint ptr %pci_slot.i.i76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_slot.i.i76, align 4
  %kobj.i.i.i77 = getelementptr inbounds %struct.pci_slot, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %kobj.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kobj.i.i.i77, align 4
  %conv44 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.15, ptr noundef %39, i32 noundef %conv44) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end38, %do.end15, %if.end
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_set_indicators(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_handle_disable_request(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %.off = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %button_work = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %button_work) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  %call3 = tail call fastcc i32 @pciehp_disable_slot(ptr noundef %ctrl, i1 noundef zeroext true)
  %request_result = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 19
  %3 = ptrtoint ptr %request_result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call3, ptr %request_result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pciehp_disable_slot(ptr noundef %ctrl, i1 noundef zeroext %safe_removal) unnamed_addr #0 align 64 {
entry:
  %getstatus.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %getstatus.i) #5
  %4 = ptrtoint ptr %getstatus.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %getstatus.i, align 1
  %slot_cap.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 1
  %5 = ptrtoint ptr %slot_cap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slot_cap.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  call void @pciehp_get_power_status(ptr noundef %ctrl, ptr noundef nonnull %getstatus.i) #5
  %7 = ptrtoint ptr %getstatus.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %getstatus.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %pci_slot.i.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %13 = ptrtoint ptr %pci_slot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_slot.i.i.i, align 4
  %kobj.i.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %kobj.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kobj.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef %16) #8
  br label %__pciehp_disable_slot.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  call void @pciehp_unconfigure_device(ptr noundef %ctrl, i1 noundef zeroext %safe_removal) #5
  %17 = ptrtoint ptr %slot_cap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slot_cap.i, align 4
  %and.i.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.remove_board.exit.i_crit_edge, label %if.then.i.i

if.end3.i.remove_board.exit.i_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_board.exit.i

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @pciehp_power_off_slot(ptr noundef %ctrl) #5
  call void @msleep(i32 noundef 1000) #5
  %pending_events.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_events.i.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %pending_events.i.i, i32 1, i32 3, i32 1) #5
  %19 = call { i32, i32 } asm sideeffect "@ atomic_and\0A1:\09ldrex\09$0, [$3]\0A\09and\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events.i.i, ptr %pending_events.i.i, i32 -265, ptr elementtype(i32) %pending_events.i.i) #5, !srcloc !99
  br label %remove_board.exit.i

remove_board.exit.i:                              ; preds = %if.then.i.i, %if.end3.i.remove_board.exit.i_crit_edge
  call void @pciehp_set_indicators(ptr noundef %ctrl, i32 noundef 768, i32 noundef -1) #5
  br label %__pciehp_disable_slot.exit

__pciehp_disable_slot.exit:                       ; preds = %remove_board.exit.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %remove_board.exit.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %getstatus.i) #5
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl, align 4
  %port3 = getelementptr inbounds %struct.pcie_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port3, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call.i12 = call i32 @__pm_runtime_idle(ptr noundef %dev4, i32 noundef 5) #5
  %state_lock = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %state_lock) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_handle_presence_or_link_change(ptr noundef %ctrl, i32 noundef %events) local_unnamed_addr #0 align 64 {
entry:
  %getstatus.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %1, label %sw.default [
    i8 2, label %sw.bb
    i8 5, label %entry.sw.bb1_crit_edge
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %button_work = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %button_work) #5
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  %and = and i32 %events, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb1.if.end_crit_edge, label %do.end

sw.bb1.if.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %11) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb1.if.end_crit_edge
  %and5 = and i32 %events, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end15_crit_edge, label %do.end10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl, align 4
  %port12 = getelementptr inbounds %struct.pcie_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %port12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port12, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %pci_slot.i.i88 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %16 = ptrtoint ptr %pci_slot.i.i88 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_slot.i.i88, align 4
  %kobj.i.i.i89 = getelementptr inbounds %struct.pci_slot, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %kobj.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kobj.i.i.i89, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.21, ptr noundef %19) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end10, %if.end.if.end15_crit_edge
  %call16 = tail call fastcc i32 @pciehp_disable_slot(ptr noundef %ctrl, i1 noundef zeroext false)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end15
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %call19 = tail call i32 @pciehp_card_present(ptr noundef %ctrl) #5
  %call20 = tail call i32 @pciehp_check_link_active(ptr noundef %ctrl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp = icmp slt i32 %call19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 1
  %or.cond = select i1 %cmp, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then24, label %if.end26

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  br label %cleanup

if.end26:                                         ; preds = %sw.epilog
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state, align 4
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %21, label %sw.default56 [
    i8 1, label %sw.bb29
    i8 0, label %if.end26.sw.bb32_crit_edge
  ]

if.end26.sw.bb32_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

sw.bb29:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %button_work30 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  %call31 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %button_work30) #5
  br label %sw.bb32

sw.bb32:                                          ; preds = %sw.bb29, %if.end26.sw.bb32_crit_edge
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool35.not = icmp eq i32 %call19, 0
  br i1 %tobool35.not, label %sw.bb32.if.end44_crit_edge, label %do.end39

sw.bb32.if.end44_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.end39:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl, align 4
  %port41 = getelementptr inbounds %struct.pcie_device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %port41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port41, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %pci_slot.i.i90 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %28 = ptrtoint ptr %pci_slot.i.i90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_slot.i.i90, align 4
  %kobj.i.i.i91 = getelementptr inbounds %struct.pci_slot, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %kobj.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %kobj.i.i.i91, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42, ptr noundef nonnull @.str.24, ptr noundef %31) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end39, %sw.bb32.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool45.not = icmp eq i32 %call20, 0
  br i1 %tobool45.not, label %if.end44.if.end54_crit_edge, label %do.end49

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl, align 4
  %port51 = getelementptr inbounds %struct.pcie_device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %port51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port51, align 4
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %pci_slot.i.i92 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %36 = ptrtoint ptr %pci_slot.i.i92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_slot.i.i92, align 4
  %kobj.i.i.i93 = getelementptr inbounds %struct.pci_slot, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %kobj.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kobj.i.i.i93, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev52, ptr noundef nonnull @.str.27, ptr noundef %39) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end49, %if.end44.if.end54_crit_edge
  %40 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %getstatus.i.i) #5
  %44 = ptrtoint ptr %getstatus.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %getstatus.i.i, align 1
  %slot_cap.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 1
  %45 = ptrtoint ptr %slot_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slot_cap.i.i, align 4
  %and.i.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end54.if.end3.i.i_crit_edge, label %if.then.i.i

if.end54.if.end3.i.i_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %if.end54
  call void @pciehp_get_latch_status(ptr noundef %ctrl, ptr noundef nonnull %getstatus.i.i) #5
  %47 = ptrtoint ptr %getstatus.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %getstatus.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool1.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end3.i.i_crit_edge, label %do.end.i.i

if.then.i.i.if.end3.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl, align 4
  %port.i.i = getelementptr inbounds %struct.pcie_device, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %pci_slot.i.i.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %53 = ptrtoint ptr %pci_slot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_slot.i.i.i.i, align 4
  %kobj.i.i.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %kobj.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %kobj.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.44, ptr noundef %56) #8
  br label %__pciehp_enable_slot.exit.thread23.i

if.end3.i.i:                                      ; preds = %if.then.i.i.if.end3.i.i_crit_edge, %if.end54.if.end3.i.i_crit_edge
  %57 = ptrtoint ptr %slot_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %slot_cap.i.i, align 4
  %and5.i.i = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end3.i.i.if.end18.i.i_crit_edge, label %if.then7.i.i

if.end3.i.i.if.end18.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i.i

if.then7.i.i:                                     ; preds = %if.end3.i.i
  call void @pciehp_get_power_status(ptr noundef %ctrl, ptr noundef nonnull %getstatus.i.i) #5
  %59 = ptrtoint ptr %getstatus.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %getstatus.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool8.not.i.i = icmp eq i8 %60, 0
  br i1 %tobool8.not.i.i, label %if.then7.i.i.if.end18.i.i_crit_edge, label %do.end12.i.i

if.then7.i.i.if.end18.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i.i

do.end12.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctrl, align 4
  %port14.i.i = getelementptr inbounds %struct.pcie_device, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %port14.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port14.i.i, align 4
  %dev15.i.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %pci_slot.i.i28.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %65 = ptrtoint ptr %pci_slot.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci_slot.i.i28.i.i, align 4
  %kobj.i.i.i29.i.i = getelementptr inbounds %struct.pci_slot, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %kobj.i.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %kobj.i.i.i29.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15.i.i, ptr noundef nonnull @.str.32, ptr noundef %68) #8
  br label %__pciehp_enable_slot.exit.thread.i

if.end18.i.i:                                     ; preds = %if.then7.i.i.if.end18.i.i_crit_edge, %if.end3.i.i.if.end18.i.i_crit_edge
  %69 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctrl, align 4
  %port.i.i.i = getelementptr inbounds %struct.pcie_device, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %port.i.i.i, align 4
  %subordinate.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %subordinate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %subordinate.i.i.i, align 4
  %75 = ptrtoint ptr %slot_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %slot_cap.i.i, align 4
  %and.i.i.i = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end18.i.i.if.end4.i.i.i_crit_edge, label %if.then.i.i.i

if.end18.i.i.if.end4.i.i.i_crit_edge:             ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %if.end18.i.i
  %call.i.i.i = call i32 @pciehp_power_on_slot(ptr noundef %ctrl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i.i.i.if.end4.i.i.i_crit_edge, label %if.then.i.i.i.__pciehp_enable_slot.exit.thread23.i_crit_edge

if.then.i.i.i.__pciehp_enable_slot.exit.thread23.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__pciehp_enable_slot.exit.thread23.i

if.then.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then.i.i.i.if.end4.i.i.i_crit_edge, %if.end18.i.i.if.end4.i.i.i_crit_edge
  call void @pciehp_set_indicators(ptr noundef %ctrl, i32 noundef 512, i32 noundef -1) #5
  %call5.i.i.i = call i32 @pciehp_check_link_status(ptr noundef %ctrl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end8.i.i.i, label %if.end4.i.i.i.err_exit.i.i.i_crit_edge

if.end4.i.i.i.err_exit.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  %power_fault_detected.i.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 10
  %77 = ptrtoint ptr %power_fault_detected.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %power_fault_detected.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool9.not.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool9.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end8.i.i.i.do.end.i.i.i_crit_edge

if.end8.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end8.i.i.i
  %call10.i.i.i = call i32 @pciehp_query_power_fault(ptr noundef %ctrl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end16.i.i.i, label %lor.lhs.false.i.i.i.do.end.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i.do.end.i.i.i_crit_edge, %if.end8.i.i.i.do.end.i.i.i_crit_edge
  %79 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctrl, align 4
  %port14.i.i.i = getelementptr inbounds %struct.pcie_device, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %port14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %port14.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %pci_slot.i.i.i.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %83 = ptrtoint ptr %pci_slot.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pci_slot.i.i.i.i.i, align 4
  %kobj.i.i.i.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %kobj.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %kobj.i.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.48, ptr noundef %86) #8
  br label %err_exit.i.i.i

if.end16.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %call17.i.i.i = call i32 @pciehp_configure_device(ptr noundef %ctrl) #5
  %87 = zext i32 %call17.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call17.i.i.i, label %do.end23.i.i.i [
    i32 0, label %if.end16.i.i.i.if.end29.i.i.i_crit_edge
    i32 -17, label %if.end16.i.i.i.if.end29.i.i.i_crit_edge94
  ]

if.end16.i.i.i.if.end29.i.i.i_crit_edge94:        ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i.i

if.end16.i.i.i.if.end29.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i.i

do.end23.i.i.i:                                   ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctrl, align 4
  %port25.i.i.i = getelementptr inbounds %struct.pcie_device, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %port25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port25.i.i.i, align 4
  %dev26.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %domain_nr.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %74, i32 0, i32 16
  %92 = ptrtoint ptr %domain_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %domain_nr.i.i.i.i, align 8
  %number.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %74, i32 0, i32 12
  %94 = ptrtoint ptr %number.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %number.i.i.i, align 4
  %conv.i.i.i = zext i8 %95 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i.i.i, ptr noundef nonnull @.str.51, i32 noundef %93, i32 noundef %conv.i.i.i) #8
  br label %err_exit.i.i.i

if.end29.i.i.i:                                   ; preds = %if.end16.i.i.i.if.end29.i.i.i_crit_edge, %if.end16.i.i.i.if.end29.i.i.i_crit_edge94
  call void @pciehp_set_indicators(ptr noundef %ctrl, i32 noundef 256, i32 noundef 192) #5
  br label %__pciehp_enable_slot.exit.thread.i

err_exit.i.i.i:                                   ; preds = %do.end23.i.i.i, %do.end.i.i.i, %if.end4.i.i.i.err_exit.i.i.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ %call5.i.i.i, %if.end4.i.i.i.err_exit.i.i.i_crit_edge ], [ -5, %do.end.i.i.i ], [ %call17.i.i.i, %do.end23.i.i.i ]
  %96 = ptrtoint ptr %slot_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %slot_cap.i.i, align 4
  %and.i.i.i.i = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %err_exit.i.i.i.__pciehp_enable_slot.exit.i_crit_edge, label %if.then.i.i.i.i

err_exit.i.i.i.__pciehp_enable_slot.exit.i_crit_edge: ; preds = %err_exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__pciehp_enable_slot.exit.i

if.then.i.i.i.i:                                  ; preds = %err_exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @pciehp_power_off_slot(ptr noundef %ctrl) #5
  call void @msleep(i32 noundef 1000) #5
  br label %__pciehp_enable_slot.exit.i

__pciehp_enable_slot.exit.thread.i:               ; preds = %if.end29.i.i.i, %do.end12.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %getstatus.i.i) #5
  br label %pciehp_enable_slot.exit

__pciehp_enable_slot.exit.thread23.i:             ; preds = %if.then.i.i.i.__pciehp_enable_slot.exit.thread23.i_crit_edge, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i, %if.then.i.i.i.__pciehp_enable_slot.exit.thread23.i_crit_edge ], [ -19, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %getstatus.i.i) #5
  br label %land.lhs.true.i

__pciehp_enable_slot.exit.i:                      ; preds = %if.then.i.i.i.i, %err_exit.i.i.i.__pciehp_enable_slot.exit.i_crit_edge
  call void @pciehp_set_indicators(ptr noundef %ctrl, i32 noundef 768, i32 noundef 64) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %getstatus.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i.i.i)
  %tobool.not.i = icmp eq i32 %retval1.0.i.i.i, 0
  br i1 %tobool.not.i, label %__pciehp_enable_slot.exit.i.pciehp_enable_slot.exit_crit_edge, label %__pciehp_enable_slot.exit.i.land.lhs.true.i_crit_edge

__pciehp_enable_slot.exit.i.land.lhs.true.i_crit_edge: ; preds = %__pciehp_enable_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

__pciehp_enable_slot.exit.i.pciehp_enable_slot.exit_crit_edge: ; preds = %__pciehp_enable_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pciehp_enable_slot.exit

land.lhs.true.i:                                  ; preds = %__pciehp_enable_slot.exit.i.land.lhs.true.i_crit_edge, %__pciehp_enable_slot.exit.thread23.i
  %retval.0.i26.i = phi i32 [ %retval.0.i.ph.i, %__pciehp_enable_slot.exit.thread23.i ], [ %retval1.0.i.i.i, %__pciehp_enable_slot.exit.i.land.lhs.true.i_crit_edge ]
  %98 = ptrtoint ptr %slot_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %slot_cap.i.i, align 4
  %and.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.pciehp_enable_slot.exit_crit_edge, label %if.then.i

land.lhs.true.i.pciehp_enable_slot.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pciehp_enable_slot.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @pciehp_set_indicators(ptr noundef %ctrl, i32 noundef 768, i32 noundef -1) #5
  br label %pciehp_enable_slot.exit

pciehp_enable_slot.exit:                          ; preds = %if.then.i, %land.lhs.true.i.pciehp_enable_slot.exit_crit_edge, %__pciehp_enable_slot.exit.i.pciehp_enable_slot.exit_crit_edge, %__pciehp_enable_slot.exit.thread.i
  %retval.0.i21.i = phi i32 [ %retval.0.i26.i, %if.then.i ], [ %retval.0.i26.i, %land.lhs.true.i.pciehp_enable_slot.exit_crit_edge ], [ 0, %__pciehp_enable_slot.exit.i.pciehp_enable_slot.exit_crit_edge ], [ 0, %__pciehp_enable_slot.exit.thread.i ]
  %cond.i = phi i8 [ 0, %if.then.i ], [ 0, %land.lhs.true.i.pciehp_enable_slot.exit_crit_edge ], [ 5, %__pciehp_enable_slot.exit.i.pciehp_enable_slot.exit_crit_edge ], [ 5, %__pciehp_enable_slot.exit.thread.i ]
  %100 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctrl, align 4
  %port4.i = getelementptr inbounds %struct.pcie_device, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %port4.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %port4.i, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %call.i18.i = call i32 @__pm_runtime_idle(ptr noundef %dev5.i, i32 noundef 5) #5
  call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %104 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %cond.i, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %state_lock) #5
  %request_result = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 19
  %105 = ptrtoint ptr %request_result to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i21.i, ptr %request_result, align 4
  br label %cleanup

sw.default56:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default56, %pciehp_enable_slot.exit, %if.then24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_card_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_check_link_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_sysfs_enable_slot(ptr noundef %hotplug_slot) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %state_lock = getelementptr i8, ptr %hotplug_slot, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %state = getelementptr i8, ptr %hotplug_slot, i32 -196
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %1, label %do.end36 [
    i8 1, label %entry.sw.bb_crit_edge
    i8 0, label %entry.sw.bb_crit_edge71
    i8 3, label %do.end24
    i8 2, label %entry.do.end29_crit_edge
    i8 5, label %entry.do.end29_crit_edge72
    i8 4, label %entry.do.end29_crit_edge73
  ]

entry.do.end29_crit_edge73:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

entry.do.end29_crit_edge72:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

entry.do.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

entry.sw.bb_crit_edge71:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge71
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  %request_result = getelementptr i8, ptr %hotplug_slot, i32 128
  %3 = ptrtoint ptr %request_result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -19, ptr %request_result, align 4
  %pending_events.i = getelementptr i8, ptr %hotplug_slot, i32 -212
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_events.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %pending_events.i, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events.i, ptr %pending_events.i, i32 8, ptr elementtype(i32) %pending_events.i) #5, !srcloc !97
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %5 = load i8, ptr @pciehp_poll_mode, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.pciehp_request.exit_crit_edge

sw.bb.pciehp_request.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %pciehp_request.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  tail call void @irq_wake_thread(i32 noundef %9, ptr noundef %add.ptr.i) #5
  br label %pciehp_request.exit

pciehp_request.exit:                              ; preds = %if.then.i, %sw.bb.pciehp_request.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 377) #5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_events.i, i32 noundef 4) #5
  %10 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %pending_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true, label %pciehp_request.exit.if.end_crit_edge

pciehp_request.exit.if.end_crit_edge:             ; preds = %pciehp_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %pciehp_request.exit
  %ist_running = getelementptr i8, ptr %hotplug_slot, i32 124
  %12 = ptrtoint ptr %ist_running to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ist_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %pciehp_request.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %ist_running13 = getelementptr i8, ptr %hotplug_slot, i32 124
  %requester = getelementptr i8, ptr %hotplug_slot, i32 132
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %requester, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %call.i.i64 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_events.i, i32 noundef 4) #5
  %15 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %pending_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true12:                                  ; preds = %for.cond
  %17 = ptrtoint ptr %ist_running13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ist_running13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %for.end, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true12.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  call void @schedule() #5
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %requester, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %do.end19

do.end19:                                         ; preds = %for.end, %land.lhs.true.do.end19_crit_edge
  %19 = ptrtoint ptr %request_result to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %request_result, align 4
  br label %cleanup44

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %25 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %28) #8
  br label %sw.epilog

do.end29:                                         ; preds = %entry.do.end29_crit_edge, %entry.do.end29_crit_edge72, %entry.do.end29_crit_edge73
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  %port31 = getelementptr inbounds %struct.pcie_device, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %port31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port31, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %pci_slot.i.i65 = getelementptr i8, ptr %hotplug_slot, i32 12
  %33 = ptrtoint ptr %pci_slot.i.i65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_slot.i.i65, align 4
  %kobj.i.i.i66 = getelementptr inbounds %struct.pci_slot, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %kobj.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %kobj.i.i.i66, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.32, ptr noundef %36) #8
  br label %sw.epilog

do.end36:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  %port38 = getelementptr inbounds %struct.pcie_device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port38, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %pci_slot.i.i67 = getelementptr i8, ptr %hotplug_slot, i32 12
  %41 = ptrtoint ptr %pci_slot.i.i67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_slot.i.i67, align 4
  %kobj.i.i.i68 = getelementptr inbounds %struct.pci_slot, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %kobj.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %kobj.i.i.i68, align 4
  %conv42 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.35, ptr noundef %44, i32 noundef %conv42) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end36, %do.end29, %do.end24
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  br label %cleanup44

cleanup44:                                        ; preds = %sw.epilog, %do.end19
  %retval.0 = phi i32 [ -19, %sw.epilog ], [ %20, %do.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_sysfs_disable_slot(ptr noundef %hotplug_slot) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %state_lock = getelementptr i8, ptr %hotplug_slot, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %state = getelementptr i8, ptr %hotplug_slot, i32 -196
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %1, label %do.end35 [
    i8 2, label %entry.sw.bb_crit_edge
    i8 5, label %entry.sw.bb_crit_edge69
    i8 4, label %do.end23
    i8 1, label %entry.do.end28_crit_edge
    i8 0, label %entry.do.end28_crit_edge70
    i8 3, label %entry.do.end28_crit_edge71
  ]

entry.do.end28_crit_edge71:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

entry.do.end28_crit_edge70:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

entry.sw.bb_crit_edge69:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge69
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  %pending_events.i = getelementptr i8, ptr %hotplug_slot, i32 -212
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_events.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %pending_events.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events.i, ptr %pending_events.i, i32 65536, ptr elementtype(i32) %pending_events.i) #5, !srcloc !97
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %4 = load i8, ptr @pciehp_poll_mode, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.pciehp_request.exit_crit_edge

sw.bb.pciehp_request.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %pciehp_request.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  tail call void @irq_wake_thread(i32 noundef %8, ptr noundef %add.ptr.i) #5
  br label %pciehp_request.exit

pciehp_request.exit:                              ; preds = %if.then.i, %sw.bb.pciehp_request.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 411) #5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_events.i, i32 noundef 4) #5
  %9 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %pending_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true, label %pciehp_request.exit.if.end_crit_edge

pciehp_request.exit.if.end_crit_edge:             ; preds = %pciehp_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %pciehp_request.exit
  %ist_running = getelementptr i8, ptr %hotplug_slot, i32 124
  %11 = ptrtoint ptr %ist_running to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ist_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %pciehp_request.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %ist_running13 = getelementptr i8, ptr %hotplug_slot, i32 124
  %requester = getelementptr i8, ptr %hotplug_slot, i32 132
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %requester, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %call.i.i62 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_events.i, i32 noundef 4) #5
  %14 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %pending_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true12:                                  ; preds = %for.cond
  %16 = ptrtoint ptr %ist_running13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ist_running13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not = icmp eq i32 %17, 0
  br i1 %tobool14.not, label %for.end, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true12.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  call void @schedule() #5
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %requester, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %do.end19

do.end19:                                         ; preds = %for.end, %land.lhs.true.do.end19_crit_edge
  %request_result = getelementptr i8, ptr %hotplug_slot, i32 128
  %18 = ptrtoint ptr %request_result to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %request_result, align 4
  br label %cleanup43

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %24 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %27) #8
  br label %sw.epilog

do.end28:                                         ; preds = %entry.do.end28_crit_edge, %entry.do.end28_crit_edge70, %entry.do.end28_crit_edge71
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %port30 = getelementptr inbounds %struct.pcie_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %port30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port30, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %pci_slot.i.i63 = getelementptr i8, ptr %hotplug_slot, i32 12
  %32 = ptrtoint ptr %pci_slot.i.i63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_slot.i.i63, align 4
  %kobj.i.i.i64 = getelementptr inbounds %struct.pci_slot, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %kobj.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %kobj.i.i.i64, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.40, ptr noundef %35) #8
  br label %sw.epilog

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %port37 = getelementptr inbounds %struct.pcie_device, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %port37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port37, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %pci_slot.i.i65 = getelementptr i8, ptr %hotplug_slot, i32 12
  %40 = ptrtoint ptr %pci_slot.i.i65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_slot.i.i65, align 4
  %kobj.i.i.i66 = getelementptr inbounds %struct.pci_slot, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %kobj.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %kobj.i.i.i66, align 4
  %conv41 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.35, ptr noundef %43, i32 noundef %conv41) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end35, %do.end28, %do.end23
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  br label %cleanup43

cleanup43:                                        ; preds = %sw.epilog, %do.end19
  %retval.0 = phi i32 [ -19, %sw.epilog ], [ %19, %do.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_get_latch_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_get_power_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_power_on_slot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_check_link_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_query_power_fault(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pciehp_configure_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_power_off_slot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_unconfigure_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 169, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pciehp_handle_button_press._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pciehp_handle_button_press._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 173, i32 4}
!10 = !{ptr @pciehp_handle_button_press._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @pciehp_handle_button_press._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 188, i32 3}
!14 = !{ptr @pciehp_handle_button_press._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @pciehp_handle_button_press._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 199, i32 3}
!18 = !{ptr @pciehp_handle_button_press._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pciehp_handle_button_press._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 203, i32 3}
!22 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pciehp_handle_button_press._entry.14, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @pciehp_handle_button_press._entry_ptr.17, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 242, i32 4}
!27 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pciehp_handle_presence_or_link_change._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @pciehp_handle_presence_or_link_change._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 245, i32 4}
!32 = !{ptr @pciehp_handle_presence_or_link_change._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pciehp_handle_presence_or_link_change._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 271, i32 4}
!36 = !{ptr @pciehp_handle_presence_or_link_change._entry.23, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pciehp_handle_presence_or_link_change._entry_ptr.25, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 274, i32 4}
!40 = !{ptr @pciehp_handle_presence_or_link_change._entry.26, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pciehp_handle_presence_or_link_change._entry_ptr.28, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 380, i32 3}
!44 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pciehp_sysfs_enable_slot._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pciehp_sysfs_enable_slot._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 386, i32 3}
!49 = !{ptr @pciehp_sysfs_enable_slot._entry.31, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pciehp_sysfs_enable_slot._entry_ptr.33, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.35, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 390, i32 3}
!53 = !{ptr @pciehp_sysfs_enable_slot._entry.34, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pciehp_sysfs_enable_slot._entry_ptr.36, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 414, i32 3}
!57 = !{ptr @.str.38, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @pciehp_sysfs_disable_slot._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @pciehp_sysfs_disable_slot._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 420, i32 3}
!62 = !{ptr @pciehp_sysfs_disable_slot._entry.39, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pciehp_sysfs_disable_slot._entry_ptr.41, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @pciehp_sysfs_disable_slot._entry.42, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 424, i32 3}
!66 = !{ptr @pciehp_sysfs_disable_slot._entry_ptr.43, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.44, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 291, i32 4}
!69 = !{ptr @.str.45, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @__pciehp_enable_slot._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @__pciehp_enable_slot._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @__pciehp_enable_slot._entry.46, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 300, i32 4}
!74 = !{ptr @__pciehp_enable_slot._entry_ptr.47, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.48, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 81, i32 3}
!77 = !{ptr @.str.49, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @board_added._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @board_added._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.51, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 89, i32 4}
!82 = !{ptr @board_added._entry.50, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @board_added._entry_ptr.52, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.53, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/hotplug/pciehp_ctrl.c", i32 335, i32 4}
!86 = !{ptr @__pciehp_disable_slot._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @__pciehp_disable_slot._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148226771, i64 2148226797, i64 2148226826, i64 2148226860, i64 2148226891, i64 2148226914}
!98 = !{i8 0, i8 2}
!99 = !{i64 2148223511, i64 2148223537, i64 2148223566, i64 2148223600, i64 2148223631, i64 2148223654}
