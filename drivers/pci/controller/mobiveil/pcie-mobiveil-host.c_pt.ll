; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c_pt.bc'
source_filename = "../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mobiveil_pcie = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, %struct.mobiveil_root_port }
%struct.mobiveil_root_port = type { ptr, ptr, ptr, i32, %struct.raw_spinlock, ptr, %struct.mobiveil_msi, ptr }
%struct.mobiveil_msi = type { %struct.mutex, ptr, ptr, i32, i32, [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@mobiveil_pcie_host_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 559, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Parsing DT failed, ret: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mobiveil_pcie_host_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/pci/controller/mobiveil/pcie-mobiveil-host.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mobiveil_pcie_host_probe._entry_ptr = internal global ptr @mobiveil_pcie_host_probe._entry, section ".printk_index", align 4
@mobiveil_pcie_host_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 572, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to initialize host\0A\00", [37 x i8] zeroinitializer }, align 32
@mobiveil_pcie_host_probe._entry_ptr.7 = internal global ptr @mobiveil_pcie_host_probe._entry.5, section ".printk_index", align 4
@mobiveil_pcie_host_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 578, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Interrupt init failed\0A\00", [41 x i8] zeroinitializer }, align 32
@mobiveil_pcie_host_probe._entry_ptr.10 = internal global ptr @mobiveil_pcie_host_probe._entry.8, section ".printk_index", align 4
@mobiveil_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @mobiveil_pcie_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@mobiveil_pcie_host_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 588, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"link bring-up failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mobiveil_pcie_host_probe._entry_ptr.14 = internal global ptr @mobiveil_pcie_host_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"config_axi_slave\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csr_axi_slave\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apio-wins\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ppio-wins\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apb_csr\00", [24 x i8] zeroinitializer }, align 32
@mobiveil_pcie_integrated_interrupt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 516, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed creating IRQ Domain\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mobiveil_pcie_integrated_interrupt_init\00", [56 x i8] zeroinitializer }, align 32
@mobiveil_pcie_integrated_interrupt_init._entry_ptr = internal global ptr @mobiveil_pcie_integrated_interrupt_init._entry, section ".printk_index", align 4
@intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mobiveil_pcie_intx_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mobiveil_pcie_init_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 482, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mobiveil_pcie_init_irq_domain\00", [34 x i8] zeroinitializer }, align 32
@mobiveil_pcie_init_irq_domain._entry_ptr = internal global ptr @mobiveil_pcie_init_irq_domain._entry, section ".printk_index", align 4
@mobiveil_pcie_init_irq_domain.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rp->intx_mask_lock\00", [44 x i8] zeroinitializer }, align 32
@intx_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.25, ptr null, ptr null, ptr @mobiveil_unmask_intx_irq, ptr @mobiveil_mask_intx_irq, ptr null, ptr @mobiveil_mask_intx_irq, ptr null, ptr @mobiveil_unmask_intx_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mobiveil_pcie:intx\00", [45 x i8] zeroinitializer }, align 32
@mobiveil_allocate_msi_domains.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&msi->lock\00", [21 x i8] zeroinitializer }, align 32
@msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mobiveil_irq_msi_domain_alloc, ptr @mobiveil_irq_msi_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mobiveil_allocate_msi_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 455, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mobiveil_allocate_msi_domains\00", [34 x i8] zeroinitializer }, align 32
@mobiveil_allocate_msi_domains._entry_ptr = internal global ptr @mobiveil_allocate_msi_domains._entry, section ".printk_index", align 4
@mobiveil_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 11, ptr null, ptr @mobiveil_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mobiveil_allocate_msi_domains._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@mobiveil_allocate_msi_domains._entry_ptr.31 = internal global ptr @mobiveil_allocate_msi_domains._entry.29, section ".printk_index", align 4
@mobiveil_msi_bottom_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mobiveil_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mobiveil_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mobiveil MSI\00", [19 x i8] zeroinitializer }, align 32
@mobiveil_compose_msi_msg.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcie_mobiveil_host\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mobiveil_compose_msi_msg\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"msi#%d address_hi %#x address_lo %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@mobiveil_irq_msi_domain_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 434, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"trying to free unused MSI#%lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mobiveil_irq_msi_domain_free\00", [35 x i8] zeroinitializer }, align 32
@mobiveil_irq_msi_domain_free._entry_ptr = internal global ptr @mobiveil_irq_msi_domain_free._entry, section ".printk_index", align 4
@mobiveil_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.38, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mobiveil PCIe MSI\00", [46 x i8] zeroinitializer }, align 32
@mobiveil_pcie_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mobiveil_pcie_isr = private unnamed_addr constant [18 x i8] c"mobiveil_pcie_isr\00", align 1
@mobiveil_pcie_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.mobiveil_pcie_isr, ptr @.str.2, i32 122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unexpected IRQ, INT%d\0A\00", [41 x i8] zeroinitializer }, align 32
@mobiveil_pcie_isr._entry_ptr = internal global ptr @mobiveil_pcie_isr._entry, section ".printk_index", align 4
@mobiveil_pcie_isr.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @__func__.mobiveil_pcie_isr, ptr @.str.2, ptr @.str.41, i8 0, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MSI registers, data: %08x, addr: %08x:%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 559, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 572, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 578, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"mobiveil_pcie_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 79, i32 23 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 588, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 178, i32 9 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 186, i32 9 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 193, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 196, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 501, i32 59 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 516, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"intx_domain_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 355, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 482, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 486, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"intx_irq_chip\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 336, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 337, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 451, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"msi_domain_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 440, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 455, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [25 x i8] c"mobiveil_msi_domain_info\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 365, i32 31 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 463, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [29 x i8] c"mobiveil_msi_bottom_irq_chip\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 390, i32 24 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 391, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 380, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 433, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [22 x i8] c"mobiveil_msi_irq_chip\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 359, i32 24 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 360, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 121, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [56 x i8] c"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 154, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @mobiveil_allocate_msi_domains._entry, ptr @mobiveil_allocate_msi_domains._entry.29, ptr @mobiveil_allocate_msi_domains._entry_ptr, ptr @mobiveil_allocate_msi_domains._entry_ptr.31, ptr @mobiveil_irq_msi_domain_free._entry, ptr @mobiveil_irq_msi_domain_free._entry_ptr, ptr @mobiveil_pcie_host_probe._entry, ptr @mobiveil_pcie_host_probe._entry.11, ptr @mobiveil_pcie_host_probe._entry.5, ptr @mobiveil_pcie_host_probe._entry.8, ptr @mobiveil_pcie_host_probe._entry_ptr, ptr @mobiveil_pcie_host_probe._entry_ptr.10, ptr @mobiveil_pcie_host_probe._entry_ptr.14, ptr @mobiveil_pcie_host_probe._entry_ptr.7, ptr @mobiveil_pcie_init_irq_domain._entry, ptr @mobiveil_pcie_init_irq_domain._entry_ptr, ptr @mobiveil_pcie_integrated_interrupt_init._entry, ptr @mobiveil_pcie_integrated_interrupt_init._entry_ptr, ptr @mobiveil_pcie_isr._entry, ptr @mobiveil_pcie_isr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @mobiveil_pcie_ops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @intx_domain_ops, ptr @.str.22, ptr @.str.23, ptr @mobiveil_pcie_init_irq_domain.__key, ptr @.str.24, ptr @intx_irq_chip, ptr @.str.25, ptr @mobiveil_allocate_msi_domains.__key, ptr @.str.26, ptr @msi_domain_ops, ptr @.str.27, ptr @.str.28, ptr @mobiveil_msi_domain_info, ptr @.str.30, ptr @mobiveil_msi_bottom_irq_chip, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @mobiveil_msi_irq_chip, ptr @.str.38, ptr @mobiveil_pcie_isr._rs, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_host_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_host_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_host_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_host_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_integrated_interrupt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_init_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_init_irq_domain.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_allocate_msi_domains.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_allocate_msi_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_allocate_msi_domains._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_msi_bottom_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_irq_msi_domain_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_pcie_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mobiveil_host_init(ptr noundef %pcie, i1 noundef zeroext %reinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge2 = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 7
  %0 = ptrtoint ptr %bridge2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge2, align 4
  %ib_wins_configured = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 7
  %2 = ptrtoint ptr %ib_wins_configured to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ib_wins_configured, align 4
  %ob_wins_configured = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 6
  %3 = ptrtoint ptr %ob_wins_configured to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ob_wins_configured, align 4
  br i1 %reinit, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @mobiveil_csr_read(ptr noundef %pcie, i32 noundef 24, i32 noundef 4) #6
  %and = and i32 %call.i, -16777216
  %or = or i32 %and, 16711936
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %or, i32 noundef 24, i32 noundef 4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i86 = tail call i32 @mobiveil_csr_read(ptr noundef %pcie, i32 noundef 4, i32 noundef 4) #6
  %or4 = or i32 %call.i86, 7
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %or4, i32 noundef 4, i32 noundef 4) #6
  %call.i87 = tail call i32 @mobiveil_csr_read(ptr noundef %pcie, i32 noundef 2056, i32 noundef 4) #6
  %or6 = or i32 %call.i87, 3
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %or6, i32 noundef 2056, i32 noundef 4) #6
  %call.i88 = tail call i32 @mobiveil_csr_read(ptr noundef %pcie, i32 noundef 2112, i32 noundef 4) #6
  %or8 = or i32 %call.i88, 15
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %or8, i32 noundef 2112, i32 noundef 4) #6
  %call.i89 = tail call i32 @mobiveil_csr_read(ptr noundef %pcie, i32 noundef 2240, i32 noundef 4) #6
  %or10 = or i32 %call.i89, 1
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %or10, i32 noundef 2240, i32 noundef 4) #6
  %ob_io_res = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %ob_io_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ob_io_res, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv = zext i32 %7 to i64
  %end.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %conv13 = zext i32 %add.i to i64
  tail call void @program_ob_windows(ptr noundef %pcie, i32 noundef 0, i64 noundef %conv, i64 noundef 0, i32 noundef 0, i64 noundef %conv13) #6
  tail call void @program_ib_windows(ptr noundef %pcie, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 2, i64 noundef 274877906944) #6
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %10)
  %win.097 = load ptr, ptr %windows, align 4
  %cmp.not98 = icmp eq ptr %win.097, %windows
  br i1 %cmp.not98, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %win.099 = phi ptr [ %win.0, %for.inc.for.body_crit_edge ], [ %win.097, %if.end.for.body_crit_edge ]
  %res = getelementptr inbounds %struct.resource_entry, ptr %win.099, i32 0, i32 1
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 7936
  %15 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %for.body.for.inc_crit_edge [
    i32 512, label %for.body.if.end27_crit_edge
    i32 256, label %if.end27.fold.split
  ]

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end27.fold.split:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27:                                         ; preds = %if.end27.fold.split, %for.body.if.end27_crit_edge
  %type.0 = phi i32 [ 2, %for.body.if.end27_crit_edge ], [ 1, %if.end27.fold.split ]
  %16 = ptrtoint ptr %ob_wins_configured to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ob_wins_configured, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 4
  %conv31 = zext i32 %19 to i64
  %offset = getelementptr inbounds %struct.resource_entry, ptr %win.099, i32 0, i32 2
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %sub = sub i32 %19, %21
  %conv34 = zext i32 %sub to i64
  %end.i92 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %22 = ptrtoint ptr %end.i92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i92, align 4
  %sub.i93 = sub i32 1, %19
  %add.i94 = add i32 %sub.i93, %23
  %conv37 = zext i32 %add.i94 to i64
  tail call void @program_ob_windows(ptr noundef %pcie, i32 noundef %17, i64 noundef %conv31, i64 noundef %conv34, i32 noundef %type.0, i64 noundef %conv37) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %win.099 to i32
  call void @__asan_load4_noabort(i32 %24)
  %win.0 = load ptr, ptr %win.099, align 4
  %cmp.not = icmp eq ptr %win.0, %windows
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i95 = tail call i32 @mobiveil_csr_read(ptr noundef %pcie, i32 noundef 1140, i32 noundef 4) #6
  %and44 = and i32 %call.i95, 255
  %or45 = or i32 %and44, 100925440
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %or45, i32 noundef 1140, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @program_ob_windows(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @program_ib_windows(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mobiveil_pcie_host_probe(ptr noundef %pcie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge2 = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 7
  %0 = ptrtoint ptr %bridge2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge2, align 4
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %rp4.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9
  %call.i = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.15) #6
  %call5.i = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev3, ptr noundef %call.i) #6
  %6 = ptrtoint ptr %rp4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i, ptr %rp4.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %ob_io_res.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %ob_io_res.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %ob_io_res.i, align 4
  %call10.i = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.16) #6
  %call11.i = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev3, ptr noundef %call10.i) #6
  %csr_axi_slave_base.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 1
  %8 = ptrtoint ptr %csr_axi_slave_base.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11.i, ptr %csr_axi_slave_base.i, align 4
  %cmp.i51.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51.i, label %if.end.i.do.end_crit_edge, label %if.end17.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end17.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %call10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call10.i, align 4
  %pcie_reg_base.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 3
  %11 = ptrtoint ptr %pcie_reg_base.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pcie_reg_base.i, align 4
  %apio_wins.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef %apio_wins.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end17.i.if.end21.i_crit_edge, label %if.then19.i

if.end17.i.if.end21.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %apio_wins.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %apio_wins.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end17.i.if.end21.i_crit_edge
  %ppio_wins.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 5
  %call.i.i52.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.18, ptr noundef %ppio_wins.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i52.i)
  %tobool23.not.i = icmp sgt i32 %call.i.i52.i, -1
  br i1 %tobool23.not.i, label %if.end21.i.if.end_crit_edge, label %if.then24.i

if.end21.i.if.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %ppio_wins.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %ppio_wins.i, align 4
  br label %if.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i.in = phi ptr [ %call5.i, %entry.do.end_crit_edge ], [ %call11.i, %if.end.i.do.end_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str, i32 noundef %retval.0.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then24.i, %if.end21.i.if.end_crit_edge
  %call.i.i = tail call i32 @mobiveil_csr_read(ptr noundef %pcie, i32 noundef 14, i32 noundef 1) #6
  %14 = and i32 %call.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  br i1 %cmp.i, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @mobiveil_host_init(ptr noundef %pcie, i1 noundef zeroext false)
  %ops.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i52 = icmp eq ptr %18, null
  br i1 %tobool.not.i52, label %if.end.i56, label %if.then.i54

if.then.i54:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call.i53 = tail call i32 %18(ptr noundef %pcie) #6
  br label %mobiveil_pcie_interrupt_init.exit

if.end.i56:                                       ; preds = %if.end6
  %19 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcie, align 4
  %dev2.i.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %call.i.i55 = tail call ptr @platform_get_resource_byname(ptr noundef %20, i32 noundef 512, ptr noundef nonnull @.str.19) #6
  %call4.i.i = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev2.i.i, ptr noundef %call.i.i55) #6
  %apb_csr_base.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 2
  %21 = ptrtoint ptr %apb_csr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call4.i.i, ptr %apb_csr_base.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call4.i.i to i32
  br label %mobiveil_pcie_interrupt_init.exit

if.end.i.i:                                       ; preds = %if.end.i56
  %23 = ptrtoint ptr %pcie_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcie_reg_base.i, align 4
  %num_of_vectors.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 6, i32 4
  %25 = ptrtoint ptr %num_of_vectors.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %num_of_vectors.i.i.i, align 4
  %msi_pages_phys.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 6, i32 3
  %26 = ptrtoint ptr %msi_pages_phys.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %msi_pages_phys.i.i.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %add.ptr.i.i.i = getelementptr i8, ptr %call4.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %27) #6, !srcloc !105
  %28 = ptrtoint ptr %apb_csr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %apb_csr_base.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 0) #6, !srcloc !105
  %30 = ptrtoint ptr %apb_csr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %apb_csr_base.i.i, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i.i, i32 1048576) #6, !srcloc !105
  %32 = ptrtoint ptr %apb_csr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %apb_csr_base.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i.i, i32 16777216) #6, !srcloc !105
  %call9.i.i = tail call i32 @platform_get_irq(ptr noundef %20, i32 noundef 0) #6
  %irq.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 3
  %34 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call9.i.i, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp.i.i57 = icmp slt i32 %call9.i.i, 0
  br i1 %cmp.i.i57, label %if.end.i.i.do.end19_crit_edge, label %if.end13.i.i

if.end.i.i.do.end19_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

if.end13.i.i:                                     ; preds = %if.end.i.i
  %35 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcie, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 27
  %37 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %38, null
  %fwnode.i.i.i.i.i = getelementptr inbounds %struct.device_node, ptr %38, i32 0, i32 3
  %spec.select.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, ptr null, ptr %fwnode.i.i.i.i.i
  %call1.i.i.i.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef %pcie) #6
  %intx_domain.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 5
  %39 = ptrtoint ptr %intx_domain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call1.i.i.i.i, ptr %intx_domain.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %do.body4.i.i.i

do.end.i.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i.i.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.22) #9
  br label %do.end.i.i

do.body4.i.i.i:                                   ; preds = %if.end13.i.i
  %intx_mask_lock.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %intx_mask_lock.i.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @mobiveil_pcie_init_irq_domain.__key, i16 noundef signext 2) #6
  %40 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcie, align 4
  %dev1.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %of_node.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3, i32 27
  %42 = ptrtoint ptr %of_node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node.i.i.i.i, align 8
  %msi2.i.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 6
  tail call void @__mutex_init(ptr noundef %msi2.i.i.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @mobiveil_allocate_msi_domains.__key) #6
  %44 = ptrtoint ptr %num_of_vectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_of_vectors.i.i.i, align 4
  %call1.i.i.i.i.i = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef %45, i32 noundef %45, i32 noundef 0, ptr noundef nonnull @msi_domain_ops, ptr noundef %pcie) #6
  %dev_domain.i.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 6, i32 2
  %46 = ptrtoint ptr %dev_domain.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call1.i.i.i.i.i, ptr %dev_domain.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end7.i.i.i.i, label %if.end.i.i.i.i

do.end7.i.i.i.i:                                  ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i.i, ptr noundef nonnull @.str.27) #9
  br label %do.end.i.i

if.end.i.i.i.i:                                   ; preds = %do.body4.i.i.i
  %tobool.not.i.i16.i.i.i = icmp eq ptr %43, null
  %fwnode.i.i17.i.i.i = getelementptr inbounds %struct.device_node, ptr %43, i32 0, i32 3
  %spec.select.i.i18.i.i.i = select i1 %tobool.not.i.i16.i.i.i, ptr null, ptr %fwnode.i.i17.i.i.i
  %call9.i.i.i.i = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i18.i.i.i, ptr noundef nonnull @mobiveil_msi_domain_info, ptr noundef nonnull %call1.i.i.i.i.i) #6
  %msi_domain.i.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 9, i32 6, i32 1
  %47 = ptrtoint ptr %msi_domain.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i.i.i.i, ptr %msi_domain.i.i.i.i, align 4
  %tobool11.not.i.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool11.not.i.i.i.i, label %do.end15.i.i.i.i, label %mobiveil_pcie_interrupt_init.exit.thread64

do.end15.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i.i, ptr noundef nonnull @.str.30) #9
  %48 = ptrtoint ptr %dev_domain.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_domain.i.i.i.i, align 4
  tail call void @irq_domain_remove(ptr noundef %49) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end15.i.i.i.i, %do.end7.i.i.i.i, %do.end.i.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.20) #9
  br label %do.end19

mobiveil_pcie_interrupt_init.exit.thread64:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq.i.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %51, ptr noundef nonnull @mobiveil_pcie_isr, ptr noundef %pcie) #6
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef 488, i32 noundef 2828, i32 noundef 4) #6
  br label %if.end20

mobiveil_pcie_interrupt_init.exit:                ; preds = %if.then.i.i, %if.then.i54
  %retval.0.i58 = phi i32 [ %call.i53, %if.then.i54 ], [ %22, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i58)
  %tobool15.not = icmp eq i32 %retval.0.i58, 0
  br i1 %tobool15.not, label %mobiveil_pcie_interrupt_init.exit.if.end20_crit_edge, label %mobiveil_pcie_interrupt_init.exit.do.end19_crit_edge

mobiveil_pcie_interrupt_init.exit.do.end19_crit_edge: ; preds = %mobiveil_pcie_interrupt_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

mobiveil_pcie_interrupt_init.exit.if.end20_crit_edge: ; preds = %mobiveil_pcie_interrupt_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end19:                                         ; preds = %mobiveil_pcie_interrupt_init.exit.do.end19_crit_edge, %do.end.i.i, %if.end.i.i.do.end19_crit_edge
  %retval.0.i5863 = phi i32 [ %retval.0.i58, %mobiveil_pcie_interrupt_init.exit.do.end19_crit_edge ], [ %call9.i.i, %if.end.i.i.do.end19_crit_edge ], [ -12, %do.end.i.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end20:                                         ; preds = %mobiveil_pcie_interrupt_init.exit.if.end20_crit_edge, %mobiveil_pcie_interrupt_init.exit.thread64
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %pcie, ptr %sysdata, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @mobiveil_pcie_ops, ptr %ops, align 4
  %call21 = tail call i32 @mobiveil_bringup_link(ptr noundef %pcie) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 @pci_host_probe(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end26, %do.end19, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %retval.0.i5863, %do.end19 ], [ %call21, %do.end26 ], [ %call28, %if.end27 ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mobiveil_bringup_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mobiveil_csr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mobiveil_csr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mobiveil_pcie_isr(ptr noundef %desc) #0 align 64 {
entry:
  %shifted_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shifted_status) #6
  %6 = ptrtoint ptr %shifted_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %shifted_status, align 4, !annotation !106
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %10(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %12(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %14(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %call.i = tail call i32 @mobiveil_csr_read(ptr noundef %3, i32 noundef 2844, i32 noundef 4) #6
  %call.i91 = tail call i32 @mobiveil_csr_read(ptr noundef %3, i32 noundef 2828, i32 noundef 4) #6
  %and = and i32 %call.i91, %call.i
  %and7 = and i32 %and, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %chained_irq_enter.exit.if.end31_crit_edge, label %if.then

chained_irq_enter.exit.if.end31_crit_edge:        ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then:                                          ; preds = %chained_irq_enter.exit
  %call.i92 = tail call i32 @mobiveil_csr_read(ptr noundef %3, i32 noundef 2844, i32 noundef 4) #6
  %and9 = lshr i32 %call.i92, 5
  %shr = and i32 %and9, 15
  %15 = ptrtoint ptr %shifted_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %shifted_status, align 4
  %intx_domain = getelementptr inbounds %struct.mobiveil_pcie, ptr %3, i32 0, i32 9, i32 5
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %if.then
  %call10 = call i32 @_find_next_bit_be(ptr noundef nonnull %shifted_status, i32 noundef 4, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call10)
  %cmp99 = icmp ult i32 %call10, 4
  br i1 %cmp99, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %do.body.for.body_crit_edge
  %bit.0100 = phi i32 [ %call24, %if.end21.for.body_crit_edge ], [ %call10, %do.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %intx_domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intx_domain, align 4
  %add = add nuw nsw i32 %bit.0100, 1
  %call11 = call i32 @generic_handle_domain_irq(ptr noundef %17, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.body.if.end21_crit_edge, label %do.body14

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body14:                                        ; preds = %for.body
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @mobiveil_pcie_isr._rs, ptr noundef nonnull @__func__.mobiveil_pcie_isr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.if.end21_crit_edge, label %do.end

do.body14.if.end21_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end:                                           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.40, i32 noundef %bit.0100) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end, %do.body14.if.end21_crit_edge, %for.body.if.end21_crit_edge
  %shl = shl nuw nsw i32 32, %bit.0100
  call void @mobiveil_csr_write(ptr noundef %3, i32 noundef %shl, i32 noundef 2844, i32 noundef 4) #6
  %call24 = call i32 @_find_next_bit_be(ptr noundef nonnull %shifted_status, i32 noundef 4, i32 noundef %add) #6
  %cmp = icmp ult i32 %call24, 4
  br i1 %cmp, label %if.end21.for.body_crit_edge, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %do.body.for.end_crit_edge
  %call.i93 = call i32 @mobiveil_csr_read(ptr noundef %3, i32 noundef 2844, i32 noundef 4) #6
  %and26 = lshr i32 %call.i93, 5
  %shr27 = and i32 %and26, 15
  %18 = ptrtoint ptr %shifted_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr27, ptr %shifted_status, align 4
  %cmp29.not = icmp eq i32 %shr27, 0
  br i1 %cmp29.not, label %for.end.if.end31_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end31:                                         ; preds = %for.end.if.end31_crit_edge, %chained_irq_enter.exit.if.end31_crit_edge
  %apb_csr_base = getelementptr inbounds %struct.mobiveil_pcie, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %apb_csr_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %apb_csr_base, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 24
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !107
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool34.not102 = icmp eq i32 %22, 0
  br i1 %tobool34.not102, label %if.end31.while.end_crit_edge, label %while.body.lr.ph

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end31
  %dev_domain = getelementptr inbounds %struct.mobiveil_pcie, ptr %3, i32 0, i32 9, i32 6, i32 2
  br label %while.body

while.body:                                       ; preds = %do.end60.while.body_crit_edge, %while.body.lr.ph
  %23 = ptrtoint ptr %apb_csr_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %apb_csr_base, align 4
  %add.ptr37 = getelementptr i8, ptr %24, i32 32
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #6, !srcloc !107
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %apb_csr_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %apb_csr_base, align 4
  %add.ptr42 = getelementptr i8, ptr %28, i32 36
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #6, !srcloc !107
  %30 = ptrtoint ptr %apb_csr_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %apb_csr_base, align 4
  %add.ptr47 = getelementptr i8, ptr %31, i32 40
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #6, !srcloc !107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mobiveil_pcie_isr.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mobiveil_pcie_isr, %do.end60)) #6
          to label %if.then57 [label %do.end60], !srcloc !108

if.then57:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = call i32 @llvm.bswap.i32(i32 %29)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mobiveil_pcie_isr.__UNIQUE_ID_ddebug236, ptr noundef %dev2, ptr noundef nonnull @.str.41, i32 noundef %26, i32 noundef %33, i32 noundef %34) #6
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %while.body
  %35 = ptrtoint ptr %dev_domain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_domain, align 4
  %call61 = call i32 @generic_handle_domain_irq(ptr noundef %36, i32 noundef %26) #6
  %37 = ptrtoint ptr %apb_csr_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %apb_csr_base, align 4
  %add.ptr64 = getelementptr i8, ptr %38, i32 24
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #6, !srcloc !107
  %40 = and i32 %39, 16777216
  %tobool34.not = icmp eq i32 %40, 0
  br i1 %tobool34.not, label %do.end60.while.end_crit_edge, label %do.end60.while.body_crit_edge

do.end60.while.body_crit_edge:                    ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end60.while.end_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end60.while.end_crit_edge, %if.end31.while.end_crit_edge
  call void @mobiveil_csr_write(ptr noundef %3, i32 noundef %and, i32 noundef 2844, i32 noundef 4) #6
  %41 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i95 = icmp eq ptr %42, null
  br i1 %tobool.not.i95, label %if.else.i96, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i96:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i96, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %44, %if.else.i96 ], [ %42, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shifted_status) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mobiveil_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @intx_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mobiveil_unmask_intx_irq(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %sub = add i32 %3, 4
  %shl = shl nuw i32 1, %sub
  %intx_mask_lock = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 9, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intx_mask_lock) #6
  %call.i = tail call i32 @mobiveil_csr_read(ptr noundef %1, i32 noundef 2828, i32 noundef 4) #6
  %or = or i32 %call.i, %shl
  tail call void @mobiveil_csr_write(ptr noundef %1, i32 noundef %or, i32 noundef 2828, i32 noundef 4) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intx_mask_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mobiveil_mask_intx_irq(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %sub = add i32 %3, 4
  %shl = shl nuw i32 1, %sub
  %intx_mask_lock = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 9, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intx_mask_lock) #6
  %call.i = tail call i32 @mobiveil_csr_read(ptr noundef %1, i32 noundef 2828, i32 noundef 4) #6
  %neg = xor i32 %shl, -1
  %and = and i32 %call.i, %neg
  tail call void @mobiveil_csr_write(ptr noundef %1, i32 noundef %and, i32 noundef 2828, i32 noundef 4) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intx_mask_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mobiveil_irq_msi_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %msi1 = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 9, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !109

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 404, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %msi1, i32 noundef 0) #6
  %msi_irq_in_use = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 9, i32 6, i32 5
  %num_of_vectors = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 9, i32 6, i32 4
  %2 = ptrtoint ptr %num_of_vectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_of_vectors, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %msi_irq_in_use, i32 noundef %3) #6
  %4 = ptrtoint ptr %num_of_vectors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_of_vectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp21.not = icmp ult i32 %call, %5
  br i1 %cmp21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %msi1) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef %call, ptr noundef %msi_irq_in_use) #6
  tail call void @mutex_unlock(ptr noundef %msi1) #6
  %6 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %virq, i32 noundef %call, ptr noundef nonnull @mobiveil_msi_bottom_irq_chip, ptr noundef %7, ptr noundef nonnull @handle_level_irq, ptr noundef null, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  %retval.0 = phi i32 [ -28, %if.then22 ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mobiveil_irq_msi_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #6
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %msi2 = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 9, i32 6
  tail call void @mutex_lock_nested(ptr noundef %msi2, i32 noundef 0) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %msi_irq_in_use = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 9, i32 6, i32 5
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %msi_irq_in_use, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %3) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %6, -1
  %and.i16 = and i32 %5, %neg.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i16, ptr %arrayidx.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  tail call void @mutex_unlock(ptr noundef %msi2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mobiveil_msi_set_affinity(ptr nocapture noundef readnone %irq_data, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mobiveil_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %pcie_reg_base = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcie_reg_base, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, %3
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %msg, align 4
  %7 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %9 = load i32, ptr %hwirq, align 4
  %10 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mobiveil_compose_msi_msg.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mobiveil_compose_msi_msg, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !108

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwirq, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mobiveil_compose_msi_msg.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %15, i32 noundef %17, i32 noundef %19) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mobiveil_pcie_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %rp1 = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 9
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp ne ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp.not.i = icmp eq i32 %devfn, 0
  %or.cond.i = or i1 %cmp.not.i, %tobool.not.i.i
  br i1 %or.cond.i, label %mobiveil_pcie_valid_device.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mobiveil_pcie_valid_device.exit:                  ; preds = %entry
  %primary.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 13
  %4 = ptrtoint ptr %primary.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %primary.i, align 1
  %conv.i = zext i8 %5 to i32
  %bridge.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 20
  %6 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge.i, align 8
  %busnr.i = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %busnr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %busnr.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp1.i = icmp ne i32 %9, %conv.i
  %10 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.not.i = icmp eq i32 %10, 0
  %or.cond11.i = or i1 %cmp4.not.i, %cmp1.i
  br i1 %or.cond11.i, label %if.end, label %mobiveil_pcie_valid_device.exit.cleanup_crit_edge

mobiveil_pcie_valid_device.exit.cleanup_crit_edge: ; preds = %mobiveil_pcie_valid_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mobiveil_pcie_valid_device.exit
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %csr_axi_slave_base = getelementptr inbounds %struct.mobiveil_pcie, ptr %1, i32 0, i32 1
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %11 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %number, align 4
  %conv = zext i8 %12 to i32
  %shl = shl nuw i32 %conv, 24
  %13 = shl i32 %devfn, 16
  %shl5 = and i32 %13, 16252928
  %or = or i32 %shl, %shl5
  %shl7 = and i32 %13, 458752
  %or8 = or i32 %or, %shl7
  tail call void @mobiveil_csr_write(ptr noundef %1, i32 noundef %or8, i32 noundef 2984, i32 noundef 4) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.then3
  %rp1.sink = phi ptr [ %rp1, %if.end4 ], [ %csr_axi_slave_base, %if.then3 ]
  %14 = ptrtoint ptr %rp1.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rp1.sink, align 4
  %add.ptr9 = getelementptr i8, ptr %15, i32 %where
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %mobiveil_pcie_valid_device.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %mobiveil_pcie_valid_device.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %add.ptr9, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !87, !88, !89, !90, !91, !93, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 559, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mobiveil_pcie_host_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mobiveil_pcie_host_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 572, i32 3}
!10 = !{ptr @mobiveil_pcie_host_probe._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mobiveil_pcie_host_probe._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 578, i32 3}
!14 = !{ptr @mobiveil_pcie_host_probe._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mobiveil_pcie_host_probe._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 588, i32 3}
!18 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mobiveil_pcie_host_probe._entry.11, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mobiveil_pcie_host_probe._entry_ptr.14, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 178, i32 9}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 186, i32 9}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 193, i32 33}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 196, i32 33}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 501, i32 59}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 516, i32 3}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mobiveil_pcie_integrated_interrupt_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mobiveil_pcie_integrated_interrupt_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 482, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mobiveil_pcie_init_irq_domain._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mobiveil_pcie_init_irq_domain._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mobiveil_pcie_init_irq_domain.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 486, i32 2}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @intx_domain_ops, !45, !"intx_domain_ops", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 355, i32 36}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 337, i32 10}
!48 = !{ptr @intx_irq_chip, !49, !"intx_irq_chip", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 336, i32 24}
!50 = !{ptr @mobiveil_allocate_msi_domains.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 451, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 455, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mobiveil_allocate_msi_domains._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mobiveil_allocate_msi_domains._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 463, i32 3}
!60 = !{ptr @mobiveil_allocate_msi_domains._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mobiveil_allocate_msi_domains._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @msi_domain_ops, !63, !"msi_domain_ops", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 440, i32 36}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 391, i32 12}
!66 = !{ptr @mobiveil_msi_bottom_irq_chip, !67, !"mobiveil_msi_bottom_irq_chip", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 390, i32 24}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 380, i32 2}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mobiveil_compose_msi_msg.__UNIQUE_ID_ddebug237, !69, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 433, i32 3}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mobiveil_irq_msi_domain_free._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mobiveil_irq_msi_domain_free._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @mobiveil_msi_domain_info, !79, !"mobiveil_msi_domain_info", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 365, i32 31}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 360, i32 10}
!82 = !{ptr @mobiveil_msi_irq_chip, !83, !"mobiveil_msi_irq_chip", i1 false, i1 false}
!83 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 359, i32 24}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 121, i32 6}
!86 = !{ptr @mobiveil_pcie_isr._rs, !85, !"_rs", i1 false, i1 false}
!87 = !{ptr @__func__.mobiveil_pcie_isr, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mobiveil_pcie_isr._entry, !85, !"_entry", i1 false, i1 false}
!90 = !{ptr @mobiveil_pcie_isr._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 154, i32 3}
!93 = !{ptr @mobiveil_pcie_isr.__UNIQUE_ID_ddebug236, !92, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!94 = !{ptr @mobiveil_pcie_ops, !95, !"mobiveil_pcie_ops", i1 false, i1 false}
!95 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil-host.c", i32 79, i32 23}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 4212863}
!106 = !{!"auto-init"}
!107 = !{i64 4213281}
!108 = !{i64 2148732055, i64 2148732060, i64 2148732073, i64 2148732117, i64 2148732151, i64 2148732172}
!109 = !{!"branch_weights", i32 2000, i32 1}
