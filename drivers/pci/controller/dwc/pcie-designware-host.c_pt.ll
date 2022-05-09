; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-designware-host.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-designware-host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dw_pcie_host_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_pcie_host_init\09\09\09\09"
module asm "\09.long\09__crc_dw_pcie_host_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_host_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_host_init\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_host_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_pcie_host_deinit\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_pcie_host_deinit\09\09\09\09"
module asm "\09.long\09__crc_dw_pcie_host_deinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_host_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_host_deinit\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_host_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_pcie_own_conf_map_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_pcie_own_conf_map_bus\09\09\09\09"
module asm "\09.long\09__crc_dw_pcie_own_conf_map_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_own_conf_map_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_own_conf_map_bus\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_own_conf_map_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_pcie_setup_rc\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_pcie_setup_rc\09\09\09\09"
module asm "\09.long\09__crc_dw_pcie_setup_rc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_setup_rc:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_setup_rc\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_setup_rc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }

@dw_pcie_msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_pcie_irq_domain_alloc, ptr @dw_pcie_irq_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dw_pcie_allocate_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dw_pcie_allocate_domains\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/pci/controller/dwc/pcie-designware-host.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_pcie_allocate_domains._entry_ptr = internal global ptr @dw_pcie_allocate_domains._entry, section ".printk_index", align 4
@dw_pcie_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 15, ptr null, ptr @dw_pcie_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dw_pcie_allocate_domains._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@dw_pcie_allocate_domains._entry_ptr.7 = internal global ptr @dw_pcie_allocate_domains._entry.5, section ".printk_index", align 4
@dw_pcie_host_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pci->pp.lock\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@dw_pcie_host_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 310, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Missing *config* reg space\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw_pcie_host_init\00", [46 x i8] zeroinitializer }, align 32
@dw_pcie_host_init._entry_ptr = internal global ptr @dw_pcie_host_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dbi\00", [28 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @dw_pcie_own_conf_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@dw_child_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @dw_pcie_other_conf_map_bus, ptr @dw_pcie_rd_other_conf, ptr @dw_pcie_wr_other_conf }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msi-parent\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msi-map\00", [24 x i8] zeroinitializer }, align 32
@dw_pcie_host_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid number of vectors\0A\00", [37 x i8] zeroinitializer }, align 32
@dw_pcie_host_init._entry_ptr.17 = internal global ptr @dw_pcie_host_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msi\00", [28 x i8] zeroinitializer }, align 32
@dw_pci_msi_bottom_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.29, ptr null, ptr null, ptr null, ptr null, ptr @dw_pci_bottom_ack, ptr @dw_pci_bottom_mask, ptr null, ptr @dw_pci_bottom_unmask, ptr null, ptr @dw_pci_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_pci_setup_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@dw_pcie_host_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.2, i32 387, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Failed to set DMA mask to 32-bit. Devices with only 32-bit MSI support may not work properly\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dw_pcie_host_init._entry_ptr.22 = internal global ptr @dw_pcie_host_init._entry.19, section ".printk_index", align 4
@dw_pcie_host_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.2, i32 394, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to map MSI data\0A\00", [40 x i8] zeroinitializer }, align 32
@dw_pcie_host_init._entry_ptr.25 = internal global ptr @dw_pcie_host_init._entry.23, section ".printk_index", align 4
@__kstrtab_dw_pcie_host_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_host_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_host_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_host_init to i32), ptr @__kstrtab_dw_pcie_host_init, ptr @__kstrtabns_dw_pcie_host_init }, section "___ksymtab_gpl+dw_pcie_host_init", align 4
@__kstrtab_dw_pcie_host_deinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_host_deinit = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_host_deinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_host_deinit to i32), ptr @__kstrtab_dw_pcie_host_deinit, ptr @__kstrtabns_dw_pcie_host_deinit }, section "___ksymtab_gpl+dw_pcie_host_deinit", align 4
@__kstrtab_dw_pcie_own_conf_map_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_own_conf_map_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_own_conf_map_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_own_conf_map_bus to i32), ptr @__kstrtab_dw_pcie_own_conf_map_bus, ptr @__kstrtabns_dw_pcie_own_conf_map_bus }, section "___ksymtab_gpl+dw_pcie_own_conf_map_bus", align 4
@dw_pcie_setup_rc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 617, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Resources exceed number of ATU entries (%d)\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_pcie_setup_rc\00", [47 x i8] zeroinitializer }, align 32
@dw_pcie_setup_rc._entry_ptr = internal global ptr @dw_pcie_setup_rc._entry, section ".printk_index", align 4
@__kstrtab_dw_pcie_setup_rc = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_setup_rc = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_setup_rc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_setup_rc to i32), ptr @__kstrtab_dw_pcie_setup_rc, ptr @__kstrtabns_dw_pcie_setup_rc }, section "___ksymtab_gpl+dw_pcie_setup_rc", align 4
@dw_pcie_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.28, ptr null, ptr null, ptr null, ptr null, ptr @dw_msi_ack_irq, ptr @dw_msi_mask_irq, ptr null, ptr @dw_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCI-MSI\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DWPCI-MSI\00", [22 x i8] zeroinitializer }, align 32
@dw_pci_setup_msi_msg.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcie_designware_host\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw_pci_setup_msi_msg\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"msi#%d address_hi %#x address_lo %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"dw_pcie_msi_domain_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 227, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 240, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"dw_pcie_msi_domain_info\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 49, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 250, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 299, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 301, i32 63 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 310, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 315, i32 81 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 519, i32 23 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"dw_child_pcie_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 501, i32 23 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 350, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 351, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 356, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 366, i32 58 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"dw_pci_msi_bottom_irq_chip\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 175, i32 24 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 387, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 394, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 616, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"dw_pcie_msi_irq_chip\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 42, i32 24 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 43, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 176, i32 10 }
@___asan_gen_.150 = private constant [53 x i8] c"../drivers/pci/controller/dwc/pcie-designware-host.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 114, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 326, i32 6 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__ksymtab_dw_pcie_host_deinit, ptr @__ksymtab_dw_pcie_host_init, ptr @__ksymtab_dw_pcie_own_conf_map_bus, ptr @__ksymtab_dw_pcie_setup_rc, ptr @dw_pcie_allocate_domains._entry, ptr @dw_pcie_allocate_domains._entry.5, ptr @dw_pcie_allocate_domains._entry_ptr, ptr @dw_pcie_allocate_domains._entry_ptr.7, ptr @dw_pcie_host_init._entry, ptr @dw_pcie_host_init._entry.15, ptr @dw_pcie_host_init._entry.19, ptr @dw_pcie_host_init._entry.23, ptr @dw_pcie_host_init._entry_ptr, ptr @dw_pcie_host_init._entry_ptr.17, ptr @dw_pcie_host_init._entry_ptr.22, ptr @dw_pcie_host_init._entry_ptr.25, ptr @dw_pcie_setup_rc._entry, ptr @dw_pcie_setup_rc._entry_ptr, ptr @dw_pcie_msi_domain_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dw_pcie_msi_domain_info, ptr @.str.6, ptr @dw_pcie_host_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dw_pcie_ops, ptr @dw_child_pcie_ops, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @dw_pci_msi_bottom_irq_chip, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @dw_pcie_msi_irq_chip, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_allocate_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_allocate_domains._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_host_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_host_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_child_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_host_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pci_msi_bottom_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_host_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_host_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_setup_rc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_handle_msi_irq(ptr noundef %pp) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !90
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %num_vectors = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 15
  %1 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp19.not = icmp ult i32 %2, 32
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div15 = lshr i32 %2, 5
  %irq_domain = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %for.inc.for.body_crit_edge ]
  %ret.020 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %i.021, 12
  %add = add nuw nsw i32 %mul, 2096
  %call.i = call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %val, align 4
  %call116 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call116)
  %cmp2.not17 = icmp eq i32 %call116, 32
  br i1 %cmp2.not17, label %if.end.for.inc_crit_edge, label %while.body.lr.ph

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body.lr.ph:                                 ; preds = %if.end
  %mul3 = shl i32 %i.021, 5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call118 = phi i32 [ %call116, %while.body.lr.ph ], [ %call1, %while.body.while.body_crit_edge ]
  %4 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_domain, align 8
  %add4 = add i32 %call118, %mul3
  %call5 = call i32 @generic_handle_domain_irq(ptr noundef %5, i32 noundef %add4) #8
  %inc = add i32 %call118, 1
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef %inc) #8
  %cmp2.not = icmp eq i32 %call1, 32
  br i1 %cmp2.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.020, %for.body.for.inc_crit_edge ], [ 1, %if.end.for.inc_crit_edge ], [ 1, %while.body.for.inc_crit_edge ]
  %inc6 = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc6, %div15
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %ret.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_allocate_domains(ptr noundef %pp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %fwnode.i
  %num_vectors = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 15
  %4 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vectors, align 4
  %call.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i, i32 noundef %5, i32 noundef %5, i32 noundef 0, ptr noundef nonnull @dw_pcie_msi_domain_ops, ptr noundef %pp) #8
  %irq_domain = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 10
  %6 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %irq_domain, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call.i, i32 noundef 5) #8
  %9 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_domain, align 8
  %call6 = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i, ptr noundef nonnull @dw_pcie_msi_domain_info, ptr noundef %10) #8
  %msi_domain = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 11
  %11 = ptrtoint ptr %msi_domain to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %msi_domain, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6) #11
  %14 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_domain, align 8
  tail call void @irq_domain_remove(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end12 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_host_init(ptr noundef %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %add.ptr4 = getelementptr i8, ptr %1, i32 -16
  %lock = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @dw_pcie_host_init.__key, i16 noundef signext 2) #8
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr4, i32 noundef 512, ptr noundef nonnull @.str.9) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end15, label %if.then

if.then:                                          ; preds = %entry
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %sub.i = add i32 %5, 1
  %add.i = sub i32 %sub.i, %7
  %cfg0_size = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 3
  %8 = ptrtoint ptr %cfg0_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %cfg0_size, align 4
  %9 = load i32, ptr %call, align 4
  %conv = zext i32 %9 to i64
  %cfg0_base = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 1
  %10 = ptrtoint ptr %cfg0_base to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %cfg0_base, align 8
  %call7 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %1, ptr noundef nonnull %call) #8
  %va_cfg0_base = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 2
  %11 = ptrtoint ptr %va_cfg0_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %va_cfg0_base, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call7 to i32
  br label %cleanup174

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #11
  br label %cleanup174

if.end16:                                         ; preds = %if.then
  %dbi_base = getelementptr i8, ptr %pp, i32 -28
  %13 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dbi_base, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then18:                                        ; preds = %if.end16
  %call19 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr4, i32 noundef 512, ptr noundef nonnull @.str.12) #8
  %call20 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %1, ptr noundef %call19) #8
  %15 = ptrtoint ptr %dbi_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %dbi_base, align 4
  %cmp.i279 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i279, label %cleanup.thread, label %if.then18.if.end28_crit_edge

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

cleanup.thread:                                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call20 to i32
  br label %cleanup174

if.end28:                                         ; preds = %if.then18.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  %call29 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %1, i32 noundef 0) #8
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.cleanup174_crit_edge, label %if.end32

if.end28.cleanup174_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup174

if.end32:                                         ; preds = %if.end28
  %bridge33 = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 17
  %17 = ptrtoint ptr %bridge33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call29, ptr %bridge33, align 8
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %call29, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end32
  %entry1.0.in.i = phi ptr [ %windows, %if.end32 ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %18 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %windows
  br i1 %cmp.not.i, label %for.cond.i.if.end43_crit_edge, label %for.body.i

for.cond.i.if.end43_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

for.body.i:                                       ; preds = %for.cond.i
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %res.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %22, 7936
  %cmp2.i = icmp eq i32 %and.i.i, 256
  br i1 %cmp2.i, label %resource_list_first_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

resource_list_first_type.exit:                    ; preds = %for.body.i
  %tobool35.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool35.not, label %resource_list_first_type.exit.if.end43_crit_edge, label %if.then36

resource_list_first_type.exit.if.end43_crit_edge: ; preds = %resource_list_first_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then36:                                        ; preds = %resource_list_first_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  %res.i.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %res.i.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res.i.le, align 4
  %end.i280 = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %end.i280 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i280, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %sub.i281 = add i32 %26, 1
  %add.i282 = sub i32 %sub.i281, %28
  %io_size = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 6
  %29 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i282, ptr %io_size, align 8
  %30 = load ptr, ptr %res.i.le, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 2
  %33 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset, align 4
  %sub = sub i32 %32, %34
  %io_bus_addr = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 5
  %35 = ptrtoint ptr %io_bus_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %io_bus_addr, align 4
  %36 = load ptr, ptr %res.i.le, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %call42 = tail call i32 @pci_pio_to_address(i32 noundef %38) #8
  %io_base = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 4
  %39 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call42, ptr %io_base, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %resource_list_first_type.exit.if.end43_crit_edge, %for.cond.i.if.end43_crit_edge
  %link_gen = getelementptr i8, ptr %pp, i32 276
  %40 = ptrtoint ptr %link_gen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %link_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp = icmp slt i32 %41, 1
  br i1 %cmp, label %if.then45, label %if.end43.if.end48_crit_edge

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 @of_pci_get_max_link_speed(ptr noundef %3) #8
  %42 = ptrtoint ptr %link_gen to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call46, ptr %link_gen, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call29, i32 0, i32 2
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @dw_pcie_ops, ptr %ops, align 4
  %child_ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call29, i32 0, i32 3
  %44 = ptrtoint ptr %child_ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @dw_child_pcie_ops, ptr %child_ops, align 8
  %ops49 = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 8
  %45 = ptrtoint ptr %ops49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops49, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %tobool50.not = icmp eq ptr %48, null
  br i1 %tobool50.not, label %if.end48.if.end58_crit_edge, label %if.then51

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then51:                                        ; preds = %if.end48
  %call54 = tail call i32 %48(ptr noundef %pp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then51.if.end58_crit_edge, label %if.then51.cleanup174_crit_edge

if.then51.cleanup174_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup174

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end58:                                         ; preds = %if.then51.if.end58_crit_edge, %if.end48.if.end58_crit_edge
  %call59 = tail call i32 @pci_msi_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end58.if.end148_crit_edge, label %if.then61

if.end58.if.end148_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then61:                                        ; preds = %if.end58
  %49 = ptrtoint ptr %ops49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops49, align 8
  %msi_host_init = getelementptr inbounds %struct.dw_pcie_host_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %msi_host_init to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %msi_host_init, align 4
  %tobool63.not = icmp eq ptr %52, null
  br i1 %tobool63.not, label %lor.lhs.false, label %if.then61.lor.end_crit_edge

if.then61.lor.end_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false:                                    ; preds = %if.then61
  %call.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call.i283 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef null) #8
  %tobool.i284.not = icmp eq ptr %call.i283, null
  %phi.sel = select i1 %tobool.i284.not, i8 -128, i8 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %if.then61.lor.end_crit_edge
  %53 = phi i8 [ 0, %lor.lhs.false.lor.end_crit_edge ], [ 0, %if.then61.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %54 = ptrtoint ptr %pp to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %pp, align 8
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %53
  store i8 %bf.set, ptr %pp, align 8
  %num_vectors = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 15
  %55 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool69.not = icmp eq i32 %56, 0
  br i1 %tobool69.not, label %if.then70, label %if.else72

if.then70:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %num_vectors to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 32, ptr %num_vectors, align 4
  br label %if.end81

if.else72:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %56)
  %cmp74 = icmp ugt i32 %56, 256
  br i1 %cmp74, label %do.end79, label %if.else72.if.end81_crit_edge

if.else72.if.end81_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

do.end79:                                         ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #11
  br label %cleanup174

if.end81:                                         ; preds = %if.else72.if.end81_crit_edge, %if.then70
  %58 = ptrtoint ptr %ops49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops49, align 8
  %msi_host_init83 = getelementptr inbounds %struct.dw_pcie_host_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %msi_host_init83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msi_host_init83, align 4
  %tobool84.not = icmp eq ptr %61, null
  br i1 %tobool84.not, label %if.else93, label %if.then85

if.then85:                                        ; preds = %if.end81
  %call88 = tail call i32 %61(ptr noundef %pp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then85.cleanup174_crit_edge, label %if.then85.if.end148_crit_edge

if.then85.if.end148_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then85.cleanup174_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup174

if.else93:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set)
  %bf.cast.not = icmp sgt i8 %bf.set, -1
  br i1 %bf.cast.not, label %if.else93.if.end148_crit_edge, label %if.then95

if.else93.if.end148_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then95:                                        ; preds = %if.else93
  %msi_irq = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 9
  %62 = ptrtoint ptr %msi_irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %msi_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool96.not = icmp eq i32 %63, 0
  br i1 %tobool96.not, label %if.then97, label %if.then95.if.end113_crit_edge

if.then95.if.end113_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then97:                                        ; preds = %if.then95
  %call98 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr4, ptr noundef nonnull @.str.18) #8
  %64 = ptrtoint ptr %msi_irq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call98, ptr %msi_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp101 = icmp slt i32 %call98, 0
  br i1 %cmp101, label %if.then103, label %if.then97.if.end113_crit_edge

if.then97.if.end113_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then103:                                       ; preds = %if.then97
  %call104 = tail call i32 @platform_get_irq(ptr noundef %add.ptr4, i32 noundef 0) #8
  %65 = ptrtoint ptr %msi_irq to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call104, ptr %msi_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp107 = icmp slt i32 %call104, 0
  br i1 %cmp107, label %if.then103.cleanup174_crit_edge, label %if.then103.if.end113_crit_edge

if.then103.if.end113_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then103.cleanup174_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup174

if.end113:                                        ; preds = %if.then103.if.end113_crit_edge, %if.then97.if.end113_crit_edge, %if.then95.if.end113_crit_edge
  %msi_irq_chip = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 14
  %66 = ptrtoint ptr %msi_irq_chip to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @dw_pci_msi_bottom_irq_chip, ptr %msi_irq_chip, align 8
  %call114 = tail call i32 @dw_pcie_allocate_domains(ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.cleanup174_crit_edge

if.end113.cleanup174_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup174

if.end117:                                        ; preds = %if.end113
  %67 = ptrtoint ptr %msi_irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msi_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp119 = icmp sgt i32 %68, 0
  br i1 %cmp119, label %if.then121, label %if.end117.if.end123_crit_edge

if.end117.if.end123_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_set_chained_handler_and_data(i32 noundef %68, ptr noundef nonnull @dw_chained_msi_isr, ptr noundef %pp) #8
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end117.if.end123_crit_edge
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr, align 8
  %call125 = tail call i32 @dma_set_mask(ptr noundef %70, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end123.if.end132_crit_edge, label %do.end130

if.end123.if.end132_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

do.end130:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.20) #11
  br label %if.end132

if.end132:                                        ; preds = %do.end130, %if.end123.if.end132_crit_edge
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr, align 8
  %msi_msg = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 12
  %call134 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %74, ptr noundef %msi_msg)
  %msi_data = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 13
  %75 = ptrtoint ptr %msi_data to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call134, ptr %msi_data, align 4
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %77, i32 noundef %call134) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call134)
  %cmp.i285.not = icmp eq i32 %call134, -1
  br i1 %cmp.i285.not, label %do.end142, label %if.end132.if.end148_crit_edge

if.end132.if.end148_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

do.end142:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.24) #11
  %80 = ptrtoint ptr %msi_data to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %msi_data, align 4
  br label %err_free_msi

if.end148:                                        ; preds = %if.end132.if.end148_crit_edge, %if.else93.if.end148_crit_edge, %if.then85.if.end148_crit_edge, %if.end58.if.end148_crit_edge
  tail call void @dw_pcie_iatu_detect(ptr noundef %add.ptr) #8
  tail call void @dw_pcie_setup_rc(ptr noundef %pp)
  %call149 = tail call i32 @dw_pcie_link_up(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %land.lhs.true, label %if.end148.if.end163_crit_edge

if.end148.if.end163_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

land.lhs.true:                                    ; preds = %if.end148
  %ops151 = getelementptr i8, ptr %pp, i32 264
  %81 = ptrtoint ptr %ops151 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops151, align 8
  %tobool152.not = icmp eq ptr %82, null
  br i1 %tobool152.not, label %land.lhs.true.if.end163_crit_edge, label %land.lhs.true153

land.lhs.true.if.end163_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

land.lhs.true153:                                 ; preds = %land.lhs.true
  %start_link = getelementptr inbounds %struct.dw_pcie_ops, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %start_link to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %start_link, align 4
  %tobool155.not = icmp eq ptr %84, null
  br i1 %tobool155.not, label %land.lhs.true153.if.end163_crit_edge, label %if.then156

land.lhs.true153.if.end163_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then156:                                       ; preds = %land.lhs.true153
  %call159 = tail call i32 %84(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then156.if.end163_crit_edge, label %if.then156.err_free_msi_crit_edge

if.then156.err_free_msi_crit_edge:                ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_msi

if.then156.if.end163_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.end163:                                        ; preds = %if.then156.if.end163_crit_edge, %land.lhs.true153.if.end163_crit_edge, %land.lhs.true.if.end163_crit_edge, %if.end148.if.end163_crit_edge
  %call164 = tail call i32 @dw_pcie_wait_for_link(ptr noundef %add.ptr) #8
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call29, i32 0, i32 4
  %85 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %pp, ptr %sysdata, align 4
  %call165 = tail call i32 @pci_host_probe(ptr noundef nonnull %call29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end163.cleanup174_crit_edge, label %if.end163.err_free_msi_crit_edge

if.end163.err_free_msi_crit_edge:                 ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_msi

if.end163.cleanup174_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup174

err_free_msi:                                     ; preds = %if.end163.err_free_msi_crit_edge, %if.then156.err_free_msi_crit_edge, %do.end142
  %ret.0 = phi i32 [ %call165, %if.end163.err_free_msi_crit_edge ], [ %call159, %if.then156.err_free_msi_crit_edge ], [ %call125, %do.end142 ]
  %86 = ptrtoint ptr %pp to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load169 = load i8, ptr %pp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load169)
  %bf.cast171.not = icmp sgt i8 %bf.load169, -1
  br i1 %bf.cast171.not, label %err_free_msi.cleanup174_crit_edge, label %if.then172

err_free_msi.cleanup174_crit_edge:                ; preds = %err_free_msi
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup174

if.then172:                                       ; preds = %err_free_msi
  %msi_irq.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 9
  %87 = ptrtoint ptr %msi_irq.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %msi_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i, label %if.then172.if.end.i_crit_edge, label %if.then.i

if.then172.if.end.i_crit_edge:                    ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_set_chained_handler_and_data(i32 noundef %88, ptr noundef null, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then172.if.end.i_crit_edge
  %msi_domain.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 11
  %89 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %msi_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %90) #8
  %irq_domain.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 10
  %91 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %irq_domain.i, align 8
  tail call void @irq_domain_remove(ptr noundef %92) #8
  %msi_data.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 13
  %93 = ptrtoint ptr %msi_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %msi_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool2.not.i = icmp eq i32 %94, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup174_crit_edge, label %if.then3.i

if.end.i.cleanup174_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup174

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %96, i32 noundef %94, i32 noundef 2, i32 noundef 2, i32 noundef 32) #8
  br label %cleanup174

cleanup174:                                       ; preds = %if.then3.i, %if.end.i.cleanup174_crit_edge, %err_free_msi.cleanup174_crit_edge, %if.end163.cleanup174_crit_edge, %if.end113.cleanup174_crit_edge, %if.then103.cleanup174_crit_edge, %if.then85.cleanup174_crit_edge, %do.end79, %if.then51.cleanup174_crit_edge, %if.end28.cleanup174_crit_edge, %cleanup.thread, %do.end15, %if.then10
  %retval.1 = phi i32 [ %12, %if.then10 ], [ -22, %do.end79 ], [ -19, %do.end15 ], [ -12, %if.end28.cleanup174_crit_edge ], [ %call54, %if.then51.cleanup174_crit_edge ], [ %call88, %if.then85.cleanup174_crit_edge ], [ %call104, %if.then103.cleanup174_crit_edge ], [ %call114, %if.end113.cleanup174_crit_edge ], [ 0, %if.end163.cleanup174_crit_edge ], [ %ret.0, %err_free_msi.cleanup174_crit_edge ], [ %16, %cleanup.thread ], [ %ret.0, %if.end.i.cleanup174_crit_edge ], [ %ret.0, %if.then3.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_max_link_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_chained_msi_isr(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %10 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler_data.i, align 4
  %call2 = tail call i32 @dw_handle_msi_irq(ptr noundef %11)
  %12 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i8 = icmp eq ptr %13, null
  br i1 %tobool.not.i8, label %if.else.i9, label %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge

chained_irq_enter.exit.chained_irq_exit.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i9:                                       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i9, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %15, %if.else.i9 ], [ %13, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #8
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !91

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16 = tail call ptr @dev_driver_string(ptr noundef %dev) #8
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef %call16, ptr noundef %retval.0.i) #8
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ptr, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %ptr to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %and = and i32 %5, 4095
  %call41 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef 2, i32 noundef 2, i32 noundef 32) #8
  br label %return

return:                                           ; preds = %if.end39, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -1, %dev_name.exit ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_iatu_detect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_pcie_setup_rc(ptr noundef %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %call.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 2236, i32 noundef 4) #8
  %or.i = or i32 %call.i.i, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2236, i32 noundef 4, i32 noundef %or.i) #8
  tail call void @dw_pcie_setup(ptr noundef %add.ptr) #8
  %0 = ptrtoint ptr %pp to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %pp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %num_vectors = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 15
  %1 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp147.not = icmp ult i32 %2, 32
  br i1 %cmp147.not, label %if.then.if.end_crit_edge, label %for.body.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader:                               ; preds = %if.then
  %div140 = lshr i32 %2, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ctrl.0148 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.pcie_port, ptr %pp, i32 0, i32 16, i32 %ctrl.0148
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %arrayidx, align 4
  %mul = mul nuw nsw i32 %ctrl.0148, 12
  %add = add nuw nsw i32 %mul, 2092
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 4, i32 noundef -1) #8
  %add4 = add nuw nsw i32 %mul, 2088
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %add4, i32 noundef 4, i32 noundef -1) #8
  %inc = add nuw nsw i32 %ctrl.0148, 1
  %exitcond.not = icmp eq i32 %inc, %div140
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %msi_data.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 13
  %4 = ptrtoint ptr %msi_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msi_data.i, align 4
  %call.i = tail call i32 @pci_msi_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.dw_pcie_msi_init.exit_crit_edge, label %lor.lhs.false.i

if.end.dw_pcie_msi_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_pcie_msi_init.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %6 = ptrtoint ptr %pp to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %pp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i.dw_pcie_msi_init.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dw_pcie_msi_init.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_pcie_msi_init.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2080, i32 noundef 4, i32 noundef %5) #8
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2084, i32 noundef 4, i32 noundef 0) #8
  br label %dw_pcie_msi_init.exit

dw_pcie_msi_init.exit:                            ; preds = %if.end.i, %lor.lhs.false.i.dw_pcie_msi_init.exit_crit_edge, %if.end.dw_pcie_msi_init.exit_crit_edge
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 4, i32 noundef 4) #8
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 20, i32 noundef 4, i32 noundef 0) #8
  %call.i141 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 60, i32 noundef 4) #8
  %and = and i32 %call.i141, -65281
  %or = or i32 %and, 256
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 60, i32 noundef 4, i32 noundef %or) #8
  %call.i142 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 24, i32 noundef 4) #8
  %and6 = and i32 %call.i142, -16777216
  %or7 = or i32 %and6, 16711936
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 24, i32 noundef 4, i32 noundef %or7) #8
  %call.i143 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 4, i32 noundef 4) #8
  %and9 = and i32 %call.i143, -65536
  %or10 = or i32 %and9, 263
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 4, i32 noundef 4, i32 noundef %or10) #8
  %num_ob_windows = getelementptr i8, ptr %pp, i32 -8
  %7 = ptrtoint ptr %num_ob_windows to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ob_windows, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12149.not = icmp eq i32 %8, 0
  br i1 %cmp12149.not, label %dw_pcie_msi_init.exit.for.end16_crit_edge, label %dw_pcie_msi_init.exit.for.body13_crit_edge

dw_pcie_msi_init.exit.for.body13_crit_edge:       ; preds = %dw_pcie_msi_init.exit
  br label %for.body13

dw_pcie_msi_init.exit.for.end16_crit_edge:        ; preds = %dw_pcie_msi_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %dw_pcie_msi_init.exit.for.body13_crit_edge
  %i.0150 = phi i32 [ %inc15, %for.body13.for.body13_crit_edge ], [ 0, %dw_pcie_msi_init.exit.for.body13_crit_edge ]
  tail call void @dw_pcie_disable_atu(ptr noundef %add.ptr, i32 noundef %i.0150, i32 noundef 2) #8
  %inc15 = add nuw i32 %i.0150, 1
  %9 = ptrtoint ptr %num_ob_windows to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_ob_windows, align 8
  %cmp12 = icmp ult i32 %inc15, %10
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.for.end16_crit_edge

for.body13.for.end16_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.end16:                                        ; preds = %for.body13.for.end16_crit_edge, %dw_pcie_msi_init.exit.for.end16_crit_edge
  %bridge = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 17
  %11 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bridge, align 8
  %child_ops = getelementptr inbounds %struct.pci_host_bridge, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %child_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %child_ops, align 8
  %cmp17 = icmp eq ptr %14, @dw_child_pcie_ops
  br i1 %cmp17, label %if.then18, label %for.end16.if.end71_crit_edge

for.end16.if.end71_crit_edge:                     ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then18:                                        ; preds = %for.end16
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %15)
  %entry19.0151 = load ptr, ptr %windows, align 4
  %16 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bridge, align 8
  %windows26152 = getelementptr inbounds %struct.pci_host_bridge, ptr %17, i32 0, i32 7
  %cmp27.not153 = icmp eq ptr %entry19.0151, %windows26152
  br i1 %cmp27.not153, label %if.then18.for.end51_crit_edge, label %if.then18.for.body28_crit_edge

if.then18.for.body28_crit_edge:                   ; preds = %if.then18
  br label %for.body28

if.then18.for.end51_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end51

for.body28:                                       ; preds = %for.inc45.for.body28_crit_edge, %if.then18.for.body28_crit_edge
  %entry19.0155 = phi ptr [ %entry19.0, %for.inc45.for.body28_crit_edge ], [ %entry19.0151, %if.then18.for.body28_crit_edge ]
  %atu_idx.0154 = phi i32 [ %atu_idx.1, %for.inc45.for.body28_crit_edge ], [ 0, %if.then18.for.body28_crit_edge ]
  %res = getelementptr inbounds %struct.resource_entry, ptr %entry19.0155, i32 0, i32 1
  %18 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %res, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i)
  %cmp30.not = icmp eq i32 %and.i, 512
  br i1 %cmp30.not, label %if.end32, label %for.body28.for.inc45_crit_edge

for.body28.for.inc45_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45

if.end32:                                         ; preds = %for.body28
  %22 = ptrtoint ptr %num_ob_windows to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ob_windows, align 8
  %inc34 = add i32 %atu_idx.0154, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %inc34)
  %cmp35.not = icmp ugt i32 %23, %inc34
  br i1 %cmp35.not, label %if.end37, label %if.end32.for.end51_crit_edge

if.end32.for.end51_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end51

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  %conv = zext i32 %25 to i64
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry19.0155, i32 0, i32 2
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %sub = sub i32 %25, %27
  %conv41 = zext i32 %sub to i64
  %end.i = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %25
  %add.i = add i32 %sub.i, %29
  %conv44 = zext i32 %add.i to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %add.ptr, i32 noundef %inc34, i32 noundef 0, i64 noundef %conv, i64 noundef %conv41, i64 noundef %conv44) #8
  br label %for.inc45

for.inc45:                                        ; preds = %if.end37, %for.body28.for.inc45_crit_edge
  %atu_idx.1 = phi i32 [ %atu_idx.0154, %for.body28.for.inc45_crit_edge ], [ %inc34, %if.end37 ]
  %30 = ptrtoint ptr %entry19.0155 to i32
  call void @__asan_load4_noabort(i32 %30)
  %entry19.0 = load ptr, ptr %entry19.0155, align 4
  %31 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bridge, align 8
  %windows26 = getelementptr inbounds %struct.pci_host_bridge, ptr %32, i32 0, i32 7
  %cmp27.not = icmp eq ptr %entry19.0, %windows26
  br i1 %cmp27.not, label %for.inc45.for.end51_crit_edge, label %for.inc45.for.body28_crit_edge

for.inc45.for.body28_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

for.inc45.for.end51_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end51

for.end51:                                        ; preds = %for.inc45.for.end51_crit_edge, %if.end32.for.end51_crit_edge, %if.then18.for.end51_crit_edge
  %atu_idx.2 = phi i32 [ 0, %if.then18.for.end51_crit_edge ], [ %inc34, %if.end32.for.end51_crit_edge ], [ %atu_idx.1, %for.inc45.for.end51_crit_edge ]
  %io_size = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 6
  %33 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %for.end51.if.end64_crit_edge, label %if.then52

for.end51.if.end64_crit_edge:                     ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then52:                                        ; preds = %for.end51
  %35 = ptrtoint ptr %num_ob_windows to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_ob_windows, align 8
  %inc54 = add i32 %atu_idx.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %inc54)
  %cmp55 = icmp ugt i32 %36, %inc54
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %io_base = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 4
  %37 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_base, align 8
  %conv58 = zext i32 %38 to i64
  %io_bus_addr = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 5
  %39 = ptrtoint ptr %io_bus_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %io_bus_addr, align 4
  %conv59 = zext i32 %40 to i64
  %conv61 = zext i32 %34 to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %add.ptr, i32 noundef %inc54, i32 noundef 2, i64 noundef %conv58, i64 noundef %conv59, i64 noundef %conv61) #8
  br label %if.end64

if.else:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %io_cfg_atu_shared = getelementptr i8, ptr %pp, i32 282
  %41 = ptrtoint ptr %io_cfg_atu_shared to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load62 = load i8, ptr %io_cfg_atu_shared, align 2
  %bf.set = or i8 %bf.load62, 64
  store i8 %bf.set, ptr %io_cfg_atu_shared, align 2
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then57, %for.end51.if.end64_crit_edge
  %atu_idx.3 = phi i32 [ %inc54, %if.then57 ], [ %inc54, %if.else ], [ %atu_idx.2, %for.end51.if.end64_crit_edge ]
  %42 = ptrtoint ptr %num_ob_windows to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_ob_windows, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %atu_idx.3)
  %cmp66.not = icmp ugt i32 %43, %atu_idx.3
  br i1 %cmp66.not, label %if.end64.if.end71_crit_edge, label %do.end

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end:                                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.26, i32 noundef %43) #11
  br label %if.end71

if.end71:                                         ; preds = %do.end, %if.end64.if.end71_crit_edge, %for.end16.if.end71_crit_edge
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 4, i32 noundef 0) #8
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 10, i32 noundef 2, i32 noundef 1540) #8
  %call.i144 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 2060, i32 noundef 4) #8
  %or73 = or i32 %call.i144, 131072
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2060, i32 noundef 4, i32 noundef %or73) #8
  %call.i.i145 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 2236, i32 noundef 4) #8
  %and.i146 = and i32 %call.i.i145, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2236, i32 noundef 4, i32 noundef %and.i146) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_wait_for_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_pcie_host_deinit(ptr nocapture noundef readonly %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 17
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  %bus = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %3) #8
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 8
  %bus2 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus2, align 32
  tail call void @pci_remove_root_bus(ptr noundef %7) #8
  %8 = ptrtoint ptr %pp to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %pp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %msi_irq.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 9
  %9 = ptrtoint ptr %msi_irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msi_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_set_chained_handler_and_data(i32 noundef %10, ptr noundef null, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %msi_domain.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 11
  %11 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msi_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %12) #8
  %irq_domain.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 10
  %13 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_domain.i, align 8
  tail call void @irq_domain_remove(ptr noundef %14) #8
  %msi_data.i = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 13
  %15 = ptrtoint ptr %msi_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msi_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.i = icmp eq i32 %16, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %pp, i32 -32
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %16, i32 noundef 2, i32 noundef 2, i32 noundef 32) #8
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dw_pcie_own_conf_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %1 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sysdata, align 4
  %dbi_base = getelementptr i8, ptr %2, i32 -28
  %3 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbi_base, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 %where
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_disable_atu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_prog_outbound_atu(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcie_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %lock = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 18
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %msi_irq_in_use = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 19
  %num_vectors = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i63 = add i32 %nr_irqs, -1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i63, i1 false) #8, !range !92
  %add.i = sub nuw nsw i32 32, %4
  %cond25 = select i1 %cmp.i, i32 %add.i, i32 0
  %call26 = tail call i32 @bitmap_find_free_region(ptr noundef %msi_irq_in_use, i32 noundef %3, i32 noundef %cond25) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp36 = icmp slt i32 %call26, 0
  br i1 %cmp36, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp3864.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp3864.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %msi_irq_chip = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add40 = add i32 %i.065, %virq
  %add41 = add i32 %i.065, %call26
  %5 = ptrtoint ptr %msi_irq_chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msi_irq_chip, align 8
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add40, i32 noundef %add41, ptr noundef %6, ptr noundef %1, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #8
  %inc = add nuw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_pcie_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #8
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %lock = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 18
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i46 = add i32 %nr_irqs, -1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i46, i1 false) #8, !range !92
  %add.i = sub nuw nsw i32 32, %4
  %cond26 = select i1 %cmp.i, i32 %add.i, i32 0
  %msi_irq_in_use = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 19
  tail call void @bitmap_release_region(ptr noundef %msi_irq_in_use, i32 noundef %3, i32 noundef %cond26) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_msi_ack_irq(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_chip_ack_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_msi_mask_irq(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_mask_irq(ptr noundef %d) #8
  tail call void @irq_chip_mask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_msi_unmask_irq(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_unmask_irq(ptr noundef %d) #8
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_pci_bottom_ack(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div4 = lshr i32 %3, 5
  %mul = mul nuw nsw i32 %div4, 12
  %rem = and i32 %3, 31
  %add = add nuw nsw i32 %mul, 2096
  %shl = shl nuw i32 1, %rem
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 4, i32 noundef %shl) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_pci_bottom_mask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %lock = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div23 = lshr i32 %3, 5
  %mul = mul nuw nsw i32 %div23, 12
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %arrayidx = getelementptr %struct.pcie_port, ptr %1, i32 0, i32 16, i32 %div23
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %or = or i32 %shl, %5
  store i32 %or, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %mul, 2092
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 4, i32 noundef %or) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_pci_bottom_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %lock = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div23 = lshr i32 %3, 5
  %mul = mul nuw nsw i32 %div23, 12
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %arrayidx = getelementptr %struct.pcie_port, ptr %1, i32 0, i32 16, i32 %div23
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %mul, 2092
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 4, i32 noundef %and) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_pci_msi_set_affinity(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_pci_setup_msi_msg(ptr nocapture noundef readonly %d, ptr nocapture noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %msi_data = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %msi_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msi_data, align 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %msg, align 4
  %5 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq, align 4
  %9 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_pci_setup_msi_msg.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_pci_setup_msi_msg, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_pci_setup_msi_msg.__UNIQUE_ID_ddebug236, ptr noundef %12, ptr noundef nonnull @.str.32, i32 noundef %14, i32 noundef %16, i32 noundef %18) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dw_pcie_other_conf_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call = tail call i32 @dw_pcie_link_up(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv19 = zext i8 %3 to i32
  %shl = shl nuw i32 %conv19, 24
  %4 = shl i32 %devfn, 16
  %shl48 = and i32 %4, 16252928
  %or = or i32 %shl, %shl48
  %shl75 = and i32 %4, 458752
  %or77 = or i32 %or, %shl75
  %parent = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  %type.0 = select i1 %tobool.not.i, i32 4, i32 5
  %cfg0_base = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %cfg0_base to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cfg0_base, align 8
  %conv81 = zext i32 %or77 to i64
  %cfg0_size = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %cfg0_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg0_size, align 4
  %conv82 = zext i32 %12 to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %type.0, i64 noundef %10, i64 noundef %conv81, i64 noundef %conv82) #8
  %va_cfg0_base = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %va_cfg0_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %va_cfg0_base, align 8
  %add.ptr83 = getelementptr i8, ptr %14, i32 %where
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr83, %do.body4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcie_rd_other_conf(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %io_cfg_atu_shared = getelementptr i8, ptr %1, i32 282
  %2 = ptrtoint ptr %io_cfg_atu_shared to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %io_cfg_atu_shared, align 2
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %io_base = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base, align 8
  %conv = zext i32 %5 to i64
  %io_bus_addr = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %io_bus_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_bus_addr, align 4
  %conv1 = zext i32 %7 to i64
  %io_size = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_size, align 8
  %conv2 = zext i32 %9 to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2, i64 noundef %conv, i64 noundef %conv1, i64 noundef %conv2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcie_wr_other_conf(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call = tail call i32 @pci_generic_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %io_cfg_atu_shared = getelementptr i8, ptr %1, i32 282
  %2 = ptrtoint ptr %io_cfg_atu_shared to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %io_cfg_atu_shared, align 2
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %io_base = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base, align 8
  %conv = zext i32 %5 to i64
  %io_bus_addr = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %io_bus_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_bus_addr, align 4
  %conv1 = zext i32 %7 to i64
  %io_size = getelementptr inbounds %struct.pcie_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_size, align 8
  %conv2 = zext i32 %9 to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2, i64 noundef %conv, i64 noundef %conv1, i64 noundef %conv2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 240, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dw_pcie_allocate_domains._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dw_pcie_allocate_domains._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 250, i32 3}
!10 = !{ptr @dw_pcie_allocate_domains._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dw_pcie_allocate_domains._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @dw_pcie_host_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 299, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 301, i32 63}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 310, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dw_pcie_host_init._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @dw_pcie_host_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 315, i32 81}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 350, i32 36}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 351, i32 36}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 356, i32 4}
!30 = !{ptr @dw_pcie_host_init._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dw_pcie_host_init._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 366, i32 58}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 387, i32 5}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dw_pcie_host_init._entry.19, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @dw_pcie_host_init._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 394, i32 5}
!41 = !{ptr @dw_pcie_host_init._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @dw_pcie_host_init._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_dw_pcie_host_init, !44, !"__ksymtab_dw_pcie_host_init", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 425, i32 1}
!45 = !{ptr @__ksymtab_dw_pcie_host_deinit, !46, !"__ksymtab_dw_pcie_host_deinit", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 434, i32 1}
!47 = !{ptr @__ksymtab_dw_pcie_own_conf_map_bus, !48, !"__ksymtab_dw_pcie_own_conf_map_bus", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 517, i32 1}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 616, i32 4}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dw_pcie_setup_rc._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @dw_pcie_setup_rc._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @__ksymtab_dw_pcie_setup_rc, !55, !"__ksymtab_dw_pcie_setup_rc", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 631, i32 1}
!56 = !{ptr @dw_pcie_msi_domain_ops, !57, !"dw_pcie_msi_domain_ops", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 227, i32 36}
!58 = !{ptr @dw_pcie_msi_domain_info, !59, !"dw_pcie_msi_domain_info", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 49, i32 31}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 43, i32 10}
!62 = !{ptr @dw_pcie_msi_irq_chip, !63, !"dw_pcie_msi_irq_chip", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 42, i32 24}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 176, i32 10}
!66 = !{ptr @dw_pci_msi_bottom_irq_chip, !67, !"dw_pci_msi_bottom_irq_chip", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 175, i32 24}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 114, i32 2}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @dw_pci_setup_msi_msg.__UNIQUE_ID_ddebug236, !69, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @dw_child_pcie_ops, !78, !"dw_child_pcie_ops", i1 false, i1 false}
!78 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 501, i32 23}
!79 = !{ptr @dw_pcie_ops, !80, !"dw_pcie_ops", i1 false, i1 false}
!80 = !{!"../drivers/pci/controller/dwc/pcie-designware-host.c", i32 519, i32 23}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i32 0, i32 33}
!93 = !{i64 2148360255, i64 2148360260, i64 2148360273, i64 2148360317, i64 2148360351, i64 2148360372}
