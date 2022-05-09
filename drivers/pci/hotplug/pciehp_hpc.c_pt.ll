; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/pciehp_hpc.c_pt.bc'
source_filename = "../drivers/pci/hotplug/pciehp_hpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.controller = type { ptr, i32, i8, i16, %struct.mutex, i32, i8, %struct.wait_queue_head, %struct.atomic_t, i8, i32, ptr, i8, %struct.mutex, %struct.delayed_work, %struct.hotplug_slot, %struct.rw_semaphore, i32, i32, i32, %struct.wait_queue_head }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@pciehp_check_link_active.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pciehp\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pciehp_check_link_active\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pci/hotplug/pciehp_hpc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pciehp: %s: lnk_status = %x\0A\00", [35 x i8] zeroinitializer }, align 32
@pciehp_check_link_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pciehp: Slot(%s): No link\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pciehp_check_link_status\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pciehp_check_link_status._entry_ptr = internal global ptr @pciehp_check_link_status._entry, section ".printk_index", align 4
@pciehp_check_link_status.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pciehp_check_link_status._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 315, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pciehp: Slot(%s): Cannot train link: status %#06x\0A\00", [45 x i8] zeroinitializer }, align 32
@pciehp_check_link_status._entry_ptr.10 = internal global ptr @pciehp_check_link_status._entry.8, section ".printk_index", align 4
@pciehp_check_link_status._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 323, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pciehp: Slot(%s): No device found\0A\00", [61 x i8] zeroinitializer }, align 32
@pciehp_check_link_status._entry_ptr.13 = internal global ptr @pciehp_check_link_status._entry.11, section ".printk_index", align 4
@pciehp_get_attention_status.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pciehp_get_attention_status\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pciehp: %s: SLOTCTRL %x, value read %x\0A\00", [56 x i8] zeroinitializer }, align 32
@pciehp_get_power_status.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pciehp_get_power_status\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pciehp: %s: SLOTCTRL %x value read %x\0A\00", [57 x i8] zeroinitializer }, align 32
@pciehp_set_indicators.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pciehp_set_indicators\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pciehp: %s: SLOTCTRL %x write cmd %x\0A\00", [58 x i8] zeroinitializer }, align 32
@pciehp_power_on_slot.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.19, i8 0, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pciehp_power_on_slot\00", [43 x i8] zeroinitializer }, align 32
@pciehp_power_on_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.20, ptr @.str.2, i32 553, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pciehp: %s: Can not enable the link!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pciehp_power_on_slot._entry_ptr = internal global ptr @pciehp_power_on_slot._entry, section ".printk_index", align 4
@pciehp_power_off_slot.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.19, i8 0, i8 -116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pciehp_power_off_slot\00", [42 x i8] zeroinitializer }, align 32
@pciehp_reset_slot.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.19, i8 0, i8 -26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pciehp_reset_slot\00", [46 x i8] zeroinitializer }, align 32
@pciehp_reset_slot.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.19, i8 0, i8 -24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pcie_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ctrl->ctrl_lock\00", [47 x i8] zeroinitializer }, align 32
@pcie_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ctrl->state_lock\00", [46 x i8] zeroinitializer }, align 32
@pcie_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ctrl->reset_lock\00", [46 x i8] zeroinitializer }, align 32
@pcie_init.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ctrl->requester\00", [47 x i8] zeroinitializer }, align 32
@pcie_init.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ctrl->queue\00", [19 x i8] zeroinitializer }, align 32
@pcie_init.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&ctrl->button_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@pcie_init.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&ctrl->button_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@pcie_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1051, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"pciehp: Slot #%d AttnBtn%c PwrCtrl%c MRL%c AttnInd%c PwrInd%c HotPlug%c Surprise%c Interlock%c NoCompl%c IbPresDis%c LLActRep%c%s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcie_init\00", [22 x i8] zeroinitializer }, align 32
@pcie_init._entry_ptr = internal global ptr @pcie_init._entry, section ".printk_index", align 4
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" (with Cmd Compl erratum)\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__pci_fixup_quirk_cmd_compl1086 = internal constant %struct.pci_fixup { i16 -32634, i16 -1, i32 1540, i32 8, ptr @quirk_cmd_compl }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_cmd_compl1088 = internal constant %struct.pci_fixup { i16 6091, i16 1024, i32 1540, i32 8, ptr @quirk_cmd_compl }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_cmd_compl1090 = internal constant %struct.pci_fixup { i16 6091, i16 1025, i32 1540, i32 8, ptr @quirk_cmd_compl }, section ".pci_fixup_early", align 4
@__pci_fixup_quirk_cmd_compl1092 = internal constant %struct.pci_fixup { i16 7615, i16 1025, i32 1540, i32 8, ptr @quirk_cmd_compl }, section ".pci_fixup_early", align 4
@pci_bus_check_dev.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_bus_check_dev\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"pci %04x:%02x:%02x.%d id reading try %d times with interval %d ms to get %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@pcie_do_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 169, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pciehp: %s: no response from device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcie_do_write_cmd\00", [46 x i8] zeroinitializer }, align 32
@pcie_do_write_cmd._entry_ptr = internal global ptr @pcie_do_write_cmd._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pciehp_poll_mode = external dso_local local_unnamed_addr global i8, align 1
@pcie_wait_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 146, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"pciehp: Timeout on hotplug command %#06x (issued %u msec ago)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_wait_cmd\00", [18 x i8] zeroinitializer }, align 32
@pcie_wait_cmd._entry_ptr = internal global ptr @pcie_wait_cmd._entry, section ".printk_index", align 4
@pcie_poll_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.48, ptr @.str.2, i32 94, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_poll_cmd\00", [18 x i8] zeroinitializer }, align 32
@pcie_poll_cmd._entry_ptr = internal global ptr @pcie_poll_cmd._entry, section ".printk_index", align 4
@__pciehp_link_set.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__pciehp_link_set\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pciehp: %s: lnk_ctrl = %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pciehp_poll-%s\00", [17 x i8] zeroinitializer }, align 32
@pciehp_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 73, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"pciehp: Cannot get irq %d for the hotplug controller\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pciehp_request_irq\00", [45 x i8] zeroinitializer }, align 32
@pciehp_request_irq._entry_ptr = internal global ptr @pciehp_request_irq._entry, section ".printk_index", align 4
@pciehp_poll_time = external dso_local local_unnamed_addr global i32, align 4
@pciehp_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.54, ptr @.str.2, i32 625, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pciehp_isr\00", [21 x i8] zeroinitializer }, align 32
@pciehp_isr._entry_ptr = internal global ptr @pciehp_isr._entry, section ".printk_index", align 4
@pciehp_isr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pciehp: pending interrupts %#06x from Slot Status\0A\00", [45 x i8] zeroinitializer }, align 32
@pciehp_isr.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.56, i8 0, i8 -84, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pciehp: ignoring hotplug event %#06x\0A\00", [58 x i8] zeroinitializer }, align 32
@pciehp_ist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 725, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pciehp: Slot(%s): Attention button pressed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pciehp_ist\00", [21 x i8] zeroinitializer }, align 32
@pciehp_ist._entry_ptr = internal global ptr @pciehp_ist._entry, section ".printk_index", align 4
@pciehp_ist._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 731, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pciehp: Slot(%s): Power fault\0A\00", [33 x i8] zeroinitializer }, align 32
@pciehp_ist._entry_ptr.61 = internal global ptr @pciehp_ist._entry.59, section ".printk_index", align 4
@pciehp_ignore_dpc_link_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 579, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pciehp: Slot(%s): Link Down/Up ignored (recovered by DPC)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pciehp_ignore_dpc_link_change\00", [34 x i8] zeroinitializer }, align 32
@pciehp_ignore_dpc_link_change._entry_ptr = internal global ptr @pciehp_ignore_dpc_link_change._entry, section ".printk_index", align 4
@pcie_enable_notification.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.19, i8 0, i8 -51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcie_enable_notification\00", [39 x i8] zeroinitializer }, align 32
@pcie_disable_notification.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.19, i8 0, i8 -48, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pcie_disable_notification\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dbg_ctrl.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 -17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dbg_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pciehp: Slot Capabilities      : 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@dbg_ctrl.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.68, i8 0, i8 -17, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pciehp: Slot Status            : 0x%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@dbg_ctrl.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.69, i8 0, i8 -16, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pciehp: Slot Control           : 0x%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 243, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 295, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 314, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 322, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 375, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 402, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 528, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 547, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 553, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 561, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 920, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1007, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1008, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1009, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1010, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1011, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1012, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1038, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 267, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 169, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 144, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 93, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 343, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 62, i32 23 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 72, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 625, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 668, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 688, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 724, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 731, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 578, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 820, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 833, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 957, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 959, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private constant [36 x i8] c"../drivers/pci/hotplug/pciehp_hpc.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 961, i32 2 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__pci_fixup_quirk_cmd_compl1086, ptr @__pci_fixup_quirk_cmd_compl1088, ptr @__pci_fixup_quirk_cmd_compl1090, ptr @__pci_fixup_quirk_cmd_compl1092, ptr @pcie_do_write_cmd._entry, ptr @pcie_do_write_cmd._entry_ptr, ptr @pcie_init._entry, ptr @pcie_init._entry_ptr, ptr @pcie_poll_cmd._entry, ptr @pcie_poll_cmd._entry_ptr, ptr @pcie_wait_cmd._entry, ptr @pcie_wait_cmd._entry_ptr, ptr @pciehp_check_link_status._entry, ptr @pciehp_check_link_status._entry.11, ptr @pciehp_check_link_status._entry.8, ptr @pciehp_check_link_status._entry_ptr, ptr @pciehp_check_link_status._entry_ptr.10, ptr @pciehp_check_link_status._entry_ptr.13, ptr @pciehp_ignore_dpc_link_change._entry, ptr @pciehp_ignore_dpc_link_change._entry_ptr, ptr @pciehp_isr._entry, ptr @pciehp_isr._entry_ptr, ptr @pciehp_ist._entry, ptr @pciehp_ist._entry.59, ptr @pciehp_ist._entry_ptr, ptr @pciehp_ist._entry_ptr.61, ptr @pciehp_power_on_slot._entry, ptr @pciehp_power_on_slot._entry_ptr, ptr @pciehp_request_irq._entry, ptr @pciehp_request_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @pcie_init.__key, ptr @.str.25, ptr @pcie_init.__key.26, ptr @.str.27, ptr @pcie_init.__key.28, ptr @.str.29, ptr @pcie_init.__key.30, ptr @.str.31, ptr @pcie_init.__key.32, ptr @.str.33, ptr @pcie_init.__key.34, ptr @.str.35, ptr @pcie_init.__key.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_check_link_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_check_link_status._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_check_link_status._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_power_on_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_init.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_init.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_init.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_init.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_do_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_wait_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_poll_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_ist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_ist._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciehp_ignore_dpc_link_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_check_link_active(ptr nocapture noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  %lnk_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk_status) #6
  %4 = ptrtoint ptr %lnk_status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %lnk_status, align 2, !annotation !168
  %call1 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 18, ptr noundef nonnull %lnk_status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %call1)
  %cmp = icmp eq i32 %call1, 134
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %lnk_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %lnk_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp2 = icmp eq i16 %6, -1
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %7 = lshr i16 %6, 13
  %.lobit = and i16 %7, 1
  %8 = zext i16 %.lobit to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_check_link_active.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_check_link_active, %cleanup)) #6
          to label %if.then15 [label %cleanup], !srcloc !169

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %lnk_status to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lnk_status, align 2
  %conv16 = zext i16 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_check_link_active.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %8, %if.then15 ], [ %8, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk_status) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_check_link_status(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  %l.i = alloca i32, align 4
  %slot_status.i = alloca i16, align 2
  %lnk_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk_status) #6
  %4 = ptrtoint ptr %lnk_status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %lnk_status, align 2, !annotation !168
  %call1 = tail call zeroext i1 @pcie_wait_for_link(ptr noundef %3, i1 noundef zeroext true) #6
  br i1 %call1, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %9 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %12) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %inband_presence_disabled = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 2
  %13 = ptrtoint ptr %inband_presence_disabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %inband_presence_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_status.i) #6
  %14 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %slot_status.i, align 2, !annotation !168
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then3
  %timeout.0.i = phi i32 [ 1250, %if.then3 ], [ %sub.i, %if.end.i.do.body.i_crit_edge ]
  %call.i = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 26, ptr noundef nonnull %slot_status.i) #6
  %15 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %slot_status.i, align 2
  %17 = and i16 %16, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.pcie_wait_for_presence.exit_crit_edge

do.body.i.pcie_wait_for_presence.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcie_wait_for_presence.exit

if.end.i:                                         ; preds = %do.body.i
  call void @msleep(i32 noundef 10) #6
  %sub.i = add nsw i32 %timeout.0.i, -10
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %if.end.i.pcie_wait_for_presence.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.pcie_wait_for_presence.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcie_wait_for_presence.exit

pcie_wait_for_presence.exit:                      ; preds = %if.end.i.pcie_wait_for_presence.exit_crit_edge, %do.body.i.pcie_wait_for_presence.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_status.i) #6
  br label %if.end4

if.end4:                                          ; preds = %pcie_wait_for_presence.exit, %if.end.if.end4_crit_edge
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl, align 4
  %port6 = getelementptr inbounds %struct.pcie_device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port6, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %subordinate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l.i) #6
  %24 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %l.i, align 4, !annotation !168
  br label %do.body.i71

do.body.i71:                                      ; preds = %if.end.i72.do.body.i71_crit_edge, %if.end4
  %count.0.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %if.end.i72.do.body.i71_crit_edge ]
  %call.i70 = call zeroext i1 @pci_bus_read_dev_vendor_id(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %l.i, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %count.0.i, 1
  br i1 %call.i70, label %do.end.i, label %if.end.i72

if.end.i72:                                       ; preds = %do.body.i71
  call void @msleep(i32 noundef 20) #6
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i72.do.body3.i_crit_edge, label %if.end.i72.do.body.i71_crit_edge

if.end.i72.do.body.i71_crit_edge:                 ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i71

if.end.i72.do.body3.i_crit_edge:                  ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

do.end.i:                                         ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %cmp1.not.i = icmp eq i32 %count.0.i, 0
  br i1 %cmp1.not.i, label %pci_bus_check_dev.exit.thread, label %do.end.i.do.body3.i_crit_edge

do.end.i.do.body3.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

pci_bus_check_dev.exit.thread:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l.i) #6
  br label %if.then9

do.body3.i:                                       ; preds = %do.end.i.do.body3.i_crit_edge, %if.end.i72.do.body3.i_crit_edge
  %inc.lcssa4.i = phi i32 [ %inc.i, %do.end.i.do.body3.i_crit_edge ], [ 50, %if.end.i72.do.body3.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_bus_check_dev.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_check_link_status, %pci_bus_check_dev.exit)) #6
          to label %if.then10.i [label %pci_bus_check_dev.exit], !srcloc !169

if.then10.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 16
  %25 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %domain_nr.i.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 12
  %27 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %l.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %l.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pci_bus_check_dev.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.43, i32 noundef %26, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0, i32 noundef %inc.lcssa4.i, i32 noundef 20, i32 noundef %30) #6
  br label %pci_bus_check_dev.exit

pci_bus_check_dev.exit:                           ; preds = %if.then10.i, %do.body3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l.i) #6
  br i1 %call.i70, label %pci_bus_check_dev.exit.if.then9_crit_edge, label %pci_bus_check_dev.exit.if.end10_crit_edge

pci_bus_check_dev.exit.if.end10_crit_edge:        ; preds = %pci_bus_check_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

pci_bus_check_dev.exit.if.then9_crit_edge:        ; preds = %pci_bus_check_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %pci_bus_check_dev.exit.if.then9_crit_edge, %pci_bus_check_dev.exit.thread
  %pending_events = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_events, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %pending_events, i32 1, i32 3, i32 1) #6
  %31 = call { i32, i32 } asm sideeffect "@ atomic_and\0A1:\09ldrex\09$0, [$3]\0A\09and\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events, ptr %pending_events, i32 -265, ptr elementtype(i32) %pending_events) #6, !srcloc !170
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %pci_bus_check_dev.exit.if.end10_crit_edge
  %call.i7086 = phi i1 [ true, %if.then9 ], [ false, %pci_bus_check_dev.exit.if.end10_crit_edge ]
  %call11 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 18, ptr noundef nonnull %lnk_status) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_check_link_status.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_check_link_status, %do.end25)) #6
          to label %if.then19 [label %do.end25], !srcloc !169

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl, align 4
  %port21 = getelementptr inbounds %struct.pcie_device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %port21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %lnk_status to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %lnk_status, align 2
  %conv = zext i16 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_check_link_status.__UNIQUE_ID_ddebug239, ptr noundef %dev22, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %conv) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %if.end10
  %38 = ptrtoint ptr %lnk_status to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %lnk_status, align 2
  %conv26 = zext i16 %39 to i32
  %and = and i32 %conv26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp ne i32 %and, 0
  %and29 = and i32 %conv26, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or.cond = or i1 %tobool27.not, %tobool30.not
  %40 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl, align 4
  %port36 = getelementptr inbounds %struct.pcie_device, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %port36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port36, align 4
  br i1 %or.cond, label %do.end34, label %if.end40

do.end34:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %pci_slot.i.i73 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %44 = ptrtoint ptr %pci_slot.i.i73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci_slot.i.i73, align 4
  %kobj.i.i.i74 = getelementptr inbounds %struct.pci_slot, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %kobj.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kobj.i.i.i74, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.9, ptr noundef %47, i32 noundef %conv26) #9
  br label %cleanup

if.end40:                                         ; preds = %do.end25
  %subordinate43 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 2
  %48 = ptrtoint ptr %subordinate43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %subordinate43, align 4
  call void @pcie_update_link_speed(ptr noundef %49, i16 noundef zeroext %39) #6
  br i1 %call.i7086, label %if.end40.cleanup_crit_edge, label %do.end48

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl, align 4
  %port50 = getelementptr inbounds %struct.pcie_device, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %port50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port50, align 4
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %pci_slot.i.i75 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %54 = ptrtoint ptr %pci_slot.i.i75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pci_slot.i.i75, align 4
  %kobj.i.i.i76 = getelementptr inbounds %struct.pci_slot, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %kobj.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %kobj.i.i.i76, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef nonnull @.str.12, ptr noundef %57) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.end40.cleanup_crit_edge, %do.end34, %do.end
  %retval.0 = phi i32 [ -1, %do.end34 ], [ -1, %do.end48 ], [ -1, %do.end ], [ 0, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk_status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcie_wait_for_link(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_update_link_speed(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_get_raw_indicator_status(ptr nocapture noundef readonly %hotplug_slot, ptr nocapture noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %slot_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_ctrl) #6
  %4 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %slot_ctrl, align 2, !annotation !168
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #6
  %call2 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 24, ptr noundef nonnull %slot_ctrl) #6
  call void @pci_config_pm_runtime_put(ptr noundef %3) #6
  %5 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %slot_ctrl, align 2
  %7 = lshr i16 %6, 6
  %8 = trunc i16 %7 to i8
  %conv3 = and i8 %8, 15
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %status, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_ctrl) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_get_attention_status(ptr nocapture noundef readonly %hotplug_slot, ptr nocapture noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %slot_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_ctrl) #6
  %4 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %slot_ctrl, align 2, !annotation !168
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #6
  %call2 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 24, ptr noundef nonnull %slot_ctrl) #6
  call void @pci_config_pm_runtime_put(ptr noundef %3) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_get_attention_status.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_get_attention_status, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %pcie_cap.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %pcie_cap.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pcie_cap.i, align 8
  %conv.i = zext i8 %10 to i32
  %add = add nuw nsw i32 %conv.i, 24
  %11 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %slot_ctrl, align 2
  %conv = zext i16 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_get_attention_status.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %add, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %slot_ctrl, align 2
  %15 = trunc i16 %14 to i8
  %trunc = and i8 %15, -64
  %16 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 64, label %do.end.sw.epilog_crit_edge
    i8 -128, label %sw.bb11
    i8 -64, label %sw.bb12
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %do.end.sw.epilog_crit_edge
  %.sink = phi i8 [ -1, %sw.default ], [ 0, %sw.bb12 ], [ 2, %sw.bb11 ], [ 1, %do.end.sw.epilog_crit_edge ]
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %status, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_ctrl) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_get_power_status(ptr nocapture noundef readonly %ctrl, ptr nocapture noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %slot_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_ctrl) #6
  %4 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %slot_ctrl, align 2, !annotation !168
  %call1 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 24, ptr noundef nonnull %slot_ctrl) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_get_power_status.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_get_power_status, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %pcie_cap.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %pcie_cap.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pcie_cap.i, align 8
  %conv.i = zext i8 %10 to i32
  %add = add nuw nsw i32 %conv.i, 24
  %11 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %slot_ctrl, align 2
  %conv = zext i16 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_get_power_status.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %add, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %slot_ctrl, align 2
  %15 = lshr i16 %14, 10
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %status, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_ctrl) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_get_latch_status(ptr nocapture noundef readonly %ctrl, ptr nocapture noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %slot_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_status) #6
  %4 = ptrtoint ptr %slot_status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %slot_status, align 2, !annotation !168
  %call1 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 26, ptr noundef nonnull %slot_status) #6
  %5 = ptrtoint ptr %slot_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %slot_status, align 2
  %7 = trunc i16 %6 to i8
  %8 = lshr i8 %7, 5
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %status, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_status) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_card_present(ptr nocapture noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  %slot_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_status) #6
  %4 = ptrtoint ptr %slot_status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %slot_status, align 2, !annotation !168
  %call1 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 26, ptr noundef nonnull %slot_status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %call1)
  %cmp = icmp eq i32 %call1, 134
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %slot_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %slot_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp2 = icmp eq i16 %6, -1
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %7 = lshr i16 %6, 6
  %.lobit = and i16 %7, 1
  %8 = zext i16 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_card_present_or_link_active(ptr nocapture noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  %lnk_status.i = alloca i16, align 2
  %slot_status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_status.i) #6
  %4 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %slot_status.i, align 2, !annotation !168
  %call1.i = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 26, ptr noundef nonnull %slot_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 134
  br i1 %cmp.i, label %entry.pciehp_card_present.exit.thread_crit_edge, label %lor.lhs.false.i

entry.pciehp_card_present.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciehp_card_present.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %5 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %slot_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp2.i = icmp eq i16 %6, -1
  br i1 %cmp2.i, label %lor.lhs.false.i.pciehp_card_present.exit.thread_crit_edge, label %pciehp_card_present.exit

lor.lhs.false.i.pciehp_card_present.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciehp_card_present.exit.thread

pciehp_card_present.exit.thread:                  ; preds = %lor.lhs.false.i.pciehp_card_present.exit.thread_crit_edge, %entry.pciehp_card_present.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_status.i) #6
  br label %cleanup

pciehp_card_present.exit:                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_status.i) #6
  %7 = and i16 %6, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end, label %pciehp_card_present.exit.cleanup_crit_edge

pciehp_card_present.exit.cleanup_crit_edge:       ; preds = %pciehp_card_present.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %pciehp_card_present.exit
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl, align 4
  %port.i.i4 = getelementptr inbounds %struct.pcie_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port.i.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i.i4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk_status.i) #6
  %12 = ptrtoint ptr %lnk_status.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %lnk_status.i, align 2, !annotation !168
  %call1.i5 = call i32 @pcie_capability_read_word(ptr noundef %11, i32 noundef 18, ptr noundef nonnull %lnk_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %call1.i5)
  %cmp.i6 = icmp eq i32 %call1.i5, 134
  br i1 %cmp.i6, label %if.end.pciehp_check_link_active.exit_crit_edge, label %lor.lhs.false.i8

if.end.pciehp_check_link_active.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciehp_check_link_active.exit

lor.lhs.false.i8:                                 ; preds = %if.end
  %13 = ptrtoint ptr %lnk_status.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lnk_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %cmp2.i7 = icmp eq i16 %14, -1
  br i1 %cmp2.i7, label %lor.lhs.false.i8.pciehp_check_link_active.exit_crit_edge, label %if.end.i10

lor.lhs.false.i8.pciehp_check_link_active.exit_crit_edge: ; preds = %lor.lhs.false.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciehp_check_link_active.exit

if.end.i10:                                       ; preds = %lor.lhs.false.i8
  call void @__sanitizer_cov_trace_pc() #8
  %15 = lshr i16 %14, 13
  %.lobit.i9 = and i16 %15, 1
  %16 = zext i16 %.lobit.i9 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_check_link_active.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_card_present_or_link_active, %pciehp_check_link_active.exit)) #6
          to label %if.then15.i [label %pciehp_check_link_active.exit], !srcloc !169

if.then15.i:                                      ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %lnk_status.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %lnk_status.i, align 2
  %conv16.i = zext i16 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_check_link_active.__UNIQUE_ID_ddebug237, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv16.i) #6
  br label %pciehp_check_link_active.exit

pciehp_check_link_active.exit:                    ; preds = %if.then15.i, %if.end.i10, %lor.lhs.false.i8.pciehp_check_link_active.exit_crit_edge, %if.end.pciehp_check_link_active.exit_crit_edge
  %retval.0.i11 = phi i32 [ -19, %lor.lhs.false.i8.pciehp_check_link_active.exit_crit_edge ], [ -19, %if.end.pciehp_check_link_active.exit_crit_edge ], [ %16, %if.then15.i ], [ %16, %if.end.i10 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk_status.i) #6
  br label %cleanup

cleanup:                                          ; preds = %pciehp_check_link_active.exit, %pciehp_card_present.exit.cleanup_crit_edge, %pciehp_card_present.exit.thread
  %retval.0 = phi i32 [ %retval.0.i11, %pciehp_check_link_active.exit ], [ 1, %pciehp_card_present.exit.cleanup_crit_edge ], [ -19, %pciehp_card_present.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_query_power_fault(ptr nocapture noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  %slot_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_status) #6
  %4 = ptrtoint ptr %slot_status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %slot_status, align 2, !annotation !168
  %call1 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 26, ptr noundef nonnull %slot_status) #6
  %5 = ptrtoint ptr %slot_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %slot_status, align 2
  %7 = lshr i16 %6, 1
  %.lobit = and i16 %7, 1
  %8 = zext i16 %.lobit to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_status) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_set_raw_indicator_status(ptr noundef %hotplug_slot, i8 noundef zeroext %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #6
  %conv = zext i8 %status to i16
  %shl = shl nuw nsw i16 %conv, 6
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %add.ptr.i, i16 noundef zeroext %shl, i16 noundef zeroext 960, i1 noundef zeroext false) #6
  tail call void @pci_config_pm_runtime_put(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_set_indicators(ptr noundef %ctrl, i32 noundef %pwr, i32 noundef %attn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_cap = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %slot_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_cap, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pwr)
  %cmp.not = icmp eq i32 %pwr, -1
  %or.cond = or i1 %cmp.not, %tobool.not
  %2 = trunc i32 %pwr to i16
  %conv2 = and i16 %2, 768
  %cmd.0 = select i1 %or.cond, i16 0, i16 %conv2
  %and7 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %attn)
  %cmp10.not = icmp eq i32 %attn, -1
  %or.cond46 = or i1 %cmp10.not, %tobool8.not
  %3 = trunc i32 %attn to i16
  %4 = and i16 %3, 192
  %conv16 = select i1 %or.cond46, i16 0, i16 %4
  %cmd.1 = or i16 %cmd.0, %conv16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd.1)
  %tobool21.not = icmp eq i16 %cmd.1, 0
  br i1 %tobool21.not, label %entry.if.end33_crit_edge, label %if.then22

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mask.0 = select i1 %or.cond, i16 0, i16 768
  %5 = or i16 %mask.0, 192
  %mask.1 = select i1 %or.cond46, i16 %mask.0, i16 %5
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %ctrl, i16 noundef zeroext %cmd.1, i16 noundef zeroext %mask.1, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_set_indicators.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_set_indicators, %if.end33)) #6
          to label %if.then27 [label %if.end33], !srcloc !169

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %pcie_cap.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %pcie_cap.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pcie_cap.i, align 8
  %conv.i = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv.i, 24
  %conv31 = zext i16 %cmd.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_set_indicators.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %add, i32 noundef %conv31) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then22, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_power_on_slot(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  %lnk_ctrl.i.i = alloca i16, align 2
  %slot_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_status) #6
  %4 = ptrtoint ptr %slot_status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %slot_status, align 2, !annotation !168
  %call2 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 26, ptr noundef nonnull %slot_status) #6
  %5 = ptrtoint ptr %slot_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %slot_status, align 2
  %7 = and i16 %6, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @pcie_capability_write_word(ptr noundef %3, i32 noundef 26, i16 noundef zeroext 2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %power_fault_detected = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 10
  %8 = ptrtoint ptr %power_fault_detected to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %power_fault_detected, align 4
  call fastcc void @pcie_do_write_cmd(ptr noundef %ctrl, i16 noundef zeroext 0, i16 noundef zeroext 1024, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_power_on_slot.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_power_on_slot, %do.end)) #6
          to label %if.then9 [label %do.end], !srcloc !169

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %pcie_cap.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i, align 8
  %conv.i = zext i8 %14 to i32
  %add = add nuw nsw i32 %conv.i, 24
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_power_on_slot.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %add, i32 noundef 0) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl, align 4
  %port.i.i.i = getelementptr inbounds %struct.pcie_device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk_ctrl.i.i) #6
  %19 = ptrtoint ptr %lnk_ctrl.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %lnk_ctrl.i.i, align 2, !annotation !168
  %call1.i.i = call i32 @pcie_capability_read_word(ptr noundef %18, i32 noundef 16, ptr noundef nonnull %lnk_ctrl.i.i) #6
  %20 = ptrtoint ptr %lnk_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %lnk_ctrl.i.i, align 2
  %22 = and i16 %21, -17
  store i16 %22, ptr %lnk_ctrl.i.i, align 2
  %call5.i.i = call i32 @pcie_capability_write_word(ptr noundef %18, i32 noundef 16, i16 noundef zeroext %22) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__pciehp_link_set.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_power_on_slot, %pciehp_link_enable.exit)) #6
          to label %if.then12.i.i [label %pciehp_link_enable.exit], !srcloc !169

if.then12.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl, align 4
  %port.i.i = getelementptr inbounds %struct.pcie_device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %lnk_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %lnk_ctrl.i.i, align 2
  %conv13.i.i = zext i16 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__pciehp_link_set.__UNIQUE_ID_ddebug240, ptr noundef %dev.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %conv13.i.i) #6
  br label %pciehp_link_enable.exit

pciehp_link_enable.exit:                          ; preds = %if.then12.i.i, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk_ctrl.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_status) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_power_off_slot(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %ctrl, i16 noundef zeroext 1024, i16 noundef zeroext 1024, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_power_off_slot.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_power_off_slot, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %pcie_cap.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %pcie_cap.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcie_cap.i, align 8
  %conv.i = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv.i, 24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_power_off_slot.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.23, i32 noundef %add, i32 noundef 1024) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_clear_hotplug_events(ptr nocapture noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %call1 = tail call i32 @pcie_capability_write_word(ptr noundef %3, i32 noundef 26, i16 noundef zeroext 264) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_enable_interrupt(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %ctrl, i16 noundef zeroext 4128, i16 noundef zeroext 4128, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_disable_interrupt(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %ctrl, i16 noundef zeroext 0, i16 noundef zeroext 4128, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_slot_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %lnk_status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  %state = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.not = icmp eq i8 %3, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %port = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %call2 = tail call i32 @pcie_capability_write_word(ptr noundef %5, i32 noundef 26, i16 noundef zeroext 256) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %port.i.i = getelementptr inbounds %struct.pcie_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk_status.i) #6
  %10 = ptrtoint ptr %lnk_status.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %lnk_status.i, align 2, !annotation !168
  %call1.i = call i32 @pcie_capability_read_word(ptr noundef %9, i32 noundef 18, ptr noundef nonnull %lnk_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 134
  br i1 %cmp.i, label %if.end.pciehp_check_link_active.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.pciehp_check_link_active.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciehp_check_link_active.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %11 = ptrtoint ptr %lnk_status.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %lnk_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp2.i = icmp eq i16 %12, -1
  br i1 %cmp2.i, label %lor.lhs.false.i.pciehp_check_link_active.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.pciehp_check_link_active.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciehp_check_link_active.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_check_link_active.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_slot_reset, %pciehp_check_link_active.exit)) #6
          to label %if.then15.i [label %pciehp_check_link_active.exit], !srcloc !169

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %lnk_status.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %lnk_status.i, align 2
  %conv16.i = zext i16 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_check_link_active.__UNIQUE_ID_ddebug237, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv16.i) #6
  br label %pciehp_check_link_active.exit

pciehp_check_link_active.exit.thread:             ; preds = %lor.lhs.false.i.pciehp_check_link_active.exit.thread_crit_edge, %if.end.pciehp_check_link_active.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk_status.i) #6
  br label %cleanup

pciehp_check_link_active.exit:                    ; preds = %if.then15.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk_status.i) #6
  %19 = and i16 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp eq i16 %19, 0
  br i1 %tobool.not, label %if.then4, label %pciehp_check_link_active.exit.cleanup_crit_edge

pciehp_check_link_active.exit.cleanup_crit_edge:  ; preds = %pciehp_check_link_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %pciehp_check_link_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @pciehp_request(ptr noundef %1, i32 noundef 256) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %pciehp_check_link_active.exit.cleanup_crit_edge, %pciehp_check_link_active.exit.thread, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pciehp_reset_slot(ptr noundef %hotplug_slot, i1 noundef zeroext %probe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -376
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  br i1 %probe, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset_lock = getelementptr i8, ptr %hotplug_slot, i32 24
  %depth = getelementptr i8, ptr %hotplug_slot, i32 120
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %depth, align 4
  tail call void @down_write_nested(ptr noundef %reset_lock, i32 noundef %5) #6
  %slot_cap = getelementptr i8, ptr %hotplug_slot, i32 -372
  %6 = ptrtoint ptr %slot_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_cap, align 4
  %8 = trunc i32 %7 to i16
  %9 = shl i16 %8, 3
  %10 = and i16 %9, 8
  %11 = xor i16 %10, 8
  %conv11 = or i16 %11, 4096
  %conv14 = or i16 %11, 256
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %add.ptr.i, i16 noundef zeroext 0, i16 noundef zeroext %conv11, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_reset_slot.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_reset_slot, %do.end)) #6
          to label %if.then21 [label %do.end], !srcloc !169

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %pcie_cap.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %pcie_cap.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pcie_cap.i, align 8
  %conv.i = zext i8 %17 to i32
  %add = add nuw nsw i32 %conv.i, 24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_reset_slot.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24, i32 noundef %add, i32 noundef 0) #6
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %port27 = getelementptr inbounds %struct.pcie_device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %port27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port27, align 4
  %call28 = tail call i32 @pci_bridge_secondary_bus_reset(ptr noundef %21) #6
  %call29 = tail call i32 @pcie_capability_write_word(ptr noundef %3, i32 noundef 26, i16 noundef zeroext %conv14) #6
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %add.ptr.i, i16 noundef zeroext %conv11, i16 noundef zeroext %conv11, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_reset_slot.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_reset_slot, %do.end55)) #6
          to label %if.then44 [label %do.end55], !srcloc !169

if.then44:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %port46 = getelementptr inbounds %struct.pcie_device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %port46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port46, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %pcie_cap.i82 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %pcie_cap.i82 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pcie_cap.i82, align 8
  %conv.i83 = zext i8 %27 to i32
  %add51 = add nuw nsw i32 %conv.i83, 24
  %conv52 = zext i16 %conv11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_reset_slot.__UNIQUE_ID_ddebug251, ptr noundef %dev47, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24, i32 noundef %add51, i32 noundef %conv52) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then44, %do.end
  tail call void @up_write(ptr noundef %reset_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %do.end55 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_secondary_bus_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_init_notification(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %4 = load i8, ptr @pciehp_poll_mode, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %pci_slot.i.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %5 = ptrtoint ptr %pci_slot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_slot.i.i.i, align 4
  %kobj.i.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %kobj.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i.i.i.i, align 4
  %call3.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @pciehp_poll, ptr noundef %ctrl, i32 noundef -1, ptr noundef nonnull @.str.51, ptr noundef %8) #6
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %pciehp_request_irq.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 @wake_up_process(ptr noundef %call3.i) #6
  %poll_thread.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 11
  %9 = ptrtoint ptr %poll_thread.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3.i, ptr %poll_thread.i, align 4
  br label %if.end

if.end9.i:                                        ; preds = %entry
  %call10.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @pciehp_isr, ptr noundef nonnull @pciehp_ist, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %ctrl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end_crit_edge, label %pciehp_request_irq.exit.thread9

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pciehp_request_irq.exit.thread9:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %return

pciehp_request_irq.exit:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %poll_thread.i12 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 11
  %14 = ptrtoint ptr %poll_thread.i12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3.i, ptr %poll_thread.i12, align 4
  br label %return

if.end:                                           ; preds = %if.end9.i.if.end_crit_edge, %if.end.i
  %slot_cap.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 1
  %15 = ptrtoint ptr %slot_cap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot_cap.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i3 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i3, i16 4104, i16 4097
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %17 = load i8, ptr @pciehp_poll_mode, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  %18 = or i16 %..i, 48
  %cmd.1.i = select i1 %tobool5.not.i, i16 %18, i16 %..i
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %ctrl, i16 noundef zeroext %cmd.1.i, i16 noundef zeroext 4155, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_enable_notification.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_init_notification, %pcie_enable_notification.exit)) #6
          to label %if.then15.i [label %pcie_enable_notification.exit], !srcloc !169

if.then15.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl, align 4
  %port.i4 = getelementptr inbounds %struct.pcie_device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %port.i4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port.i4, align 4
  %dev.i5 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pcie_cap.i.i, align 8
  %conv.i.i = zext i8 %24 to i32
  %add.i = add nuw nsw i32 %conv.i.i, 24
  %conv19.i = zext i16 %cmd.1.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcie_enable_notification.__UNIQUE_ID_ddebug248, ptr noundef %dev.i5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.64, i32 noundef %add.i, i32 noundef %conv19.i) #6
  br label %pcie_enable_notification.exit

pcie_enable_notification.exit:                    ; preds = %if.then15.i, %if.end
  %notification_enabled = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 9
  %25 = ptrtoint ptr %notification_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %notification_enabled, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %notification_enabled, align 4
  br label %return

return:                                           ; preds = %pcie_enable_notification.exit, %pciehp_request_irq.exit, %pciehp_request_irq.exit.thread9
  %retval.0 = phi i32 [ 0, %pcie_enable_notification.exit ], [ -1, %pciehp_request_irq.exit ], [ -1, %pciehp_request_irq.exit.thread9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_shutdown_notification(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %notification_enabled = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 9
  %0 = ptrtoint ptr %notification_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %notification_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %ctrl, i16 noundef zeroext 0, i16 noundef zeroext 4159, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_disable_notification.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_shutdown_notification, %pcie_disable_notification.exit)) #6
          to label %if.then.i [label %pcie_disable_notification.exit], !srcloc !169

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pcie_cap.i.i, align 8
  %conv.i.i = zext i8 %6 to i32
  %add.i = add nuw nsw i32 %conv.i.i, 24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcie_disable_notification.__UNIQUE_ID_ddebug249, ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.65, i32 noundef %add.i, i32 noundef 0) #6
  br label %pcie_disable_notification.exit

pcie_disable_notification.exit:                   ; preds = %if.then.i, %if.then
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %7 = load i8, ptr @pciehp_poll_mode, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i6

if.then.i6:                                       ; preds = %pcie_disable_notification.exit
  call void @__sanitizer_cov_trace_pc() #8
  %poll_thread.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 11
  %8 = ptrtoint ptr %poll_thread.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %poll_thread.i, align 4
  %call.i = tail call i32 @kthread_stop(ptr noundef %9) #6
  br label %pciehp_free_irq.exit

if.else.i:                                        ; preds = %pcie_disable_notification.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %call1.i = tail call ptr @free_irq(i32 noundef %13, ptr noundef %ctrl) #6
  br label %pciehp_free_irq.exit

pciehp_free_irq.exit:                             ; preds = %if.else.i, %if.then.i6
  %14 = ptrtoint ptr %notification_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load2 = load i8, ptr %notification_enabled, align 4
  %bf.clear = and i8 %bf.load2, 127
  store i8 %bf.clear, ptr %notification_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %pciehp_free_irq.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_disable_notification(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %ctrl, i16 noundef zeroext 0, i16 noundef zeroext 4159, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_disable_notification.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_disable_notification, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %pcie_cap.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %pcie_cap.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcie_cap.i, align 8
  %conv.i = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv.i, 24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcie_disable_notification.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.65, i32 noundef %add, i32 noundef 0) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pcie_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %slot_ctrl.i = alloca i16, align 2
  %reg16.i = alloca i16, align 2
  %slot_cap = alloca i32, align 4
  %slot_cap2 = alloca i32, align 4
  %link_cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot_cap) #6
  %0 = ptrtoint ptr %slot_cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %slot_cap, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot_cap2) #6
  %1 = ptrtoint ptr %slot_cap2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %slot_cap2, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_cap) #6
  %2 = ptrtoint ptr %link_cap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %link_cap, align 4, !annotation !168
  %port = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %subordinate1 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %subordinate1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subordinate1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 560) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %bus1.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus1.i, align 8
  %parent11.i = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent11.i, align 8
  %tobool.not12.i = icmp eq ptr %14, null
  br i1 %tobool.not12.i, label %if.end.pcie_hotplug_depth.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.pcie_hotplug_depth.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcie_hotplug_depth.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %15 = phi ptr [ %23, %if.end.i.while.body.i_crit_edge ], [ %14, %if.end.while.body.i_crit_edge ]
  %depth.013.i = phi i32 [ %depth.1.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %self.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %is_hotplug_bridge.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 49
  %18 = ptrtoint ptr %is_hotplug_bridge.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 5)
  %bf.load.i = load i40, ptr %is_hotplug_bridge.i, align 1
  %19 = trunc i40 %bf.load.i to i32
  %20 = lshr i32 %19, 15
  %21 = and i32 %20, 1
  %spec.select.i = add i32 %21, %depth.013.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %while.body.i.if.end.i_crit_edge
  %depth.1.i = phi i32 [ %depth.013.i, %while.body.i.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i.pcie_hotplug_depth.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i.pcie_hotplug_depth.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcie_hotplug_depth.exit

pcie_hotplug_depth.exit:                          ; preds = %if.end.i.pcie_hotplug_depth.exit_crit_edge, %if.end.pcie_hotplug_depth.exit_crit_edge
  %depth.0.lcssa.i = phi i32 [ 0, %if.end.pcie_hotplug_depth.exit_crit_edge ], [ %depth.1.i, %if.end.i.pcie_hotplug_depth.exit_crit_edge ]
  %depth = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 17
  %24 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %depth.0.lcssa.i, ptr %depth, align 8
  %call4 = call i32 @pcie_capability_read_dword(ptr noundef %4, i32 noundef 20, ptr noundef nonnull %slot_cap) #6
  %hotplug_user_indicators = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 33
  %25 = ptrtoint ptr %hotplug_user_indicators to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %bf.load = load i32, ptr %hotplug_user_indicators, align 2
  %26 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool5.not = icmp eq i32 %26, 0
  br i1 %tobool5.not, label %pcie_hotplug_depth.exit.if.end7_crit_edge, label %if.then6

pcie_hotplug_depth.exit.if.end7_crit_edge:        ; preds = %pcie_hotplug_depth.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %pcie_hotplug_depth.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %slot_cap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slot_cap, align 4
  %and = and i32 %28, -25
  store i32 %and, ptr %slot_cap, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %pcie_hotplug_depth.exit.if.end7_crit_edge
  %is_thunderbolt = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 49
  %29 = ptrtoint ptr %is_thunderbolt to i32
  call void @__asan_loadN_noabort(i32 %29, i32 5)
  %bf.load8 = load i40, ptr %is_thunderbolt, align 1
  %30 = and i40 %bf.load8, 8192
  %tobool11.not = icmp eq i40 %30, 0
  br i1 %tobool11.not, label %if.end7.if.end13_crit_edge, label %if.then12

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %slot_cap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slot_cap, align 4
  %or = or i32 %32, 262144
  store i32 %or, ptr %slot_cap, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end7.if.end13_crit_edge
  %33 = ptrtoint ptr %slot_cap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slot_cap, align 4
  %slot_cap14 = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %slot_cap14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %slot_cap14, align 4
  %ctrl_lock = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @pcie_init.__key) #6
  %state_lock = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 13
  call void @__mutex_init(ptr noundef %state_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @pcie_init.__key.26) #6
  %reset_lock = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 16
  call void @__init_rwsem(ptr noundef %reset_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @pcie_init.__key.28) #6
  %requester = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 20
  call void @__init_waitqueue_head(ptr noundef %requester, ptr noundef nonnull @.str.31, ptr noundef nonnull @pcie_init.__key.30) #6
  %queue = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 7
  call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.33, ptr noundef nonnull @pcie_init.__key.32) #6
  %button_work = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 14
  call void @__init_work(ptr noundef %button_work, i32 noundef 0) #6
  %36 = ptrtoint ptr %button_work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %button_work, align 4
  %lockdep_map = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @pcie_init.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry35 = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %37 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry35, ptr %entry35, align 8
  %prev.i = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry35, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 2
  %39 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @pciehp_queue_pushbutton_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 14, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.37, ptr noundef nonnull @pcie_init.__key.36) #6
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16.i) #6
  %44 = ptrtoint ptr %reg16.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %reg16.i, align 2, !annotation !168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_ctrl.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_init, %do.end.i)) #6
          to label %if.then.i [label %do.end.i], !srcloc !169

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %port5.i = getelementptr inbounds %struct.pcie_device, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port5.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %slot_cap14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %slot_cap14, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_ctrl.__UNIQUE_ID_ddebug252, ptr noundef %dev.i, ptr noundef nonnull @.str.67, i32 noundef %50) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end13
  %call6.i = call i32 @pcie_capability_read_word(ptr noundef %43, i32 noundef 26, ptr noundef nonnull %reg16.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_ctrl.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_init, %do.end27.i)) #6
          to label %if.then21.i [label %do.end27.i], !srcloc !169

if.then21.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  %port23.i = getelementptr inbounds %struct.pcie_device, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %port23.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %port23.i, align 4
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %reg16.i, align 2
  %conv.i = zext i16 %56 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_ctrl.__UNIQUE_ID_ddebug253, ptr noundef %dev24.i, ptr noundef nonnull @.str.68, i32 noundef %conv.i) #6
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.then21.i, %do.end.i
  %call28.i = call i32 @pcie_capability_read_word(ptr noundef %43, i32 noundef 24, ptr noundef nonnull %reg16.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_ctrl.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_init, %dbg_ctrl.exit)) #6
          to label %if.then43.i [label %dbg_ctrl.exit], !srcloc !169

if.then43.i:                                      ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call7.i.i, align 8
  %port45.i = getelementptr inbounds %struct.pcie_device, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %port45.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port45.i, align 4
  %dev46.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %reg16.i, align 2
  %conv47.i = zext i16 %62 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_ctrl.__UNIQUE_ID_ddebug254, ptr noundef %dev46.i, ptr noundef nonnull @.str.69, i32 noundef %conv47.i) #6
  br label %dbg_ctrl.exit

dbg_ctrl.exit:                                    ; preds = %if.then43.i, %do.end27.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i) #6
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #6
  %devices = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 3
  %63 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %devices, align 4
  %cmp.i.not = icmp eq ptr %64, %devices
  %conv = select i1 %cmp.i.not, i8 0, i8 5
  %state = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 12
  %65 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv, ptr %state, align 4
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #6
  %call48 = call i32 @pcie_capability_read_dword(ptr noundef %4, i32 noundef 52, ptr noundef nonnull %slot_cap2) #6
  %66 = ptrtoint ptr %slot_cap2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %slot_cap2, align 4
  %and49 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %dbg_ctrl.exit.if.end54_crit_edge, label %if.then51

dbg_ctrl.exit.if.end54_crit_edge:                 ; preds = %dbg_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then51:                                        ; preds = %dbg_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pcie_do_write_cmd(ptr noundef %call7.i.i, i16 noundef zeroext 16384, i16 noundef zeroext 16384, i1 noundef zeroext false) #6
  %inband_presence_disabled = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %inband_presence_disabled to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load52 = load i8, ptr %inband_presence_disabled, align 8
  %bf.set = or i8 %bf.load52, -128
  store i8 %bf.set, ptr %inband_presence_disabled, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %dbg_ctrl.exit.if.end54_crit_edge
  %call63 = call i32 @pcie_capability_read_dword(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %link_cap) #6
  %call64 = call i32 @pcie_capability_write_word(ptr noundef %4, i32 noundef 26, i16 noundef zeroext 287) #6
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call7.i.i, align 8
  %port69 = getelementptr inbounds %struct.pcie_device, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %port69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %port69, align 4
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %73 = ptrtoint ptr %slot_cap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %slot_cap, align 4
  %shr = lshr i32 %74, 19
  %and72 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %cond74 = select i1 %tobool73.not, i32 45, i32 43
  %and75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %cond77 = select i1 %tobool76.not, i32 45, i32 43
  %and78 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %cond80 = select i1 %tobool79.not, i32 45, i32 43
  %and81 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %cond83 = select i1 %tobool82.not, i32 45, i32 43
  %and84 = and i32 %74, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %cond86 = select i1 %tobool85.not, i32 45, i32 43
  %and87 = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %cond89 = select i1 %tobool88.not, i32 45, i32 43
  %and90 = and i32 %74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %cond92 = select i1 %tobool91.not, i32 45, i32 43
  %and93 = and i32 %74, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %cond95 = select i1 %tobool94.not, i32 45, i32 43
  %and96 = and i32 %74, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %cond98 = select i1 %tobool97.not, i32 45, i32 43
  %75 = ptrtoint ptr %slot_cap2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %slot_cap2, align 4
  %and99 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %cond101 = select i1 %tobool100.not, i32 45, i32 43
  %77 = ptrtoint ptr %link_cap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %link_cap, align 4
  %and102 = and i32 %78, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %cond104 = select i1 %tobool103.not, i32 45, i32 43
  %broken_cmd_compl = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 57
  %79 = ptrtoint ptr %broken_cmd_compl to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load105 = load i8, ptr %broken_cmd_compl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load105)
  %tobool108.not = icmp sgt i8 %bf.load105, -1
  %cond109 = select i1 %tobool108.not, ptr @.str.41, ptr @.str.40
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev70, ptr noundef nonnull @.str.38, i32 noundef %shr, i32 noundef %cond74, i32 noundef %cond77, i32 noundef %cond80, i32 noundef %cond83, i32 noundef %cond86, i32 noundef %cond89, i32 noundef %cond92, i32 noundef %cond95, i32 noundef %cond98, i32 noundef %cond101, i32 noundef %cond104, ptr noundef nonnull %cond109) #9
  %80 = ptrtoint ptr %slot_cap14 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %slot_cap14, align 4
  %and111 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end54.cleanup_crit_edge, label %if.then113

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then113:                                       ; preds = %if.end54
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call7.i.i, align 8
  %port.i.i = getelementptr inbounds %struct.pcie_device, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %port.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_ctrl.i) #6
  %86 = ptrtoint ptr %slot_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %slot_ctrl.i, align 2, !annotation !168
  %call1.i = call i32 @pcie_capability_read_word(ptr noundef %85, i32 noundef 24, ptr noundef nonnull %slot_ctrl.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_get_power_status.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcie_init, %pciehp_get_power_status.exit)) #6
          to label %if.then.i166 [label %pciehp_get_power_status.exit], !srcloc !169

if.then.i166:                                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call7.i.i, align 8
  %port.i163 = getelementptr inbounds %struct.pcie_device, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %port.i163 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %port.i163, align 4
  %dev.i164 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 19
  %91 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %pcie_cap.i.i, align 8
  %conv.i.i = zext i8 %92 to i32
  %add.i = add nuw nsw i32 %conv.i.i, 24
  %93 = ptrtoint ptr %slot_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %slot_ctrl.i, align 2
  %conv.i165 = zext i16 %94 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_get_power_status.__UNIQUE_ID_ddebug242, ptr noundef %dev.i164, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %add.i, i32 noundef %conv.i165) #6
  br label %pciehp_get_power_status.exit

pciehp_get_power_status.exit:                     ; preds = %if.then.i166, %if.then113
  %95 = ptrtoint ptr %slot_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %slot_ctrl.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_ctrl.i) #6
  %call114 = call i32 @pciehp_card_present_or_link_active(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp ne i32 %call114, 0
  %97 = and i16 %96, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool117.not = icmp ne i16 %97, 0
  %or.cond = select i1 %tobool115.not, i1 true, i1 %tobool117.not
  br i1 %or.cond, label %pciehp_get_power_status.exit.cleanup_crit_edge, label %if.then118

pciehp_get_power_status.exit.cleanup_crit_edge:   ; preds = %pciehp_get_power_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then118:                                       ; preds = %pciehp_get_power_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pcie_disable_notification(ptr noundef nonnull %call7.i.i)
  call void @pciehp_power_off_slot(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %pciehp_get_power_status.exit.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_cap) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot_cap2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot_cap) #6
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_queue_pushbutton_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pciehp_release_ctrl(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %button_work = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %button_work) #6
  tail call void @kfree(ptr noundef %ctrl) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @quirk_cmd_compl(ptr noundef %pdev) #0 align 64 {
entry:
  %slot_cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot_cap) #6
  %0 = ptrtoint ptr %slot_cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %slot_cap, align 4, !annotation !168
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 19
  %1 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = call i32 @pcie_capability_read_dword(ptr noundef %pdev, i32 noundef 20, ptr noundef nonnull %slot_cap) #6
  %3 = ptrtoint ptr %slot_cap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slot_cap, align 4
  %5 = and i32 %4, 262208
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %6 = icmp eq i32 %5, 64
  br i1 %6, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %broken_cmd_compl = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 57
  %7 = ptrtoint ptr %broken_cmd_compl to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %broken_cmd_compl, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %broken_cmd_compl, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot_cap) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_bus_read_dev_vendor_id(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_do_write_cmd(ptr noundef %ctrl, i16 noundef zeroext %cmd, i16 noundef zeroext %mask, i1 noundef zeroext %wait) unnamed_addr #0 align 64 {
entry:
  %slot_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_ctrl) #6
  %4 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %slot_ctrl, align 2, !annotation !168
  %ctrl_lock = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #6
  tail call fastcc void @pcie_wait_cmd(ptr noundef %ctrl)
  %call1 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 24, ptr noundef nonnull %slot_ctrl) #6
  %5 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %slot_ctrl, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp = icmp eq i16 %6, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #9
  br label %out

if.end:                                           ; preds = %entry
  %neg = xor i16 %mask, -1
  %and = and i16 %6, %neg
  %and848 = and i16 %mask, %cmd
  %or49 = or i16 %and, %and848
  %11 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %or49, ptr %slot_ctrl, align 2
  %cmd_busy = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 6
  %12 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %cmd_busy, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %cmd_busy, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !172
  %13 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %slot_ctrl, align 2
  %slot_ctrl17 = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 3
  %15 = ptrtoint ptr %slot_ctrl17 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %slot_ctrl17, align 2
  %call18 = call i32 @pcie_capability_write_word(ptr noundef %3, i32 noundef 24, i16 noundef zeroext %14) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %cmd_started = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 5
  %17 = ptrtoint ptr %cmd_started to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cmd_started, align 4
  %broken_cmd_compl = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 57
  %18 = ptrtoint ptr %broken_cmd_compl to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load19 = load i8, ptr %broken_cmd_compl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %tobool.not = icmp sgt i8 %bf.load19, -1
  br i1 %tobool.not, label %if.end.if.end31_crit_edge, label %land.lhs.true

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %19 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %slot_ctrl, align 2
  %21 = xor i16 %20, %6
  %22 = and i16 %21, 4032
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp24 = icmp eq i16 %22, 0
  br i1 %cmp24, label %if.then26, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load28 = load i8, ptr %cmd_busy, align 4
  %bf.clear29 = and i8 %bf.load28, 127
  store i8 %bf.clear29, ptr %cmd_busy, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %land.lhs.true.if.end31_crit_edge, %if.end.if.end31_crit_edge
  br i1 %wait, label %if.then33, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pcie_wait_cmd(ptr noundef %ctrl)
  br label %out

out:                                              ; preds = %if.then33, %if.end31.out_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %ctrl_lock) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_ctrl) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_wait_cmd(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  %slot_status.i = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %0 = load i8, ptr @pciehp_poll_mode, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, i32 1000, i32 2500
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond) #6
  %cmd_started = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 5
  %1 = ptrtoint ptr %cmd_started to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd_started, align 4
  %add = add i32 %2, %call2.i
  %slot_cap = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 1
  %3 = ptrtoint ptr %slot_cap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slot_cap, align 4
  %and = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup82_crit_edge

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

if.end:                                           ; preds = %entry
  %cmd_busy = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 6
  %5 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %cmd_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.end.cleanup82_crit_edge, label %if.end4

if.end.cleanup82_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %6, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  %sub6 = sub i32 %add, %6
  %timeout.0 = select i1 %cmp, i32 1, i32 %sub6
  %slot_ctrl = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 3
  %7 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %slot_ctrl, align 2
  %9 = and i16 %8, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %9)
  %.not = icmp eq i16 %9, 48
  br i1 %.not, label %if.then14, label %if.else67

if.then14:                                        ; preds = %if.end4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 139) #6
  %10 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load19 = load i8, ptr %cmd_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %tobool22.not = icmp sgt i8 %bf.load19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool26.not = icmp eq i32 %timeout.0, 0
  %11 = select i1 %tobool22.not, i1 %tobool26.not, i1 false
  %__ret.0 = select i1 %11, i32 1, i32 %timeout.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool31.not = icmp eq i32 %__ret.0, 0
  %12 = select i1 %tobool22.not, i1 true, i1 %tobool31.not
  br i1 %12, label %if.then14.if.end70_crit_edge, label %if.then34

if.then14.if.end70_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then34:                                        ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %queue = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 7
  %call36121 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %14 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load39122 = load i8, ptr %cmd_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load39122)
  %tobool42.not123 = icmp sgt i8 %bf.load39122, -1
  %15 = select i1 %tobool42.not123, i1 %tobool26.not, i1 false
  %__ret35.1125 = select i1 %15, i32 1, i32 %timeout.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.1125)
  %tobool55.not126 = icmp eq i32 %__ret35.1125, 0
  %16 = select i1 %tobool42.not123, i1 true, i1 %tobool55.not126
  br i1 %16, label %if.then34.for.end_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  br label %cleanup

if.then34.for.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then34.cleanup_crit_edge
  %__ret35.1127 = phi i32 [ %__ret35.1, %cleanup.cleanup_crit_edge ], [ %__ret35.1125, %if.then34.cleanup_crit_edge ]
  %call62 = call i32 @schedule_timeout(i32 noundef %__ret35.1127) #6
  %call36 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %17 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load39 = load i8, ptr %cmd_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load39)
  %tobool42.not = icmp sgt i8 %bf.load39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool48.not = icmp eq i32 %call62, 0
  %18 = select i1 %tobool42.not, i1 %tobool48.not, i1 false
  %__ret35.1 = select i1 %18, i32 1, i32 %call62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.1)
  %tobool55.not = icmp eq i32 %__ret35.1, 0
  %19 = select i1 %tobool42.not, i1 true, i1 %tobool55.not
  br i1 %19, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then34.for.end_crit_edge
  %__ret35.1.lcssa = phi i32 [ %__ret35.1125, %if.then34.for.end_crit_edge ], [ %__ret35.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end70

if.else67:                                        ; preds = %if.end4
  %call68 = tail call i32 @jiffies_to_msecs(i32 noundef %timeout.0) #6
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl, align 4
  %port.i.i = getelementptr inbounds %struct.pcie_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slot_status.i) #6
  %24 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %slot_status.i, align 2, !annotation !168
  br label %do.body.i

do.body.i:                                        ; preds = %if.end7.i.do.body.i_crit_edge, %if.else67
  %timeout.addr.0.i = phi i32 [ %call68, %if.else67 ], [ %sub.i, %if.end7.i.do.body.i_crit_edge ]
  %call1.i = call i32 @pcie_capability_read_word(ptr noundef %23, i32 noundef 26, ptr noundef nonnull %slot_status.i) #6
  %25 = ptrtoint ptr %slot_status.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %slot_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp.i = icmp eq i16 %26, -1
  br i1 %cmp.i, label %do.end.i, label %if.end.i114

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.48) #9
  br label %pcie_poll_cmd.exit

if.end.i114:                                      ; preds = %do.body.i
  %31 = and i16 %26, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 @pcie_capability_write_word(ptr noundef %23, i32 noundef 26, i16 noundef zeroext 16) #6
  br label %pcie_poll_cmd.exit

if.end7.i:                                        ; preds = %if.end.i114
  call void @msleep(i32 noundef 10) #6
  %sub.i = add i32 %timeout.addr.0.i, -10
  %cmp9.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp9.i, label %if.end7.i.do.body.i_crit_edge, label %if.end7.i.pcie_poll_cmd.exit_crit_edge

if.end7.i.pcie_poll_cmd.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcie_poll_cmd.exit

if.end7.i.do.body.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

pcie_poll_cmd.exit:                               ; preds = %if.end7.i.pcie_poll_cmd.exit_crit_edge, %if.then5.i, %do.end.i
  %retval.0.i115 = phi i32 [ 0, %do.end.i ], [ 1, %if.then5.i ], [ 0, %if.end7.i.pcie_poll_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slot_status.i) #6
  br label %if.end70

if.end70:                                         ; preds = %pcie_poll_cmd.exit, %for.end, %if.then14.if.end70_crit_edge
  %rc.0 = phi i32 [ %retval.0.i115, %pcie_poll_cmd.exit ], [ %__ret.0, %if.then14.if.end70_crit_edge ], [ %__ret35.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool71.not = icmp eq i32 %rc.0, 0
  br i1 %tobool71.not, label %do.end75, label %if.end70.cleanup82_crit_edge

if.end70.cleanup82_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

do.end75:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %slot_ctrl, align 2
  %conv77 = zext i16 %37 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %39 = ptrtoint ptr %cmd_started to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmd_started, align 4
  %sub79 = sub i32 %38, %40
  %call80 = call i32 @jiffies_to_msecs(i32 noundef %sub79) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %conv77, i32 noundef %call80) #9
  br label %cleanup82

cleanup82:                                        ; preds = %do.end75, %if.end70.cleanup82_crit_edge, %if.end.cleanup82_crit_edge, %entry.cleanup82_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciehp_poll(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @schedule_timeout_idle(i32 noundef 1000) #6
  %call113 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call113, label %entry.while.end10_crit_edge, label %while.cond2.preheader.lr.ph

entry.while.end10_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end10

while.cond2.preheader.lr.ph:                      ; preds = %entry
  %pending_events = getelementptr inbounds %struct.controller, ptr %data, i32 0, i32 8
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.backedge, %while.cond2.preheader.lr.ph
  %call3 = tail call i32 @pciehp_isr(i32 noundef -2147483648, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp = icmp eq i32 %call3, 2
  br i1 %cmp, label %while.cond2.while.body5_crit_edge, label %lor.rhs

while.cond2.while.body5_crit_edge:                ; preds = %while.cond2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body5

lor.rhs:                                          ; preds = %while.cond2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_events, i32 noundef 4) #6
  %0 = ptrtoint ptr %pending_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pending_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.end, label %lor.rhs.while.body5_crit_edge

lor.rhs.while.body5_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body5

while.body5:                                      ; preds = %lor.rhs.while.body5_crit_edge, %while.cond2.while.body5_crit_edge
  %call6 = tail call i32 @pciehp_ist(i32 noundef -2147483648, ptr noundef %data)
  br label %while.cond2.backedge

while.cond2.backedge:                             ; preds = %if.end.while.cond2.backedge_crit_edge, %while.body5
  br label %while.cond2

while.end:                                        ; preds = %lor.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pciehp_poll_time to i32))
  %2 = load i32, ptr @pciehp_poll_time, align 4
  %3 = add i32 %2, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -60, i32 %3)
  %4 = icmp ult i32 %3, -60
  br i1 %4, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pciehp_poll_time to i32))
  store i32 2, ptr @pciehp_poll_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pciehp_poll_time to i32))
  %5 = load i32, ptr @pciehp_poll_time, align 4
  %mul = mul i32 %5, 100
  %call9 = tail call i32 @schedule_timeout_idle(i32 noundef %mul) #6
  %call1 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call1, label %if.end.while.end10_crit_edge, label %if.end.while.cond2.backedge_crit_edge

if.end.while.cond2.backedge_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond2.backedge

if.end.while.end10_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end10

while.end10:                                      ; preds = %if.end.while.end10_crit_edge, %entry.while.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciehp_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %parent1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 1
  %4 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #6
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %status, align 2, !annotation !168
  %current_state = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 30
  %7 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %slot_ctrl = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 3
  %9 = ptrtoint ptr %slot_ctrl to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %slot_ctrl, align 2
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %12 = load i8, ptr @pciehp_poll_mode, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !173
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 18
  %14 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then4.if.end9_crit_edge, label %pm_runtime_active.exit

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

pm_runtime_active.exit:                           ; preds = %if.then4
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 15
  %16 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end9_crit_edge, label %if.then6

pm_runtime_active.exit.if.end9_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %5, i32 noundef 5) #6
  tail call void @disable_irq_nosync(i32 noundef %irq) #6
  %pending_events = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_events, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %pending_events, i32 1, i32 3, i32 1) #6
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events, ptr %pending_events, i32 131072, ptr elementtype(i32) %pending_events) #6, !srcloc !174
  br label %cleanup

if.end9:                                          ; preds = %pm_runtime_active.exit.if.end9_crit_edge, %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %power_fault_detected = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 10
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 49
  br label %read_status

read_status:                                      ; preds = %land.lhs.true51.read_status_crit_edge, %if.end9
  %events.0 = phi i32 [ 0, %if.end9 ], [ %or, %land.lhs.true51.read_status_crit_edge ]
  %call10 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 26, ptr noundef nonnull %status) #6
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp12 = icmp eq i16 %19, -1
  br i1 %cmp12, label %do.end, label %if.end20

do.end:                                           ; preds = %read_status
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.54) #9
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.then17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i162 = call i32 @__pm_runtime_idle(ptr noundef nonnull %5, i32 noundef 5) #6
  br label %cleanup

if.end20:                                         ; preds = %read_status
  %24 = and i16 %19, 283
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %status, align 2
  %26 = ptrtoint ptr %power_fault_detected to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %power_fault_detected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool24.not = icmp eq i32 %27, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %28 = and i16 %19, 281
  %29 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %status, align 2
  br label %if.end35

if.else:                                          ; preds = %if.end20
  %30 = and i16 %19, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool31.not = icmp eq i16 %30, 0
  br i1 %tobool31.not, label %if.else.if.end35thread-pre-split_crit_edge, label %if.then32

if.else.if.end35thread-pre-split_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35thread-pre-split

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %power_fault_detected to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %power_fault_detected, align 4
  br label %if.end35thread-pre-split

if.end35thread-pre-split:                         ; preds = %if.then32, %if.else.if.end35thread-pre-split_crit_edge
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %32)
  %.pr = load i16, ptr %status, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.end35thread-pre-split, %if.then25
  %33 = phi i16 [ %.pr, %if.end35thread-pre-split ], [ %28, %if.then25 ]
  %conv36 = zext i16 %33 to i32
  %or = or i32 %events.0, %conv36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool39.not = icmp eq i32 %or, 0
  br i1 %tobool39.not, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end35
  br i1 %tobool3.not, label %if.then40.cleanup_crit_edge, label %if.then42

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %call.i163 = call i32 @__pm_runtime_idle(ptr noundef nonnull %5, i32 noundef 5) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool46.not = icmp eq i16 %33, 0
  br i1 %tobool46.not, label %if.end45.do.body56_crit_edge, label %if.then47

if.end45.do.body56_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body56

if.then47:                                        ; preds = %if.end45
  %call48 = call i32 @pcie_capability_write_word(ptr noundef %3, i32 noundef 26, i16 noundef zeroext %33) #6
  %34 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 5)
  %bf.load.i164 = load i40, ptr %msi_enabled.i, align 1
  %35 = and i40 %bf.load.i164, 201326592
  %.not = icmp eq i40 %35, 0
  br i1 %.not, label %if.then47.do.body56_crit_edge, label %land.lhs.true51

if.then47.do.body56_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body56

land.lhs.true51:                                  ; preds = %if.then47
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %36 = load i8, ptr @pciehp_poll_mode, align 1, !range !171
  %tobool52.not = icmp eq i8 %36, 0
  br i1 %tobool52.not, label %land.lhs.true51.read_status_crit_edge, label %land.lhs.true51.do.body56_crit_edge

land.lhs.true51.do.body56_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body56

land.lhs.true51.read_status_crit_edge:            ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_status

do.body56:                                        ; preds = %land.lhs.true51.do.body56_crit_edge, %if.then47.do.body56_crit_edge, %if.end45.do.body56_crit_edge
  %conv38.le = trunc i32 %or to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_isr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_isr, %do.end69)) #6
          to label %if.then62 [label %do.end69], !srcloc !169

if.then62:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_id, align 4
  %port64 = getelementptr inbounds %struct.pcie_device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %port64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port64, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_isr.__UNIQUE_ID_ddebug246, ptr noundef %dev65, ptr noundef nonnull @.str.55, i32 noundef %or) #6
  br label %do.end69

do.end69:                                         ; preds = %if.then62, %do.body56
  br i1 %tobool3.not, label %do.end69.if.end73_crit_edge, label %if.then71

do.end69.if.end73_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then71:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #8
  %call.i165 = call i32 @__pm_runtime_idle(ptr noundef nonnull %5, i32 noundef 5) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %do.end69.if.end73_crit_edge
  %and75 = and i32 %or, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end73.if.end92_crit_edge, label %if.then77

if.end73.if.end92_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then77:                                        ; preds = %if.end73
  %cmd_busy = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 6
  %41 = ptrtoint ptr %cmd_busy to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %cmd_busy, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %cmd_busy, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !175
  %queue = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 7
  call void @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or)
  %cmp85 = icmp eq i32 %or, 16
  br i1 %cmp85, label %if.then77.cleanup_crit_edge, label %if.end88

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end88:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %conv91 = and i16 %conv38.le, -17
  br label %if.end92

if.end92:                                         ; preds = %if.end88, %if.end73.if.end92_crit_edge
  %events.1 = phi i16 [ %conv91, %if.end88 ], [ %conv38.le, %if.end73.if.end92_crit_edge ]
  %ignore_hotplug = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 33
  %42 = ptrtoint ptr %ignore_hotplug to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %bf.load93 = load i32, ptr %ignore_hotplug, align 2
  %43 = and i32 %bf.load93, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool95.not = icmp eq i32 %43, 0
  br i1 %tobool95.not, label %if.end119, label %do.body97

do.body97:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_isr.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_isr, %cleanup)) #6
          to label %if.then111 [label %cleanup], !srcloc !169

if.then111:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_id, align 4
  %port113 = getelementptr inbounds %struct.pcie_device, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %port113 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port113, align 4
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %conv115 = zext i16 %events.1 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_isr.__UNIQUE_ID_ddebug247, ptr noundef %dev114, ptr noundef nonnull @.str.56, i32 noundef %conv115) #6
  br label %cleanup

if.end119:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %conv120 = zext i16 %events.1 to i32
  %pending_events121 = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 8
  %call.i.i161 = call zeroext i1 @__kasan_check_write(ptr noundef %pending_events121, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %pending_events121, i32 1, i32 3, i32 1) #6
  %48 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events121, ptr %pending_events121, i32 %conv120, ptr elementtype(i32) %pending_events121) #6, !srcloc !174
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.then111, %do.body97, %if.then77.cleanup_crit_edge, %if.then42, %if.then40.cleanup_crit_edge, %if.then17, %do.end.cleanup_crit_edge, %if.then6, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end119 ], [ 2, %if.then6 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %if.then40.cleanup_crit_edge ], [ 1, %if.then77.cleanup_crit_edge ], [ 1, %if.then111 ], [ 1, %do.body97 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pciehp_ist(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %ist_running = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 18
  %4 = ptrtoint ptr %ist_running to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %ist_running, align 4
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #6
  %pending_events = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_events, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %pending_events, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_and\0A1:\09ldrex\09$0, [$4]\0A\09and\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events, ptr %pending_events, i32 -131073, ptr elementtype(i32) %pending_events) #6, !srcloc !177
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !178
  %and = and i32 %asmresult.i.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @pciehp_isr(i32 noundef %irq, ptr noundef %dev_id)
  tail call void @enable_irq(i32 noundef %irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 2
  br i1 %cmp.not, label %if.then.if.end4_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call zeroext i1 @synchronize_hardirq(i32 noundef %irq) #6
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_events, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %pending_events, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %pending_events) #6, !srcloc !180
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool8.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool8.not, label %if.end4.out_crit_edge, label %if.end10

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %if.end4
  %and11 = and i32 %asmresult.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %do.end

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 15, i32 2
  %11 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef %14) #9
  tail call void @pciehp_handle_button_press(ptr noundef %dev_id) #6
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end10.if.end15_crit_edge
  %and16 = and i32 %asmresult.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end26_crit_edge, label %do.end21

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end21:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %port23 = getelementptr inbounds %struct.pcie_device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %port23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port23, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %pci_slot.i.i80 = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 15, i32 2
  %19 = ptrtoint ptr %pci_slot.i.i80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_slot.i.i80, align 4
  %kobj.i.i.i81 = getelementptr inbounds %struct.pci_slot, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %kobj.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kobj.i.i.i81, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.60, ptr noundef %22) #9
  %slot_cap.i = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 1
  %23 = ptrtoint ptr %slot_cap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slot_cap.i, align 4
  %and.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cmd.0.i = select i1 %tobool.not.i, i16 0, i16 768
  %and7.i = and i32 %24, 8
  %25 = trunc i32 %and7.i to i16
  %26 = shl nuw nsw i16 %25, 3
  %cmd.1.i = or i16 %cmd.0.i, %26
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd.1.i)
  %tobool21.not.i = icmp eq i16 %cmd.1.i, 0
  br i1 %tobool21.not.i, label %do.end21.if.end26_crit_edge, label %if.then22.i

do.end21.if.end26_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then22.i:                                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %27 = or i16 %cmd.0.i, 192
  %mask.1.i = select i1 %tobool8.not.i, i16 %cmd.0.i, i16 %27
  tail call fastcc void @pcie_do_write_cmd(ptr noundef %dev_id, i16 noundef zeroext %cmd.1.i, i16 noundef zeroext %mask.1.i, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_set_indicators.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_ist, %if.end26)) #6
          to label %if.then27.i [label %if.end26], !srcloc !169

if.then27.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  %port.i82 = getelementptr inbounds %struct.pcie_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %port.i82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port.i82, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pcie_cap.i.i, align 8
  %conv.i.i = zext i8 %33 to i32
  %add.i = add nuw nsw i32 %conv.i.i, 24
  %conv31.i = zext i16 %cmd.1.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_set_indicators.__UNIQUE_ID_ddebug243, ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %add.i, i32 noundef %conv31.i) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then27.i, %if.then22.i, %do.end21.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %and27 = and i32 %asmresult.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end35_crit_edge, label %land.lhs.true

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end26
  %call29 = tail call zeroext i1 @pci_dpc_recovered(ptr noundef %3) #6
  br i1 %call29, label %land.lhs.true30, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true30:                                  ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 12
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %35)
  %cmp31 = icmp eq i8 %35, 5
  br i1 %cmp31, label %if.then33, label %land.lhs.true30.if.end35_crit_edge

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  %and34 = and i32 %asmresult.i.i, -257
  tail call fastcc void @pciehp_ignore_dpc_link_change(ptr noundef %dev_id, ptr noundef %3, i32 noundef %irq)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true30.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %events.0 = phi i32 [ %and34, %if.then33 ], [ %asmresult.i.i, %land.lhs.true30.if.end35_crit_edge ], [ %asmresult.i.i, %land.lhs.true.if.end35_crit_edge ], [ %asmresult.i.i, %if.end26.if.end35_crit_edge ]
  %reset_lock = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 16
  %depth = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 17
  %36 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %depth, align 4
  tail call void @down_read_nested(ptr noundef %reset_lock, i32 noundef %37) #6
  %and36 = and i32 %events.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pciehp_handle_disable_request(ptr noundef %dev_id) #6
  br label %if.end43

if.else:                                          ; preds = %if.end35
  %and39 = and i32 %events.0, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else.if.end43_crit_edge, label %if.then41

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pciehp_handle_presence_or_link_change(ptr noundef %dev_id, i32 noundef %events.0) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.else.if.end43_crit_edge, %if.then38
  tail call void @up_read(ptr noundef %reset_lock) #6
  br label %out

out:                                              ; preds = %if.end43, %if.end4.out_crit_edge, %if.then.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then.out_crit_edge ], [ 1, %if.end43 ], [ 0, %if.end4.out_crit_edge ]
  tail call void @pci_config_pm_runtime_put(ptr noundef %3) #6
  %38 = ptrtoint ptr %ist_running to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ist_running, align 4
  %requester = getelementptr inbounds %struct.controller, ptr %dev_id, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %requester, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_idle(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @synchronize_hardirq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_handle_button_press(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_dpc_recovered(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pciehp_ignore_dpc_link_change(ptr noundef %ctrl, ptr noundef %pdev, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  %lnk_status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @synchronize_hardirq(i32 noundef %irq) #6
  %pending_events = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_events, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %pending_events, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_and\0A1:\09ldrex\09$0, [$3]\0A\09and\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_events, ptr %pending_events, i32 -257, ptr elementtype(i32) %pending_events) #6, !srcloc !170
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pciehp_poll_mode to i32))
  %1 = load i8, ptr @pciehp_poll_mode, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @pcie_capability_write_word(ptr noundef %pdev, i32 noundef 26, i16 noundef zeroext 256) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.pcie_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %pci_slot.i.i = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 15, i32 2
  %6 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef %9) #9
  %reset_lock = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 16
  %depth = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 17
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  tail call void @down_read_nested(ptr noundef %reset_lock, i32 noundef %11) #6
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl, align 4
  %port.i.i = getelementptr inbounds %struct.pcie_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk_status.i) #6
  %16 = ptrtoint ptr %lnk_status.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %lnk_status.i, align 2, !annotation !168
  %call1.i = call i32 @pcie_capability_read_word(ptr noundef %15, i32 noundef 18, ptr noundef nonnull %lnk_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 134
  br i1 %cmp.i, label %do.end.pciehp_check_link_active.exit.thread_crit_edge, label %lor.lhs.false.i

do.end.pciehp_check_link_active.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciehp_check_link_active.exit.thread

lor.lhs.false.i:                                  ; preds = %do.end
  %17 = ptrtoint ptr %lnk_status.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %lnk_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp2.i = icmp eq i16 %18, -1
  br i1 %cmp2.i, label %lor.lhs.false.i.pciehp_check_link_active.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.pciehp_check_link_active.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pciehp_check_link_active.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pciehp_check_link_active.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pciehp_ignore_dpc_link_change, %pciehp_check_link_active.exit)) #6
          to label %if.then15.i [label %pciehp_check_link_active.exit], !srcloc !169

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl, align 4
  %port.i = getelementptr inbounds %struct.pcie_device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %lnk_status.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %lnk_status.i, align 2
  %conv16.i = zext i16 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pciehp_check_link_active.__UNIQUE_ID_ddebug237, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv16.i) #6
  br label %pciehp_check_link_active.exit

pciehp_check_link_active.exit.thread:             ; preds = %lor.lhs.false.i.pciehp_check_link_active.exit.thread_crit_edge, %do.end.pciehp_check_link_active.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk_status.i) #6
  br label %if.end6

pciehp_check_link_active.exit:                    ; preds = %if.then15.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk_status.i) #6
  %25 = and i16 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool4.not = icmp eq i16 %25, 0
  br i1 %tobool4.not, label %if.then5, label %pciehp_check_link_active.exit.if.end6_crit_edge

pciehp_check_link_active.exit.if.end6_crit_edge:  ; preds = %pciehp_check_link_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %pciehp_check_link_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @pciehp_request(ptr noundef %ctrl, i32 noundef 256) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %pciehp_check_link_active.exit.if.end6_crit_edge, %pciehp_check_link_active.exit.thread
  call void @up_read(ptr noundef %reset_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_handle_disable_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciehp_handle_presence_or_link_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !77, !78, !80, !82, !84, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 243, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pciehp_check_link_active.__UNIQUE_ID_ddebug237, !1, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 295, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pciehp_check_link_status._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @pciehp_check_link_status._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @pciehp_check_link_status.__UNIQUE_ID_ddebug239, !14, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!14 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 311, i32 2}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 314, i32 3}
!17 = !{ptr @pciehp_check_link_status._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @pciehp_check_link_status._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 322, i32 3}
!21 = !{ptr @pciehp_check_link_status._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @pciehp_check_link_status._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 375, i32 2}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pciehp_get_attention_status.__UNIQUE_ID_ddebug241, !24, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 402, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pciehp_get_power_status.__UNIQUE_ID_ddebug242, !28, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 528, i32 3}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pciehp_set_indicators.__UNIQUE_ID_ddebug243, !32, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 547, i32 2}
!37 = !{ptr @pciehp_power_on_slot.__UNIQUE_ID_ddebug244, !36, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 553, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pciehp_power_on_slot._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @pciehp_power_on_slot._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 561, i32 2}
!45 = !{ptr @pciehp_power_off_slot.__UNIQUE_ID_ddebug245, !44, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 920, i32 2}
!48 = !{ptr @pciehp_reset_slot.__UNIQUE_ID_ddebug250, !47, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!49 = !{ptr @pciehp_reset_slot.__UNIQUE_ID_ddebug251, !50, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!50 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 927, i32 2}
!51 = !{ptr @pcie_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1007, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pcie_init.__key.26, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1008, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pcie_init.__key.28, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1009, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pcie_init.__key.30, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1010, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pcie_init.__key.32, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1011, i32 2}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pcie_init.__key.34, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1012, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pcie_init.__key.36, !67, !"__key", i1 false, i1 false}
!70 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1038, i32 2}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pcie_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @pcie_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__pci_fixup_quirk_cmd_compl1086, !79, !"__pci_fixup_quirk_cmd_compl1086", i1 false, i1 false}
!79 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1085, i32 1}
!80 = !{ptr @__pci_fixup_quirk_cmd_compl1088, !81, !"__pci_fixup_quirk_cmd_compl1088", i1 false, i1 false}
!81 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1087, i32 1}
!82 = !{ptr @__pci_fixup_quirk_cmd_compl1090, !83, !"__pci_fixup_quirk_cmd_compl1090", i1 false, i1 false}
!83 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1089, i32 1}
!84 = !{ptr @__pci_fixup_quirk_cmd_compl1092, !85, !"__pci_fixup_quirk_cmd_compl1092", i1 false, i1 false}
!85 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 1091, i32 1}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 267, i32 3}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @pci_bus_check_dev.__UNIQUE_ID_ddebug238, !87, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 169, i32 3}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pcie_do_write_cmd._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @pcie_do_write_cmd._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 144, i32 3}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @pcie_wait_cmd._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @pcie_wait_cmd._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 93, i32 4}
!102 = !{ptr @pcie_poll_cmd._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @pcie_poll_cmd._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 343, i32 2}
!106 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @__pciehp_link_set.__UNIQUE_ID_ddebug240, !105, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 62, i32 23}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 72, i32 3}
!112 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @pciehp_request_irq._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @pciehp_request_irq._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 625, i32 3}
!117 = !{ptr @pciehp_isr._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @pciehp_isr._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 668, i32 2}
!121 = !{ptr @pciehp_isr.__UNIQUE_ID_ddebug246, !120, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 688, i32 3}
!124 = !{ptr @pciehp_isr.__UNIQUE_ID_ddebug247, !123, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 724, i32 3}
!127 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pciehp_ist._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @pciehp_ist._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 731, i32 3}
!132 = !{ptr @pciehp_ist._entry.59, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @pciehp_ist._entry_ptr.61, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 578, i32 2}
!136 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @pciehp_ignore_dpc_link_change._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @pciehp_ignore_dpc_link_change._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 820, i32 2}
!141 = !{ptr @pcie_enable_notification.__UNIQUE_ID_ddebug248, !140, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 833, i32 2}
!144 = !{ptr @pcie_disable_notification.__UNIQUE_ID_ddebug249, !143, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 957, i32 2}
!147 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @dbg_ctrl.__UNIQUE_ID_ddebug252, !146, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 959, i32 2}
!151 = !{ptr @dbg_ctrl.__UNIQUE_ID_ddebug253, !150, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 961, i32 2}
!154 = !{ptr @dbg_ctrl.__UNIQUE_ID_ddebug254, !153, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!155 = distinct !{null, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 40, i32 12}
!157 = distinct !{null, !158, !"inband_presence_disabled_dmi_table", i1 false, i1 false}
!158 = !{!"../drivers/pci/hotplug/pciehp_hpc.c", i32 30, i32 35}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"auto-init"}
!169 = !{i64 2148357972, i64 2148357977, i64 2148357990, i64 2148358034, i64 2148358068, i64 2148358089}
!170 = !{i64 2148539035, i64 2148539061, i64 2148539090, i64 2148539124, i64 2148539155, i64 2148539178}
!171 = !{i8 0, i8 2}
!172 = !{i64 2154558321}
!173 = !{i64 2148534157, i64 2148534183, i64 2148534212, i64 2148534246, i64 2148534277, i64 2148534300}
!174 = !{i64 2148542295, i64 2148542321, i64 2148542350, i64 2148542384, i64 2148542415, i64 2148542438}
!175 = !{i64 2154601423}
!176 = !{i64 2148629926}
!177 = !{i64 2148539758, i64 2148539790, i64 2148539819, i64 2148539853, i64 2148539884, i64 2148539907}
!178 = !{i64 2148630154}
!179 = !{i64 2148794057}
!180 = !{i64 1040925, i64 1040942, i64 1040966, i64 1040992, i64 1041010}
!181 = !{i64 2148794427}
