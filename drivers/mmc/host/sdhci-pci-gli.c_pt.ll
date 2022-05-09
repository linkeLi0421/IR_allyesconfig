; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-pci-gli.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pci-gli.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pci_fixes = type { i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pci_slot = type { ptr, ptr, i32, i8, ptr, [108 x i8], [0 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.sdhci_pci_chip = type { ptr, i32, i32, i8, i8, i8, ptr, i32, [8 x ptr] }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }

@sdhci_gl9755_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr @sdhci_gli_readw, ptr @sdhci_gli_readb, ptr null, ptr null, ptr null, ptr @sdhci_gl9755_set_clock, ptr null, ptr null, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @sdhci_gli_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_gl9755 = dso_local constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67108864, i32 128, i8 0, i8 0, ptr null, ptr @gli_probe_slot_gl9755, ptr null, ptr null, ptr null, ptr @sdhci_pci_gli_resume, ptr null, ptr null, ptr @sdhci_gl9755_ops, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_gl9750_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr @sdhci_gl9750_readl, ptr @sdhci_gli_readw, ptr @sdhci_gli_readb, ptr null, ptr null, ptr null, ptr @sdhci_gl9750_set_clock, ptr null, ptr null, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_gl9750_reset, ptr @gl9750_execute_tuning, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @sdhci_gli_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_gl9750 = dso_local constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67108864, i32 128, i8 0, i8 0, ptr null, ptr @gli_probe_slot_gl9750, ptr null, ptr null, ptr null, ptr @sdhci_pci_gli_resume, ptr null, ptr null, ptr @sdhci_gl9750_ops, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhci_gl9763e_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr @sdhci_gl9763e_cqhci_irq, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_gl9763e_reset, ptr null, ptr @sdhci_set_gl9763e_signaling, ptr null, ptr null, ptr null, ptr @sdhci_gli_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_gl9763e = dso_local constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 67108864, i32 0, i8 0, i8 0, ptr null, ptr @gli_probe_slot_gl9763e, ptr @gl9763e_add_host, ptr null, ptr @sdhci_cqhci_gli_suspend, ptr @sdhci_cqhci_gli_resume, ptr null, ptr null, ptr @sdhci_gl9763e_ops, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cd-inverted\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wp-inverted\00", [20 x i8] zeroinitializer }, align 32
@gli_pcie_enable_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: enable PCI MSI failed, error=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gli_pcie_enable_msi\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mmc/host/sdhci-pci-gli.c\00", [63 x i8] zeroinitializer }, align 32
@gli_pcie_enable_msi._entry_ptr = internal global ptr @gli_pcie_enable_msi._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sdhci_execute_tuning_9750._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 320, ptr null, ptr null }, align 1
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: Tuning timeout, falling back to fixed sampling clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__sdhci_execute_tuning_9750\00", [36 x i8] zeroinitializer }, align 32
@__sdhci_execute_tuning_9750._entry_ptr = internal global ptr @__sdhci_execute_tuning_9750._entry, section ".printk_index", align 4
@__sdhci_execute_tuning_9750._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 325, ptr null, ptr null }, align 1
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: Tuning failed, falling back to fixed sampling clock\0A\00", [37 x i8] zeroinitializer }, align 32
@__sdhci_execute_tuning_9750._entry_ptr.9 = internal global ptr @__sdhci_execute_tuning_9750._entry.7, section ".printk_index", align 4
@sdhci_gl9763e_cqhci_ops = internal constant { %struct.cqhci_host_ops, [60 x i8] } { %struct.cqhci_host_ops { ptr @sdhci_gl9763e_dumpregs, ptr null, ptr null, ptr @sdhci_gl9763e_cqe_enable, ptr @sdhci_cqe_disable, ptr null, ptr @sdhci_gl9763e_cqe_pre_enable, ptr @sdhci_gl9763e_cqe_post_disable, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 9, i64 10]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"sdhci_gl9755_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 924, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"sdhci_gl9755\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 935, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"sdhci_gl9750_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 945, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"sdhci_gl9750\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 958, i32 30 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"sdhci_gl9763e_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 968, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"sdhci_gl9763e\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 978, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 580, i32 47 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 582, i32 47 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 445, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 319, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 324, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [24 x i8] c"sdhci_gl9763e_cqhci_ops\00", align 1
@___asan_gen_.56 = private constant [36 x i8] c"../drivers/mmc/host/sdhci-pci-gli.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 785, i32 36 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__sdhci_execute_tuning_9750._entry, ptr @__sdhci_execute_tuning_9750._entry.7, ptr @__sdhci_execute_tuning_9750._entry_ptr, ptr @__sdhci_execute_tuning_9750._entry_ptr.9, ptr @gli_pcie_enable_msi._entry, ptr @gli_pcie_enable_msi._entry_ptr, ptr @sdhci_gl9755_ops, ptr @sdhci_gl9755, ptr @sdhci_gl9750_ops, ptr @sdhci_gl9750, ptr @sdhci_gl9763e_ops, ptr @sdhci_gl9763e, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @sdhci_gl9763e_cqhci_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_gl9755_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_gl9755 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_gl9750_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_gl9750 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_gl9763e_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_gl9763e to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gli_pcie_enable_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_gl9763e_cqhci_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gli_probe_slot_gl9755(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  %wt_value.i42.i = alloca i32, align 4
  %wt_value.i.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #5
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wt_value.i.i) #5
  %7 = ptrtoint ptr %wt_value.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %wt_value.i.i, align 4, !annotation !42
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 2048, ptr noundef nonnull %wt_value.i.i) #5
  %8 = ptrtoint ptr %wt_value.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wt_value.i.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.gl9755_wt_on.exit.i_crit_edge

entry.gl9755_wt_on.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9755_wt_on.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i = or i32 %9, 1
  %10 = ptrtoint ptr %wt_value.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i, ptr %wt_value.i.i, align 4
  %call30.i.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 2048, i32 noundef %or.i.i) #5
  br label %gl9755_wt_on.exit.i

gl9755_wt_on.exit.i:                              ; preds = %if.end.i.i, %entry.gl9755_wt_on.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wt_value.i.i) #5
  %call.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 68, ptr noundef nonnull %value.i) #5
  %of_node.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call.i39.i = call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef null) #5
  %tobool.i.not.i = icmp eq ptr %call.i39.i, null
  br i1 %tobool.i.not.i, label %gl9755_wt_on.exit.i.if.end.i_crit_edge, label %if.then.i

gl9755_wt_on.exit.i.if.end.i_crit_edge:           ; preds = %gl9755_wt_on.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %gl9755_wt_on.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value.i, align 4
  %or.i = or i32 %14, 1073741824
  store i32 %or.i, ptr %value.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %gl9755_wt_on.exit.i.if.end.i_crit_edge
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i40.i = call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %tobool.i41.not.i = icmp eq ptr %call.i40.i, null
  br i1 %tobool.i41.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value.i, align 4
  %or7.i = or i32 %18, -2147483648
  store i32 %or7.i, ptr %value.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i, align 4
  %and9.i = and i32 %20, -536899585
  store i32 %and9.i, ptr %value.i, align 4
  %call10.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 68, i32 noundef %and9.i) #5
  %call11.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 112, ptr noundef nonnull %value.i) #5
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value.i, align 4
  %and12.i = and i32 %22, -524289
  store i32 %and12.i, ptr %value.i, align 4
  %call13.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 112, i32 noundef %and12.i) #5
  %call14.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 72, ptr noundef nonnull %value.i) #5
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value.i, align 4
  %or28.i = or i32 %24, 520093696
  store i32 %or28.i, ptr %value.i, align 4
  %call29.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 72, i32 noundef %or28.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wt_value.i42.i) #5
  %25 = ptrtoint ptr %wt_value.i42.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %wt_value.i42.i, align 4, !annotation !42
  %call.i43.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 2048, ptr noundef nonnull %wt_value.i42.i) #5
  %26 = ptrtoint ptr %wt_value.i42.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wt_value.i42.i, align 4
  %and.i44.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44.i)
  %cmp.i.i = icmp eq i32 %and.i44.i, 0
  br i1 %cmp.i.i, label %if.end8.i.gl9755_hw_setting.exit_crit_edge, label %if.end.i46.i

if.end8.i.gl9755_hw_setting.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9755_hw_setting.exit

if.end.i46.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i.i = and i32 %27, -2
  %28 = ptrtoint ptr %wt_value.i42.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and13.i.i, ptr %wt_value.i42.i, align 4
  %call30.i45.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 2048, i32 noundef %and13.i.i) #5
  br label %gl9755_hw_setting.exit

gl9755_hw_setting.exit:                           ; preds = %if.end.i46.i, %if.end8.i.gl9755_hw_setting.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wt_value.i42.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  %29 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slot, align 128
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call.i.i6 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %32, i32 noundef 1, i32 noundef 1, i32 noundef 6, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %cmp.i = icmp slt i32 %call.i.i6, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i8

do.end.i:                                         ; preds = %gl9755_hw_setting.exit
  %33 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host1, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i7, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i7:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i7, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i7 ], [ %38, %do.end.i.dev_name.exit.i_crit_edge ]
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i, i32 noundef %call.i.i6) #8
  br label %gli_pcie_enable_msi.exit

if.end.i8:                                        ; preds = %gl9755_hw_setting.exit
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slot, align 128
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call5.i = call i32 @pci_irq_vector(ptr noundef %44, i32 noundef 0) #5
  %45 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host1, align 4
  %irq.i = getelementptr inbounds %struct.sdhci_host, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call5.i, ptr %irq.i, align 4
  br label %gli_pcie_enable_msi.exit

gli_pcie_enable_msi.exit:                         ; preds = %if.end.i8, %dev_name.exit.i
  %48 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host1, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %51, i32 0, i32 17
  %52 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %caps2, align 4
  %or = or i32 %53, 524288
  store i32 %or, ptr %caps2, align 4
  call void @sdhci_enable_v4_mode(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pci_gli_resume(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slots, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %5) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 6, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  %host.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %do.end.i.dev_name.exit.i_crit_edge ]
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i, i32 noundef %call.i.i) #8
  br label %gli_pcie_enable_msi.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call5.i = tail call i32 @pci_irq_vector(ptr noundef %21, i32 noundef 0) #5
  %host6.i = getelementptr inbounds %struct.sdhci_pci_slot, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %host6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host6.i, align 4
  %irq.i = getelementptr inbounds %struct.sdhci_host, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call5.i, ptr %irq.i, align 4
  br label %gli_pcie_enable_msi.exit

gli_pcie_enable_msi.exit:                         ; preds = %if.end.i, %dev_name.exit.i
  %call = tail call i32 @sdhci_pci_resume_host(ptr noundef %chip) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gli_probe_slot_gl9750(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %ops.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !43

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 %5(ptr noundef %1, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 2048
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !44
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i.i

sdhci_readl.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %9, %if.else.i.i.i ]
  %and.i.i = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sdhci_readl.exit.i.i.gl9750_wt_on.exit.i_crit_edge

sdhci_readl.exit.i.i.gl9750_wt_on.exit.i_crit_edge: ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_wt_on.exit.i

if.end.i.i:                                       ; preds = %sdhci_readl.exit.i.i
  %or.i.i = or i32 %retval.0.i.i.i, 1
  %10 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_l.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i.i.i, align 4
  %tobool.not.i36.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i36.i.i, label %do.body.i.i.i, label %if.then.i37.i.i, !prof !43

if.then.i37.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %1, i32 noundef %or.i.i, i32 noundef 2048) #5
  br label %gl9750_wt_on.exit.i

do.body.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %ioaddr.i38.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i38.i.i, align 16
  %add.ptr.i39.i.i = getelementptr i8, ptr %16, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i, i32 %14) #5, !srcloc !47
  br label %gl9750_wt_on.exit.i

gl9750_wt_on.exit.i:                              ; preds = %do.body.i.i.i, %if.then.i37.i.i, %sdhci_readl.exit.i.i.gl9750_wt_on.exit.i_crit_edge
  %17 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %gl9750_wt_on.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %20(ptr noundef %1, i32 noundef 2120) #5
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %gl9750_wt_on.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 2120
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !44
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %24, %if.else.i.i ]
  %or.i = or i32 %retval.0.i.i, 520093696
  %25 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %28, null
  br i1 %tobool.not.i19.i, label %do.body.i.i, label %if.then.i20.i, !prof !43

if.then.i20.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %28(ptr noundef %1, i32 noundef %or.i, i32 noundef 2120) #5
  br label %sdhci_writel.exit.i

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %ioaddr.i21.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %ioaddr.i21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr.i21.i, align 16
  %add.ptr.i22.i = getelementptr i8, ptr %31, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %29) #5, !srcloc !47
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i, %if.then.i20.i
  %32 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i.i25.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i25.i, label %if.else.i.i30.i, label %if.then.i.i27.i, !prof !43

if.then.i.i27.i:                                  ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i26.i = tail call i32 %35(ptr noundef %1, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i33.i

if.else.i.i30.i:                                  ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i28.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %ioaddr.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i.i28.i, align 16
  %add.ptr.i.i29.i = getelementptr i8, ptr %37, i32 2048
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29.i) #5, !srcloc !44
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i33.i

sdhci_readl.exit.i33.i:                           ; preds = %if.else.i.i30.i, %if.then.i.i27.i
  %retval.0.i.i31.i = phi i32 [ %call.i.i26.i, %if.then.i.i27.i ], [ %39, %if.else.i.i30.i ]
  %and.i32.i = and i32 %retval.0.i.i31.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %cmp.i.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.i, label %sdhci_readl.exit.i33.i.gl9750_hw_setting.exit_crit_edge, label %if.end.i36.i

sdhci_readl.exit.i33.i.gl9750_hw_setting.exit_crit_edge: ; preds = %sdhci_readl.exit.i33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_hw_setting.exit

if.end.i36.i:                                     ; preds = %sdhci_readl.exit.i33.i
  %and13.i.i = and i32 %retval.0.i.i31.i, -2
  %40 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i34.i = getelementptr inbounds %struct.sdhci_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %write_l.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_l.i.i34.i, align 4
  %tobool.not.i36.i35.i = icmp eq ptr %43, null
  br i1 %tobool.not.i36.i35.i, label %do.body.i.i40.i, label %if.then.i37.i37.i, !prof !43

if.then.i37.i37.i:                                ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %43(ptr noundef %1, i32 noundef %and13.i.i, i32 noundef 2048) #5
  br label %gl9750_hw_setting.exit

do.body.i.i40.i:                                  ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %44 = tail call i32 @llvm.bswap.i32(i32 %and13.i.i) #5
  %ioaddr.i38.i38.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %ioaddr.i38.i38.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioaddr.i38.i38.i, align 16
  %add.ptr.i39.i39.i = getelementptr i8, ptr %46, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i39.i, i32 %44) #5, !srcloc !47
  br label %gl9750_hw_setting.exit

gl9750_hw_setting.exit:                           ; preds = %do.body.i.i40.i, %if.then.i37.i37.i, %sdhci_readl.exit.i33.i.gl9750_hw_setting.exit_crit_edge
  %47 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %slot, align 128
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call.i.i6 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %50, i32 noundef 1, i32 noundef 1, i32 noundef 6, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %cmp.i = icmp slt i32 %call.i.i6, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %gl9750_hw_setting.exit
  %51 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host1, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i7 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i7, label %if.end.i.i8, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i8:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i8, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i9 = phi ptr [ %58, %if.end.i.i8 ], [ %56, %do.end.i.dev_name.exit.i_crit_edge ]
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i9, i32 noundef %call.i.i6) #8
  br label %gli_pcie_enable_msi.exit

if.end.i:                                         ; preds = %gl9750_hw_setting.exit
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %slot, align 128
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call5.i = tail call i32 @pci_irq_vector(ptr noundef %62, i32 noundef 0) #5
  %63 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host1, align 4
  %irq.i = getelementptr inbounds %struct.sdhci_host, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call5.i, ptr %irq.i, align 4
  br label %gli_pcie_enable_msi.exit

gli_pcie_enable_msi.exit:                         ; preds = %if.end.i, %dev_name.exit.i
  %66 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %host1, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %69, i32 0, i32 17
  %70 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %caps2, align 4
  %or = or i32 %71, 524288
  store i32 %or, ptr %caps2, align 4
  tail call void @sdhci_enable_v4_mode(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gli_probe_slot_gl9763e(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %host2 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %4 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !42
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps, align 32
  %or = or i32 %10, 4416
  store i32 %or, ptr %caps, align 32
  %11 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps2, align 4
  %or4 = or i32 %13, 3702816
  store i32 %or4, ptr %caps2, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef 2184, ptr noundef nonnull %value) #5
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 4
  %16 = and i32 %15, 524416
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %16)
  %.not = icmp eq i32 %16, 128
  br i1 %.not, label %if.then7, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 8
  %caps29 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %caps29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %caps29, align 4
  %or10 = or i32 %20, 25165824
  store i32 %or10, ptr %caps29, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %entry.if.end11_crit_edge
  %21 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slot, align 128
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %24, i32 noundef 1, i32 noundef 1, i32 noundef 6, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end11
  %25 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host2, align 4
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %do.end.i.dev_name.exit.i_crit_edge ]
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i, i32 noundef %call.i.i) #8
  br label %gli_pcie_enable_msi.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slot, align 128
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call5.i = call i32 @pci_irq_vector(ptr noundef %36, i32 noundef 0) #5
  %37 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host2, align 4
  %irq.i = getelementptr inbounds %struct.sdhci_host, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call5.i, ptr %irq.i, align 4
  br label %gli_pcie_enable_msi.exit

gli_pcie_enable_msi.exit:                         ; preds = %if.end.i, %dev_name.exit.i
  %hs400_enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 11, i32 18
  %40 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @gl9763e_hs400_enhanced_strobe, ptr %hs400_enhanced_strobe, align 4
  %41 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slot, align 128
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #5
  %45 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %value.i, align 4, !annotation !42
  %call.i = call i32 @pci_read_config_dword(ptr noundef %44, i32 noundef 2180, ptr noundef nonnull %value.i) #5
  %46 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %value.i, align 4
  %and.i = and i32 %47, -983041
  %or.i = or i32 %and.i, 131072
  store i32 %or.i, ptr %value.i, align 4
  %call14.i = call i32 @pci_write_config_dword(ptr noundef %44, i32 noundef 2180, i32 noundef %or.i) #5
  %call15.i = call i32 @pci_read_config_dword(ptr noundef %44, i32 noundef 2272, ptr noundef nonnull %value.i) #5
  %48 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %value.i, align 4
  %or16.i = or i32 %49, 512
  store i32 %or16.i, ptr %value.i, align 4
  %call17.i = call i32 @pci_write_config_dword(ptr noundef %44, i32 noundef 2272, i32 noundef %or16.i) #5
  %call18.i = call i32 @pci_read_config_dword(ptr noundef %44, i32 noundef 2400, ptr noundef nonnull %value.i) #5
  %50 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value.i, align 4
  %and19.i = and i32 %51, -9
  store i32 %and19.i, ptr %value.i, align 4
  %call20.i = call i32 @pci_write_config_dword(ptr noundef %44, i32 noundef 2400, i32 noundef %and19.i) #5
  %call21.i = call i32 @pci_read_config_dword(ptr noundef %44, i32 noundef 2212, ptr noundef nonnull %value.i) #5
  %52 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value.i, align 4
  %and22.i = and i32 %53, -536346625
  %or39.i = or i32 %and22.i, 44040192
  store i32 %or39.i, ptr %value.i, align 4
  %call40.i = call i32 @pci_write_config_dword(ptr noundef %44, i32 noundef 2212, i32 noundef %or39.i) #5
  %call41.i = call i32 @pci_read_config_dword(ptr noundef %44, i32 noundef 2356, ptr noundef nonnull %value.i) #5
  %54 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %value.i, align 4
  %and42.i = and i32 %55, 268435455
  %or59.i = or i32 %and42.i, 1342177280
  store i32 %or59.i, ptr %value.i, align 4
  %call60.i = call i32 @pci_write_config_dword(ptr noundef %44, i32 noundef 2356, i32 noundef %or59.i) #5
  %call61.i = call i32 @pci_read_config_dword(ptr noundef %44, i32 noundef 2180, ptr noundef nonnull %value.i) #5
  %56 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %value.i, align 4
  %and62.i = and i32 %57, -983041
  store i32 %and62.i, ptr %value.i, align 4
  %call80.i = call i32 @pci_write_config_dword(ptr noundef %44, i32 noundef 2180, i32 noundef %and62.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  call void @sdhci_enable_v4_mode(ptr noundef %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gl9763e_add_host(ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %host2 = getelementptr inbounds %struct.sdhci_pci_slot, ptr %slot, i32 0, i32 1
  %4 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host2, align 4
  %call = tail call i32 @sdhci_setup_host(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 248, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %7, i32 512
  %mmio = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %mmio, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sdhci_gl9763e_cqhci_ops, ptr %call.i, align 4
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 16
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then9, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %caps = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %caps, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc, align 8
  %call12 = tail call i32 @cqhci_init(ptr noundef nonnull %call.i, ptr noundef %15, i1 noundef zeroext %tobool7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @__sdhci_add_host(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup20_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.cleanup20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end10.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @sdhci_cleanup_host(ptr noundef %5) #5
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup, %if.end15.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ %call, %entry.cleanup20_crit_edge ], [ 0, %if.end15.cleanup20_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cqhci_gli_suspend(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slots, align 4
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %call.i = tail call i32 @cqhci_deactivate(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %call2 = tail call i32 @sdhci_suspend_host(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cqhci_gli_resume(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr inbounds %struct.sdhci_pci_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slots, align 4
  %call = tail call i32 @sdhci_pci_gli_resume(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %host = getelementptr inbounds %struct.sdhci_pci_slot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %call1 = tail call i32 @cqhci_resume(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_v4_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pci_resume_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @sdhci_gli_readw(ptr nocapture noundef readonly %host, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %and = and i32 %reg, -4
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %shl = shl i32 %reg, 3
  %and2 = and i32 %shl, 24
  %shr = lshr i32 %3, %and2
  %conv = trunc i32 %shr to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sdhci_gli_readb(ptr nocapture noundef readonly %host, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %and = and i32 %reg, -4
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %shl = shl i32 %reg, 3
  %and2 = and i32 %shl, 24
  %shr = lshr i32 %3, %and2
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_gl9755_set_clock(ptr noundef %host, i32 noundef %clock) #0 align 64 {
entry:
  %wt_value.i1.i2.i = alloca i32, align 4
  %wt_value.i.i3.i = alloca i32, align 4
  %pll.i4.i = alloca i32, align 4
  %wt_value.i1.i.i = alloca i32, align 4
  %wt_value.i.i.i = alloca i32, align 4
  %pll.i.i = alloca i32, align 4
  %ssc.i.i = alloca i32, align 4
  %wt_value.i5.i = alloca i32, align 4
  %wt_value.i.i = alloca i32, align 4
  %pll.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %6 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %actual_clock, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll.i) #5
  %7 = ptrtoint ptr %pll.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %pll.i, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wt_value.i.i) #5
  %8 = ptrtoint ptr %wt_value.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %wt_value.i.i, align 4, !annotation !42
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 2048, ptr noundef nonnull %wt_value.i.i) #5
  %9 = ptrtoint ptr %wt_value.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wt_value.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.gl9755_wt_on.exit.i_crit_edge

entry.gl9755_wt_on.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9755_wt_on.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i = or i32 %10, 1
  %11 = ptrtoint ptr %wt_value.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i.i, ptr %wt_value.i.i, align 4
  %call30.i.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 2048, i32 noundef %or.i.i) #5
  br label %gl9755_wt_on.exit.i

gl9755_wt_on.exit.i:                              ; preds = %if.end.i.i, %entry.gl9755_wt_on.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wt_value.i.i) #5
  %call.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 100, ptr noundef nonnull %pll.i) #5
  %12 = ptrtoint ptr %pll.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pll.i, align 4
  %and.i = and i32 %13, 2147450879
  store i32 %and.i, ptr %pll.i, align 4
  %call1.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 100, i32 noundef %and.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wt_value.i5.i) #5
  %14 = ptrtoint ptr %wt_value.i5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %wt_value.i5.i, align 4, !annotation !42
  %call.i6.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 2048, ptr noundef nonnull %wt_value.i5.i) #5
  %15 = ptrtoint ptr %wt_value.i5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wt_value.i5.i, align 4
  %and.i7.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %cmp.i.i = icmp eq i32 %and.i7.i, 0
  br i1 %cmp.i.i, label %gl9755_wt_on.exit.i.gl9755_disable_ssc_pll.exit_crit_edge, label %if.end.i9.i

gl9755_wt_on.exit.i.gl9755_disable_ssc_pll.exit_crit_edge: ; preds = %gl9755_wt_on.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9755_disable_ssc_pll.exit

if.end.i9.i:                                      ; preds = %gl9755_wt_on.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i.i = and i32 %16, -2
  %17 = ptrtoint ptr %wt_value.i5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and13.i.i, ptr %wt_value.i5.i, align 4
  %call30.i8.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 2048, i32 noundef %and13.i.i) #5
  br label %gl9755_disable_ssc_pll.exit

gl9755_disable_ssc_pll.exit:                      ; preds = %if.end.i9.i, %gl9755_wt_on.exit.i.gl9755_disable_ssc_pll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wt_value.i5.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll.i) #5
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %gl9755_disable_ssc_pll.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void %21(ptr noundef %host, i16 noundef zeroext 0, i32 noundef 44) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %gl9755_disable_ssc_pll.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  call void @arm_heavy_mb() #5
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %22 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %23, i32 44
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #5, !srcloc !51
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %sdhci_writew.exit.cleanup_crit_edge, label %if.end

sdhci_writew.exit.cleanup_crit_edge:              ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sdhci_writew.exit
  %24 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc, align 8
  %actual_clock5 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 58
  %call6 = call zeroext i16 @sdhci_calc_clk(ptr noundef %host, i32 noundef %clock, ptr noundef %actual_clock5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %clock)
  %cmp7 = icmp eq i32 %clock, 200000000
  br i1 %cmp7, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %timing = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %26 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp8 = icmp eq i8 %27, 6
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc, align 8
  %actual_clock12 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 58
  %30 = ptrtoint ptr %actual_clock12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 205000000, ptr %actual_clock12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll.i.i) #5
  %31 = ptrtoint ptr %pll.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %pll.i.i, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssc.i.i) #5
  %32 = ptrtoint ptr %ssc.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %ssc.i.i, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wt_value.i.i.i) #5
  %33 = ptrtoint ptr %wt_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %wt_value.i.i.i, align 4, !annotation !42
  %call.i.i.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 2048, ptr noundef nonnull %wt_value.i.i.i) #5
  %34 = ptrtoint ptr %wt_value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wt_value.i.i.i, align 4
  %and.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then10.gl9755_wt_on.exit.i.i_crit_edge

if.then10.gl9755_wt_on.exit.i.i_crit_edge:        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9755_wt_on.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i.i = or i32 %35, 1
  %36 = ptrtoint ptr %wt_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i.i, ptr %wt_value.i.i.i, align 4
  %call30.i.i.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 2048, i32 noundef %or.i.i.i) #5
  br label %gl9755_wt_on.exit.i.i

gl9755_wt_on.exit.i.i:                            ; preds = %if.end.i.i.i, %if.then10.gl9755_wt_on.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wt_value.i.i.i) #5
  %call.i.i27 = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 100, ptr noundef nonnull %pll.i.i) #5
  %call1.i.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %ssc.i.i) #5
  %37 = ptrtoint ptr %pll.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pll.i.i, align 4
  %39 = ptrtoint ptr %ssc.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ssc.i.i, align 4
  %and2.i.i = and i32 %40, -65536
  %or44.i.i = or i32 %38, -1627389952
  store i32 %or44.i.i, ptr %pll.i.i, align 4
  %or71.i.i = or i32 %and2.i.i, 65511
  store i32 %or71.i.i, ptr %ssc.i.i, align 4
  %call72.i.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 104, i32 noundef %or71.i.i) #5
  %41 = ptrtoint ptr %pll.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pll.i.i, align 4
  %call73.i.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 100, i32 noundef %42) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wt_value.i1.i.i) #5
  %43 = ptrtoint ptr %wt_value.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %wt_value.i1.i.i, align 4, !annotation !42
  %call.i2.i.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 2048, ptr noundef nonnull %wt_value.i1.i.i) #5
  %44 = ptrtoint ptr %wt_value.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wt_value.i1.i.i, align 4
  %and.i3.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i3.i.i, 0
  br i1 %cmp.i.i.i, label %gl9755_wt_on.exit.i.i.gl9755_set_ssc.exit.i_crit_edge, label %if.end.i5.i.i

gl9755_wt_on.exit.i.i.gl9755_set_ssc.exit.i_crit_edge: ; preds = %gl9755_wt_on.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9755_set_ssc.exit.i

if.end.i5.i.i:                                    ; preds = %gl9755_wt_on.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i.i.i = and i32 %45, -2
  %46 = ptrtoint ptr %wt_value.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and13.i.i.i, ptr %wt_value.i1.i.i, align 4
  %call30.i4.i.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 2048, i32 noundef %and13.i.i.i) #5
  br label %gl9755_set_ssc.exit.i

gl9755_set_ssc.exit.i:                            ; preds = %if.end.i5.i.i, %gl9755_wt_on.exit.i.i.gl9755_set_ssc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wt_value.i1.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssc.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll.i.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll.i4.i) #5
  %47 = ptrtoint ptr %pll.i4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %pll.i4.i, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wt_value.i.i3.i) #5
  %48 = ptrtoint ptr %wt_value.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %wt_value.i.i3.i, align 4, !annotation !42
  %call.i.i5.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 2048, ptr noundef nonnull %wt_value.i.i3.i) #5
  %49 = ptrtoint ptr %wt_value.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wt_value.i.i3.i, align 4
  %and.i.i6.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i6.i)
  %cmp.not.i.i7.i = icmp eq i32 %and.i.i6.i, 0
  br i1 %cmp.not.i.i7.i, label %if.end.i.i10.i, label %gl9755_set_ssc.exit.i.gl9755_wt_on.exit.i15.i_crit_edge

gl9755_set_ssc.exit.i.gl9755_wt_on.exit.i15.i_crit_edge: ; preds = %gl9755_set_ssc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9755_wt_on.exit.i15.i

if.end.i.i10.i:                                   ; preds = %gl9755_set_ssc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i8.i = or i32 %50, 1
  %51 = ptrtoint ptr %wt_value.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i.i8.i, ptr %wt_value.i.i3.i, align 4
  %call30.i.i9.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 2048, i32 noundef %or.i.i8.i) #5
  br label %gl9755_wt_on.exit.i15.i

gl9755_wt_on.exit.i15.i:                          ; preds = %if.end.i.i10.i, %gl9755_set_ssc.exit.i.gl9755_wt_on.exit.i15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wt_value.i.i3.i) #5
  %call.i11.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 100, ptr noundef nonnull %pll.i4.i) #5
  %52 = ptrtoint ptr %pll.i4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pll.i4.i, align 4
  %and.i.i28 = and i32 %53, -62464
  %or69.i.i = or i32 %and.i.i28, 33350
  store i32 %or69.i.i, ptr %pll.i4.i, align 4
  %call70.i.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 100, i32 noundef %or69.i.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wt_value.i1.i2.i) #5
  %54 = ptrtoint ptr %wt_value.i1.i2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %wt_value.i1.i2.i, align 4, !annotation !42
  %call.i2.i12.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 2048, ptr noundef nonnull %wt_value.i1.i2.i) #5
  %55 = ptrtoint ptr %wt_value.i1.i2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wt_value.i1.i2.i, align 4
  %and.i3.i13.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i13.i)
  %cmp.i.i14.i = icmp eq i32 %and.i3.i13.i, 0
  br i1 %cmp.i.i14.i, label %gl9755_wt_on.exit.i15.i.gl9755_set_ssc_pll_205mhz.exit_crit_edge, label %if.end.i5.i18.i

gl9755_wt_on.exit.i15.i.gl9755_set_ssc_pll_205mhz.exit_crit_edge: ; preds = %gl9755_wt_on.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9755_set_ssc_pll_205mhz.exit

if.end.i5.i18.i:                                  ; preds = %gl9755_wt_on.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i.i16.i = and i32 %56, -2
  %57 = ptrtoint ptr %wt_value.i1.i2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and13.i.i16.i, ptr %wt_value.i1.i2.i, align 4
  %call30.i4.i17.i = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 2048, i32 noundef %and13.i.i16.i) #5
  br label %gl9755_set_ssc_pll_205mhz.exit

gl9755_set_ssc_pll_205mhz.exit:                   ; preds = %if.end.i5.i18.i, %gl9755_wt_on.exit.i15.i.gl9755_set_ssc_pll_205mhz.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wt_value.i1.i2.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748000) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll.i4.i) #5
  br label %if.end13

if.end13:                                         ; preds = %gl9755_set_ssc_pll_205mhz.exit, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @sdhci_enable_clk(ptr noundef %host, i16 noundef zeroext %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %sdhci_writew.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pci_enable_dma(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_gli_voltage_switch(ptr nocapture noundef readnone %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 100000, i32 noundef 110000, i32 noundef 2) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sdhci_calc_clk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_gl9750_readl(ptr nocapture noundef readonly %host, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %reg)
  %cmp = icmp eq i32 %reg, 72
  %and = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %4, label %if.then, label %entry.if.end_crit_edge, !prof !53

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %3, 200
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ %or, %if.then ], [ %3, %entry.if.end_crit_edge ]
  ret i32 %value.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_gl9750_set_clock(ptr noundef %host, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %actual_clock, align 8
  %ops.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !43

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 %6(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 2048
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !44
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i.i

sdhci_readl.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %10, %if.else.i.i.i ]
  %and.i.i = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sdhci_readl.exit.i.i.gl9750_wt_on.exit.i_crit_edge

sdhci_readl.exit.i.i.gl9750_wt_on.exit.i_crit_edge: ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_wt_on.exit.i

if.end.i.i:                                       ; preds = %sdhci_readl.exit.i.i
  %or.i.i = or i32 %retval.0.i.i.i, 1
  %11 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write_l.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_l.i.i.i, align 4
  %tobool.not.i36.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i36.i.i, label %do.body.i.i.i, label %if.then.i37.i.i, !prof !43

if.then.i37.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %14(ptr noundef %host, i32 noundef %or.i.i, i32 noundef 2048) #5
  br label %gl9750_wt_on.exit.i

do.body.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %ioaddr.i38.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i38.i.i, align 16
  %add.ptr.i39.i.i = getelementptr i8, ptr %17, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i, i32 %15) #5, !srcloc !47
  br label %gl9750_wt_on.exit.i

gl9750_wt_on.exit.i:                              ; preds = %do.body.i.i.i, %if.then.i37.i.i, %sdhci_readl.exit.i.i.gl9750_wt_on.exit.i_crit_edge
  %18 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %gl9750_wt_on.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %21(ptr noundef %host, i32 noundef 2148) #5
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %gl9750_wt_on.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %22 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 2148
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !44
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %25, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, 2147450879
  %26 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i6.i = icmp eq ptr %29, null
  br i1 %tobool.not.i6.i, label %do.body.i.i, label %if.then.i7.i, !prof !43

if.then.i7.i:                                     ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %29(ptr noundef %host, i32 noundef %and.i, i32 noundef 2148) #5
  br label %sdhci_writel.exit.i

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %ioaddr.i8.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %31 = ptrtoint ptr %ioaddr.i8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i8.i, align 16
  %add.ptr.i9.i = getelementptr i8, ptr %32, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %30) #5, !srcloc !47
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i, %if.then.i7.i
  %33 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool.not.i.i12.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i12.i, label %if.else.i.i17.i, label %if.then.i.i14.i, !prof !43

if.then.i.i14.i:                                  ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i13.i = tail call i32 %36(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i20.i

if.else.i.i17.i:                                  ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i15.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %37 = ptrtoint ptr %ioaddr.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i.i15.i, align 16
  %add.ptr.i.i16.i = getelementptr i8, ptr %38, i32 2048
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #5, !srcloc !44
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i20.i

sdhci_readl.exit.i20.i:                           ; preds = %if.else.i.i17.i, %if.then.i.i14.i
  %retval.0.i.i18.i = phi i32 [ %call.i.i13.i, %if.then.i.i14.i ], [ %40, %if.else.i.i17.i ]
  %and.i19.i = and i32 %retval.0.i.i18.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %cmp.i.i = icmp eq i32 %and.i19.i, 0
  br i1 %cmp.i.i, label %sdhci_readl.exit.i20.i.gl9750_disable_ssc_pll.exit_crit_edge, label %if.end.i23.i

sdhci_readl.exit.i20.i.gl9750_disable_ssc_pll.exit_crit_edge: ; preds = %sdhci_readl.exit.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_disable_ssc_pll.exit

if.end.i23.i:                                     ; preds = %sdhci_readl.exit.i20.i
  %and13.i.i = and i32 %retval.0.i.i18.i, -2
  %41 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i21.i = getelementptr inbounds %struct.sdhci_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %write_l.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_l.i.i21.i, align 4
  %tobool.not.i36.i22.i = icmp eq ptr %44, null
  br i1 %tobool.not.i36.i22.i, label %do.body.i.i27.i, label %if.then.i37.i24.i, !prof !43

if.then.i37.i24.i:                                ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %44(ptr noundef %host, i32 noundef %and13.i.i, i32 noundef 2048) #5
  br label %gl9750_disable_ssc_pll.exit

do.body.i.i27.i:                                  ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %45 = tail call i32 @llvm.bswap.i32(i32 %and13.i.i) #5
  %ioaddr.i38.i25.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %46 = ptrtoint ptr %ioaddr.i38.i25.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr.i38.i25.i, align 16
  %add.ptr.i39.i26.i = getelementptr i8, ptr %47, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i26.i, i32 %45) #5, !srcloc !47
  br label %gl9750_disable_ssc_pll.exit

gl9750_disable_ssc_pll.exit:                      ; preds = %do.body.i.i27.i, %if.then.i37.i24.i, %sdhci_readl.exit.i20.i.gl9750_disable_ssc_pll.exit_crit_edge
  %48 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %gl9750_disable_ssc_pll.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %51(ptr noundef %host, i16 noundef zeroext 0, i32 noundef 44) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %gl9750_disable_ssc_pll.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %52 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %53, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #5, !srcloc !51
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %sdhci_writew.exit.cleanup_crit_edge, label %if.end

sdhci_writew.exit.cleanup_crit_edge:              ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sdhci_writew.exit
  %54 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmc, align 8
  %actual_clock4 = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 58
  %call = tail call zeroext i16 @sdhci_calc_clk(ptr noundef %host, i32 noundef %clock, ptr noundef %actual_clock4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %clock)
  %cmp5 = icmp eq i32 %clock, 200000000
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %timing = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %56 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %57)
  %cmp6 = icmp eq i8 %57, 6
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  %58 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmc, align 8
  %actual_clock10 = getelementptr inbounds %struct.mmc_host, ptr %59, i32 0, i32 58
  %60 = ptrtoint ptr %actual_clock10 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 205000000, ptr %actual_clock10, align 8
  %61 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i, !prof !43

if.then.i.i.i.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = tail call i32 %64(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %65 = ptrtoint ptr %ioaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr.i.i.i.i, align 16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %66, i32 2048
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !44
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i.i.i

sdhci_readl.exit.i.i.i:                           ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %if.then.i.i.i.i ], [ %68, %if.else.i.i.i.i ]
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %sdhci_readl.exit.i.i.i.gl9750_wt_on.exit.i.i_crit_edge

sdhci_readl.exit.i.i.i.gl9750_wt_on.exit.i.i_crit_edge: ; preds = %sdhci_readl.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_wt_on.exit.i.i

if.end.i.i.i:                                     ; preds = %sdhci_readl.exit.i.i.i
  %or.i.i.i = or i32 %retval.0.i.i.i.i, 1
  %69 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %write_l.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_l.i.i.i.i, align 4
  %tobool.not.i36.i.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i36.i.i.i, label %do.body.i.i.i.i, label %if.then.i37.i.i.i, !prof !43

if.then.i37.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %72(ptr noundef %host, i32 noundef %or.i.i.i, i32 noundef 2048) #5
  br label %gl9750_wt_on.exit.i.i

do.body.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %73 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %ioaddr.i38.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %74 = ptrtoint ptr %ioaddr.i38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ioaddr.i38.i.i.i, align 16
  %add.ptr.i39.i.i.i = getelementptr i8, ptr %75, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i.i, i32 %73) #5, !srcloc !47
  br label %gl9750_wt_on.exit.i.i

gl9750_wt_on.exit.i.i:                            ; preds = %do.body.i.i.i.i, %if.then.i37.i.i.i, %sdhci_readl.exit.i.i.i.gl9750_wt_on.exit.i.i_crit_edge
  %76 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %tobool.not.i.i.i23 = icmp eq ptr %79, null
  br i1 %tobool.not.i.i.i23, label %if.else.i.i.i28, label %if.then.i.i.i25, !prof !43

if.then.i.i.i25:                                  ; preds = %gl9750_wt_on.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i24 = tail call i32 %79(ptr noundef %host, i32 noundef 2148) #5
  br label %sdhci_readl.exit.i.i30

if.else.i.i.i28:                                  ; preds = %gl9750_wt_on.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i.i26 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %80 = ptrtoint ptr %ioaddr.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ioaddr.i.i.i26, align 16
  %add.ptr.i.i.i27 = getelementptr i8, ptr %81, i32 2148
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i27) #5, !srcloc !44
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i.i30

sdhci_readl.exit.i.i30:                           ; preds = %if.else.i.i.i28, %if.then.i.i.i25
  %retval.0.i.i.i29 = phi i32 [ %call.i.i.i24, %if.then.i.i.i25 ], [ %83, %if.else.i.i.i28 ]
  %84 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %tobool.not.i2.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i2.i.i, label %if.else.i7.i.i, label %if.then.i4.i.i, !prof !43

if.then.i4.i.i:                                   ; preds = %sdhci_readl.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #7
  %call.i3.i.i = tail call i32 %87(ptr noundef %host, i32 noundef 2156) #5
  br label %sdhci_readl.exit9.i.i

if.else.i7.i.i:                                   ; preds = %sdhci_readl.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i5.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %88 = ptrtoint ptr %ioaddr.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr.i5.i.i, align 16
  %add.ptr.i6.i.i = getelementptr i8, ptr %89, i32 2156
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i) #5, !srcloc !44
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit9.i.i

sdhci_readl.exit9.i.i:                            ; preds = %if.else.i7.i.i, %if.then.i4.i.i
  %retval.0.i8.i.i = phi i32 [ %call.i3.i.i, %if.then.i4.i.i ], [ %91, %if.else.i7.i.i ]
  %or44.i.i = or i32 %retval.0.i.i.i29, -1627389952
  %and2.i.i = and i32 %retval.0.i8.i.i, 65535
  %or71.i.i = or i32 %and2.i.i, -1638400
  %92 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i.i31 = getelementptr inbounds %struct.sdhci_ops, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %write_l.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_l.i.i.i31, align 4
  %tobool.not.i11.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i11.i.i, label %do.body.i.i.i32, label %if.then.i12.i.i, !prof !43

if.then.i12.i.i:                                  ; preds = %sdhci_readl.exit9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %95(ptr noundef %host, i32 noundef %or71.i.i, i32 noundef 2156) #5
  br label %sdhci_writel.exit.i.i

do.body.i.i.i32:                                  ; preds = %sdhci_readl.exit9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %96 = tail call i32 @llvm.bswap.i32(i32 %or71.i.i) #5
  %ioaddr.i13.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %97 = ptrtoint ptr %ioaddr.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ioaddr.i13.i.i, align 16
  %add.ptr.i14.i.i = getelementptr i8, ptr %98, i32 2156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %96) #5, !srcloc !47
  br label %sdhci_writel.exit.i.i

sdhci_writel.exit.i.i:                            ; preds = %do.body.i.i.i32, %if.then.i12.i.i
  %99 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i17.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %write_l.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_l.i17.i.i, align 4
  %tobool.not.i18.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i18.i.i, label %do.body.i22.i.i, label %if.then.i19.i.i, !prof !43

if.then.i19.i.i:                                  ; preds = %sdhci_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %102(ptr noundef %host, i32 noundef %or44.i.i, i32 noundef 2148) #5
  br label %sdhci_writel.exit24.i.i

do.body.i22.i.i:                                  ; preds = %sdhci_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %103 = tail call i32 @llvm.bswap.i32(i32 %or44.i.i) #5
  %ioaddr.i20.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %104 = ptrtoint ptr %ioaddr.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ioaddr.i20.i.i, align 16
  %add.ptr.i21.i.i = getelementptr i8, ptr %105, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i, i32 %103) #5, !srcloc !47
  br label %sdhci_writel.exit24.i.i

sdhci_writel.exit24.i.i:                          ; preds = %do.body.i22.i.i, %if.then.i19.i.i
  %106 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i.i.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %tobool.not.i.i26.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i26.i.i, label %if.else.i.i31.i.i, label %if.then.i.i28.i.i, !prof !43

if.then.i.i28.i.i:                                ; preds = %sdhci_writel.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i27.i.i = tail call i32 %109(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i34.i.i

if.else.i.i31.i.i:                                ; preds = %sdhci_writel.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i29.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %110 = ptrtoint ptr %ioaddr.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ioaddr.i.i29.i.i, align 16
  %add.ptr.i.i30.i.i = getelementptr i8, ptr %111, i32 2048
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30.i.i) #5, !srcloc !44
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i34.i.i

sdhci_readl.exit.i34.i.i:                         ; preds = %if.else.i.i31.i.i, %if.then.i.i28.i.i
  %retval.0.i.i32.i.i = phi i32 [ %call.i.i27.i.i, %if.then.i.i28.i.i ], [ %113, %if.else.i.i31.i.i ]
  %and.i33.i.i = and i32 %retval.0.i.i32.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i33.i.i, 0
  br i1 %cmp.i.i.i, label %sdhci_readl.exit.i34.i.i.gl9750_set_ssc.exit.i_crit_edge, label %if.end.i37.i.i

sdhci_readl.exit.i34.i.i.gl9750_set_ssc.exit.i_crit_edge: ; preds = %sdhci_readl.exit.i34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_set_ssc.exit.i

if.end.i37.i.i:                                   ; preds = %sdhci_readl.exit.i34.i.i
  %and13.i.i.i = and i32 %retval.0.i.i32.i.i, -2
  %114 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i35.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %write_l.i.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write_l.i.i35.i.i, align 4
  %tobool.not.i36.i36.i.i = icmp eq ptr %117, null
  br i1 %tobool.not.i36.i36.i.i, label %do.body.i.i41.i.i, label %if.then.i37.i38.i.i, !prof !43

if.then.i37.i38.i.i:                              ; preds = %if.end.i37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %117(ptr noundef %host, i32 noundef %and13.i.i.i, i32 noundef 2048) #5
  br label %gl9750_set_ssc.exit.i

do.body.i.i41.i.i:                                ; preds = %if.end.i37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %118 = tail call i32 @llvm.bswap.i32(i32 %and13.i.i.i) #5
  %ioaddr.i38.i39.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %119 = ptrtoint ptr %ioaddr.i38.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ioaddr.i38.i39.i.i, align 16
  %add.ptr.i39.i40.i.i = getelementptr i8, ptr %120, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i40.i.i, i32 %118) #5, !srcloc !47
  br label %gl9750_set_ssc.exit.i

gl9750_set_ssc.exit.i:                            ; preds = %do.body.i.i41.i.i, %if.then.i37.i38.i.i, %sdhci_readl.exit.i34.i.i.gl9750_set_ssc.exit.i_crit_edge
  %121 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %tobool.not.i.i.i3.i = icmp eq ptr %124, null
  br i1 %tobool.not.i.i.i3.i, label %if.else.i.i.i8.i, label %if.then.i.i.i5.i, !prof !43

if.then.i.i.i5.i:                                 ; preds = %gl9750_set_ssc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i4.i = tail call i32 %124(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i.i12.i

if.else.i.i.i8.i:                                 ; preds = %gl9750_set_ssc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i.i6.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %125 = ptrtoint ptr %ioaddr.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ioaddr.i.i.i6.i, align 16
  %add.ptr.i.i.i7.i = getelementptr i8, ptr %126, i32 2048
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i7.i) #5, !srcloc !44
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i.i12.i

sdhci_readl.exit.i.i12.i:                         ; preds = %if.else.i.i.i8.i, %if.then.i.i.i5.i
  %retval.0.i.i.i9.i = phi i32 [ %call.i.i.i4.i, %if.then.i.i.i5.i ], [ %128, %if.else.i.i.i8.i ]
  %and.i.i10.i = and i32 %retval.0.i.i.i9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10.i)
  %cmp.not.i.i11.i = icmp eq i32 %and.i.i10.i, 0
  br i1 %cmp.not.i.i11.i, label %if.end.i.i16.i, label %sdhci_readl.exit.i.i12.i.gl9750_wt_on.exit.i22.i_crit_edge

sdhci_readl.exit.i.i12.i.gl9750_wt_on.exit.i22.i_crit_edge: ; preds = %sdhci_readl.exit.i.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_wt_on.exit.i22.i

if.end.i.i16.i:                                   ; preds = %sdhci_readl.exit.i.i12.i
  %or.i.i13.i = or i32 %retval.0.i.i.i9.i, 1
  %129 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i.i14.i = getelementptr inbounds %struct.sdhci_ops, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %write_l.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_l.i.i.i14.i, align 4
  %tobool.not.i36.i.i15.i = icmp eq ptr %132, null
  br i1 %tobool.not.i36.i.i15.i, label %do.body.i.i.i20.i, label %if.then.i37.i.i17.i, !prof !43

if.then.i37.i.i17.i:                              ; preds = %if.end.i.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %132(ptr noundef %host, i32 noundef %or.i.i13.i, i32 noundef 2048) #5
  br label %gl9750_wt_on.exit.i22.i

do.body.i.i.i20.i:                                ; preds = %if.end.i.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %133 = tail call i32 @llvm.bswap.i32(i32 %or.i.i13.i) #5
  %ioaddr.i38.i.i18.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %134 = ptrtoint ptr %ioaddr.i38.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ioaddr.i38.i.i18.i, align 16
  %add.ptr.i39.i.i19.i = getelementptr i8, ptr %135, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i19.i, i32 %133) #5, !srcloc !47
  br label %gl9750_wt_on.exit.i22.i

gl9750_wt_on.exit.i22.i:                          ; preds = %do.body.i.i.i20.i, %if.then.i37.i.i17.i, %sdhci_readl.exit.i.i12.i.gl9750_wt_on.exit.i22.i_crit_edge
  %136 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i.i.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %tobool.not.i.i21.i = icmp eq ptr %139, null
  br i1 %tobool.not.i.i21.i, label %if.else.i.i27.i, label %if.then.i.i24.i, !prof !43

if.then.i.i24.i:                                  ; preds = %gl9750_wt_on.exit.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i23.i = tail call i32 %139(ptr noundef %host, i32 noundef 2148) #5
  br label %sdhci_readl.exit.i31.i

if.else.i.i27.i:                                  ; preds = %gl9750_wt_on.exit.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i25.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %140 = ptrtoint ptr %ioaddr.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ioaddr.i.i25.i, align 16
  %add.ptr.i.i26.i = getelementptr i8, ptr %141, i32 2148
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26.i) #5, !srcloc !44
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i31.i

sdhci_readl.exit.i31.i:                           ; preds = %if.else.i.i27.i, %if.then.i.i24.i
  %retval.0.i.i28.i = phi i32 [ %call.i.i23.i, %if.then.i.i24.i ], [ %143, %if.else.i.i27.i ]
  %and.i.i33 = and i32 %retval.0.i.i28.i, -62464
  %or69.i.i = or i32 %and.i.i33, 33350
  %144 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i29.i = getelementptr inbounds %struct.sdhci_ops, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %write_l.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write_l.i.i29.i, align 4
  %tobool.not.i2.i30.i = icmp eq ptr %147, null
  br i1 %tobool.not.i2.i30.i, label %do.body.i.i32.i, label %if.then.i3.i.i, !prof !43

if.then.i3.i.i:                                   ; preds = %sdhci_readl.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %147(ptr noundef %host, i32 noundef %or69.i.i, i32 noundef 2148) #5
  br label %sdhci_writel.exit.i33.i

do.body.i.i32.i:                                  ; preds = %sdhci_readl.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %148 = tail call i32 @llvm.bswap.i32(i32 %or69.i.i) #5
  %ioaddr.i4.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %149 = ptrtoint ptr %ioaddr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ioaddr.i4.i.i, align 16
  %add.ptr.i5.i.i = getelementptr i8, ptr %150, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %148) #5, !srcloc !47
  br label %sdhci_writel.exit.i33.i

sdhci_writel.exit.i33.i:                          ; preds = %do.body.i.i32.i, %if.then.i3.i.i
  %151 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ops.i.i.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %tobool.not.i.i8.i.i = icmp eq ptr %154, null
  br i1 %tobool.not.i.i8.i.i, label %if.else.i.i13.i.i, label %if.then.i.i10.i.i, !prof !43

if.then.i.i10.i.i:                                ; preds = %sdhci_writel.exit.i33.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i9.i.i = tail call i32 %154(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i16.i.i

if.else.i.i13.i.i:                                ; preds = %sdhci_writel.exit.i33.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i11.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %155 = ptrtoint ptr %ioaddr.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ioaddr.i.i11.i.i, align 16
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %156, i32 2048
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i.i) #5, !srcloc !44
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i16.i.i

sdhci_readl.exit.i16.i.i:                         ; preds = %if.else.i.i13.i.i, %if.then.i.i10.i.i
  %retval.0.i.i14.i.i = phi i32 [ %call.i.i9.i.i, %if.then.i.i10.i.i ], [ %158, %if.else.i.i13.i.i ]
  %and.i15.i.i = and i32 %retval.0.i.i14.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i.i)
  %cmp.i.i34.i = icmp eq i32 %and.i15.i.i, 0
  br i1 %cmp.i.i34.i, label %sdhci_readl.exit.i16.i.i.gl9750_set_ssc_pll_205mhz.exit_crit_edge, label %if.end.i19.i.i

sdhci_readl.exit.i16.i.i.gl9750_set_ssc_pll_205mhz.exit_crit_edge: ; preds = %sdhci_readl.exit.i16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_set_ssc_pll_205mhz.exit

if.end.i19.i.i:                                   ; preds = %sdhci_readl.exit.i16.i.i
  %and13.i.i35.i = and i32 %retval.0.i.i14.i.i, -2
  %159 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i17.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %write_l.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write_l.i.i17.i.i, align 4
  %tobool.not.i36.i18.i.i = icmp eq ptr %162, null
  br i1 %tobool.not.i36.i18.i.i, label %do.body.i.i23.i.i, label %if.then.i37.i20.i.i, !prof !43

if.then.i37.i20.i.i:                              ; preds = %if.end.i19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %162(ptr noundef %host, i32 noundef %and13.i.i35.i, i32 noundef 2048) #5
  br label %gl9750_set_ssc_pll_205mhz.exit

do.body.i.i23.i.i:                                ; preds = %if.end.i19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %163 = tail call i32 @llvm.bswap.i32(i32 %and13.i.i35.i) #5
  %ioaddr.i38.i21.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %164 = ptrtoint ptr %ioaddr.i38.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ioaddr.i38.i21.i.i, align 16
  %add.ptr.i39.i22.i.i = getelementptr i8, ptr %165, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i22.i.i, i32 %163) #5, !srcloc !47
  br label %gl9750_set_ssc_pll_205mhz.exit

gl9750_set_ssc_pll_205mhz.exit:                   ; preds = %do.body.i.i23.i.i, %if.then.i37.i20.i.i, %sdhci_readl.exit.i16.i.i.gl9750_set_ssc_pll_205mhz.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 214748000) #5
  br label %if.end11

if.end11:                                         ; preds = %gl9750_set_ssc_pll_205mhz.exit, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @sdhci_enable_clk(ptr noundef %host, i16 noundef zeroext %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %sdhci_writew.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_gl9750_reset(ptr noundef %host, i8 noundef zeroext %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #5
  tail call fastcc void @gli_set_9750(ptr noundef %host)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gl9750_execute_tuning(ptr noundef %host, i32 noundef %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %retune_period = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %retune_period to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %retune_period, align 4
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 73
  %3 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tuning_count = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 72
  %5 = ptrtoint ptr %tuning_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuning_count, align 4
  %7 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc, align 8
  %retune_period2 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 34
  %9 = ptrtoint ptr %retune_period2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %retune_period2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @gli_set_9750(ptr noundef %host)
  %ops.i.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %ioaddr.i.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %tuning_done.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 71
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc14.i.for.body.i_crit_edge, %if.end
  %rx_inv.058.i = phi i32 [ 0, %if.end ], [ %inc15.i, %for.inc14.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_inv.058.i)
  %tobool.not.i = icmp eq i32 %rx_inv.058.i, 0
  %10 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i, !prof !43

if.then.i.i.i.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = tail call i32 %13(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %ioaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i.i.i.i, align 16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 2048
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !44
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i.i.i

sdhci_readl.exit.i.i.i:                           ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %if.then.i.i.i.i ], [ %17, %if.else.i.i.i.i ]
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %sdhci_readl.exit.i.i.i.gl9750_wt_on.exit.i.i_crit_edge

sdhci_readl.exit.i.i.i.gl9750_wt_on.exit.i.i_crit_edge: ; preds = %sdhci_readl.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_wt_on.exit.i.i

if.end.i.i.i:                                     ; preds = %sdhci_readl.exit.i.i.i
  %or.i.i.i = or i32 %retval.0.i.i.i.i, 1
  %18 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i.i.i, align 4
  %write_l.i.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_l.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_l.i.i.i.i, align 4
  %tobool.not.i36.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i36.i.i.i, label %do.body.i.i.i.i, label %if.then.i37.i.i.i, !prof !43

if.then.i37.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %21(ptr noundef %host, i32 noundef %or.i.i.i, i32 noundef 2048) #5
  br label %gl9750_wt_on.exit.i.i

do.body.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %23 = ptrtoint ptr %ioaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i.i.i.i, align 16
  %add.ptr.i39.i.i.i = getelementptr i8, ptr %24, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i.i, i32 %22) #5, !srcloc !47
  br label %gl9750_wt_on.exit.i.i

gl9750_wt_on.exit.i.i:                            ; preds = %do.body.i.i.i.i, %if.then.i37.i.i.i, %sdhci_readl.exit.i.i.i.gl9750_wt_on.exit.i.i_crit_edge
  %25 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !43

if.then.i.i.i:                                    ; preds = %gl9750_wt_on.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 %28(ptr noundef %host, i32 noundef 2168) #5
  br label %sdhci_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %gl9750_wt_on.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %ioaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 2168
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !44
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i.i

sdhci_readl.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %32, %if.else.i.i.i ]
  %and.i.i = and i32 %retval.0.i.i.i, -9
  %masksel.i.i = select i1 %tobool.not.i, i32 0, i32 8
  %misc_value.0.i.i = or i32 %and.i.i, %masksel.i.i
  %33 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i.i.i, align 4
  %write_l.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %write_l.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_l.i.i.i, align 4
  %tobool.not.i37.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i37.i.i, label %do.body.i.i.i, label %if.then.i38.i.i, !prof !43

if.then.i38.i.i:                                  ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %36(ptr noundef %host, i32 noundef %misc_value.0.i.i, i32 noundef 2168) #5
  br label %sdhci_writel.exit.i.i

do.body.i.i.i:                                    ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %misc_value.0.i.i) #5
  %38 = ptrtoint ptr %ioaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr.i.i.i.i, align 16
  %add.ptr.i40.i.i = getelementptr i8, ptr %39, i32 2168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i.i, i32 %37) #5, !srcloc !47
  br label %sdhci_writel.exit.i.i

sdhci_writel.exit.i.i:                            ; preds = %do.body.i.i.i, %if.then.i38.i.i
  %40 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i.i.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool.not.i.i43.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i43.i.i, label %if.else.i.i48.i.i, label %if.then.i.i45.i.i, !prof !43

if.then.i.i45.i.i:                                ; preds = %sdhci_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i44.i.i = tail call i32 %43(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i51.i.i

if.else.i.i48.i.i:                                ; preds = %sdhci_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %ioaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr.i.i.i.i, align 16
  %add.ptr.i.i47.i.i = getelementptr i8, ptr %45, i32 2048
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47.i.i) #5, !srcloc !44
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i51.i.i

sdhci_readl.exit.i51.i.i:                         ; preds = %if.else.i.i48.i.i, %if.then.i.i45.i.i
  %retval.0.i.i49.i.i = phi i32 [ %call.i.i44.i.i, %if.then.i.i45.i.i ], [ %47, %if.else.i.i48.i.i ]
  %and.i50.i.i = and i32 %retval.0.i.i49.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i50.i.i, 0
  br i1 %cmp.i.i.i, label %sdhci_readl.exit.i51.i.i.gli_set_9750_rx_inv.exit.i_crit_edge, label %if.end.i54.i.i

sdhci_readl.exit.i51.i.i.gli_set_9750_rx_inv.exit.i_crit_edge: ; preds = %sdhci_readl.exit.i51.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gli_set_9750_rx_inv.exit.i

if.end.i54.i.i:                                   ; preds = %sdhci_readl.exit.i51.i.i
  %and13.i.i.i = and i32 %retval.0.i.i49.i.i, -2
  %48 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i.i.i, align 4
  %write_l.i.i52.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %write_l.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_l.i.i52.i.i, align 4
  %tobool.not.i36.i53.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i36.i53.i.i, label %do.body.i.i58.i.i, label %if.then.i37.i55.i.i, !prof !43

if.then.i37.i55.i.i:                              ; preds = %if.end.i54.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %51(ptr noundef %host, i32 noundef %and13.i.i.i, i32 noundef 2048) #5
  br label %gli_set_9750_rx_inv.exit.i

do.body.i.i58.i.i:                                ; preds = %if.end.i54.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %52 = tail call i32 @llvm.bswap.i32(i32 %and13.i.i.i) #5
  %53 = ptrtoint ptr %ioaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr.i.i.i.i, align 16
  %add.ptr.i39.i57.i.i = getelementptr i8, ptr %54, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i57.i.i, i32 %52) #5, !srcloc !47
  br label %gli_set_9750_rx_inv.exit.i

gli_set_9750_rx_inv.exit.i:                       ; preds = %do.body.i.i58.i.i, %if.then.i37.i55.i.i, %sdhci_readl.exit.i51.i.i.gli_set_9750_rx_inv.exit.i_crit_edge
  tail call void @sdhci_start_tuning(ptr noundef %host) #5
  br label %for.body4.i

for.cond2.i:                                      ; preds = %sdhci_readw.exit.i
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %for.cond2.i.for.inc14.i_crit_edge, label %for.cond2.i.for.body4.i_crit_edge

for.cond2.i.for.body4.i_crit_edge:                ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4.i

for.cond2.i.for.inc14.i_crit_edge:                ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc14.i

for.body4.i:                                      ; preds = %for.cond2.i.for.body4.i_crit_edge, %gli_set_9750_rx_inv.exit.i
  %i.057.i = phi i32 [ 0, %gli_set_9750_rx_inv.exit.i ], [ %inc.i, %for.cond2.i.for.body4.i_crit_edge ]
  tail call void @sdhci_send_tuning(ptr noundef %host, i32 noundef %opcode) #5
  %55 = ptrtoint ptr %tuning_done.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tuning_done.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool5.not.i = icmp eq i32 %56, 0
  br i1 %tobool5.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sdhci_abort_tuning(ptr noundef %host, i32 noundef %opcode) #5
  br label %for.inc14.i

if.end.i:                                         ; preds = %for.body4.i
  %57 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i.i.i.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call zeroext i16 %60(ptr noundef %host, i32 noundef 62) #5
  br label %sdhci_readw.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %ioaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr.i.i.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 62
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #5, !srcloc !54
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %call.i.i, %if.then.i.i ], [ %64, %if.else.i.i ]
  %conv.i = zext i16 %retval.0.i.i to i32
  %and.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %for.cond2.i

if.then7.i:                                       ; preds = %sdhci_readw.exit.i
  %and9.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then7.i.for.inc14.i_crit_edge, label %if.then7.i.__sdhci_execute_tuning_9750.exit_crit_edge

if.then7.i.__sdhci_execute_tuning_9750.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__sdhci_execute_tuning_9750.exit

if.then7.i.for.inc14.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %if.then7.i.for.inc14.i_crit_edge, %if.then.i, %for.cond2.i.for.inc14.i_crit_edge
  %inc15.i = add nuw nsw i32 %rx_inv.058.i, 1
  %exitcond60.not.i = icmp eq i32 %inc15.i, 2
  br i1 %exitcond60.not.i, label %for.end16.i, label %for.inc14.i.for.body.i_crit_edge

for.inc14.i.for.body.i_crit_edge:                 ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end16.i:                                      ; preds = %for.inc14.i
  %65 = ptrtoint ptr %tuning_done.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tuning_done.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool18.not.i = icmp eq i32 %66, 0
  %67 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmc, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 1, i32 3
  %69 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i47.i = icmp eq ptr %70, null
  br i1 %tobool18.not.i, label %do.end.i, label %do.end25.i

do.end.i:                                         ; preds = %for.end16.i
  br i1 %tobool.not.i47.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i48.i = phi ptr [ %72, %if.end.i.i ], [ %70, %do.end.i.dev_name.exit.i_crit_edge ]
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i48.i) #8
  br label %__sdhci_execute_tuning_9750.exit

do.end25.i:                                       ; preds = %for.end16.i
  br i1 %tobool.not.i47.i, label %if.end.i51.i, label %do.end25.i.dev_name.exit53.i_crit_edge

do.end25.i.dev_name.exit53.i_crit_edge:           ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit53.i

if.end.i51.i:                                     ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev28.i = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %class_dev28.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %class_dev28.i, align 4
  br label %dev_name.exit53.i

dev_name.exit53.i:                                ; preds = %if.end.i51.i, %do.end25.i.dev_name.exit53.i_crit_edge
  %retval.0.i52.i = phi ptr [ %74, %if.end.i51.i ], [ %70, %do.end25.i.dev_name.exit53.i_crit_edge ]
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i52.i) #8
  tail call void @sdhci_reset_tuning(ptr noundef %host) #5
  br label %__sdhci_execute_tuning_9750.exit

__sdhci_execute_tuning_9750.exit:                 ; preds = %dev_name.exit53.i, %dev_name.exit.i, %if.then7.i.__sdhci_execute_tuning_9750.exit_crit_edge
  %retval.4.i = phi i32 [ -11, %dev_name.exit53.i ], [ -110, %dev_name.exit.i ], [ 0, %if.then7.i.__sdhci_execute_tuning_9750.exit_crit_edge ]
  %tuning_err = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 74
  %75 = ptrtoint ptr %tuning_err to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.4.i, ptr %tuning_err, align 4
  tail call void @sdhci_end_tuning(ptr noundef %host) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gli_set_9750(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %3(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %7, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %sdhci_readl.exit.i.gl9750_wt_on.exit_crit_edge

sdhci_readl.exit.i.gl9750_wt_on.exit_crit_edge:   ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_wt_on.exit

if.end.i:                                         ; preds = %sdhci_readl.exit.i
  %or.i = or i32 %retval.0.i.i, 1
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i36.i = icmp eq ptr %11, null
  br i1 %tobool.not.i36.i, label %do.body.i.i, label %if.then.i37.i, !prof !43

if.then.i37.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %host, i32 noundef %or.i, i32 noundef 2048) #5
  br label %gl9750_wt_on.exit

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %ioaddr.i38.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i38.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i38.i, align 16
  %add.ptr.i39.i = getelementptr i8, ptr %14, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %12) #5, !srcloc !47
  br label %gl9750_wt_on.exit

gl9750_wt_on.exit:                                ; preds = %do.body.i.i, %if.then.i37.i, %sdhci_readl.exit.i.gl9750_wt_on.exit_crit_edge
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %gl9750_wt_on.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %18(ptr noundef %host, i32 noundef 2144) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %gl9750_wt_on.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %20, i32 2144
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %22, %if.else.i ]
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool.not.i294 = icmp eq ptr %26, null
  br i1 %tobool.not.i294, label %if.else.i299, label %if.then.i296, !prof !43

if.then.i296:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i295 = tail call i32 %26(ptr noundef %host, i32 noundef 2148) #5
  br label %sdhci_readl.exit301

if.else.i299:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i297 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %27 = ptrtoint ptr %ioaddr.i297 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i297, align 16
  %add.ptr.i298 = getelementptr i8, ptr %28, i32 2148
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i298) #5, !srcloc !44
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit301

sdhci_readl.exit301:                              ; preds = %if.else.i299, %if.then.i296
  %retval.0.i300 = phi i32 [ %call.i295, %if.then.i296 ], [ %30, %if.else.i299 ]
  %31 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool.not.i303 = icmp eq ptr %34, null
  br i1 %tobool.not.i303, label %if.else.i308, label %if.then.i305, !prof !43

if.then.i305:                                     ; preds = %sdhci_readl.exit301
  call void @__sanitizer_cov_trace_pc() #7
  %call.i304 = tail call i32 %34(ptr noundef %host, i32 noundef 2164) #5
  br label %sdhci_readl.exit310

if.else.i308:                                     ; preds = %sdhci_readl.exit301
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i306 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %35 = ptrtoint ptr %ioaddr.i306 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i306, align 16
  %add.ptr.i307 = getelementptr i8, ptr %36, i32 2164
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307) #5, !srcloc !44
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit310

sdhci_readl.exit310:                              ; preds = %if.else.i308, %if.then.i305
  %retval.0.i309 = phi i32 [ %call.i304, %if.then.i305 ], [ %38, %if.else.i308 ]
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool.not.i312 = icmp eq ptr %42, null
  br i1 %tobool.not.i312, label %if.else.i317, label %if.then.i314, !prof !43

if.then.i314:                                     ; preds = %sdhci_readl.exit310
  call void @__sanitizer_cov_trace_pc() #7
  %call.i313 = tail call i32 %42(ptr noundef %host, i32 noundef 2168) #5
  br label %sdhci_readl.exit319

if.else.i317:                                     ; preds = %sdhci_readl.exit310
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i315 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %43 = ptrtoint ptr %ioaddr.i315 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i315, align 16
  %add.ptr.i316 = getelementptr i8, ptr %44, i32 2168
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i316) #5, !srcloc !44
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit319

sdhci_readl.exit319:                              ; preds = %if.else.i317, %if.then.i314
  %retval.0.i318 = phi i32 [ %call.i313, %if.then.i314 ], [ %46, %if.else.i317 ]
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool.not.i321 = icmp eq ptr %50, null
  br i1 %tobool.not.i321, label %if.else.i326, label %if.then.i323, !prof !43

if.then.i323:                                     ; preds = %sdhci_readl.exit319
  call void @__sanitizer_cov_trace_pc() #7
  %call.i322 = tail call i32 %50(ptr noundef %host, i32 noundef 1348) #5
  br label %sdhci_readl.exit328

if.else.i326:                                     ; preds = %sdhci_readl.exit319
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i324 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %51 = ptrtoint ptr %ioaddr.i324 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr.i324, align 16
  %add.ptr.i325 = getelementptr i8, ptr %52, i32 1348
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i325) #5, !srcloc !44
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit328

sdhci_readl.exit328:                              ; preds = %if.else.i326, %if.then.i323
  %retval.0.i327 = phi i32 [ %call.i322, %if.then.i323 ], [ %54, %if.else.i326 ]
  %55 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %tobool.not.i330 = icmp eq ptr %58, null
  br i1 %tobool.not.i330, label %if.else.i335, label %if.then.i332, !prof !43

if.then.i332:                                     ; preds = %sdhci_readl.exit328
  call void @__sanitizer_cov_trace_pc() #7
  %call.i331 = tail call i32 %58(ptr noundef %host, i32 noundef 1344) #5
  br label %sdhci_readl.exit337

if.else.i335:                                     ; preds = %sdhci_readl.exit328
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i333 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %59 = ptrtoint ptr %ioaddr.i333 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr.i333, align 16
  %add.ptr.i334 = getelementptr i8, ptr %60, i32 1344
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334) #5, !srcloc !44
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit337

sdhci_readl.exit337:                              ; preds = %if.else.i335, %if.then.i332
  %retval.0.i336 = phi i32 [ %call.i331, %if.then.i332 ], [ %62, %if.else.i335 ]
  %or35 = and i32 %retval.0.i, 16773120
  %or37 = or i32 %or35, -1946152961
  %63 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i339 = icmp eq ptr %66, null
  br i1 %tobool.not.i339, label %do.body.i, label %if.then.i340, !prof !43

if.then.i340:                                     ; preds = %sdhci_readl.exit337
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %66(ptr noundef %host, i32 noundef %or37, i32 noundef 2144) #5
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit337
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %67 = tail call i32 @llvm.bswap.i32(i32 %or37) #5
  %ioaddr.i341 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %68 = ptrtoint ptr %ioaddr.i341 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr.i341, align 16
  %add.ptr.i342 = getelementptr i8, ptr %69, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i342, i32 %67) #5, !srcloc !47
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i340
  %or55 = or i32 %retval.0.i309, 192
  %70 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i.i, align 4
  %write_l.i345 = getelementptr inbounds %struct.sdhci_ops, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %write_l.i345 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_l.i345, align 4
  %tobool.not.i346 = icmp eq ptr %73, null
  br i1 %tobool.not.i346, label %do.body.i350, label %if.then.i347, !prof !43

if.then.i347:                                     ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %73(ptr noundef %host, i32 noundef %or55, i32 noundef 2164) #5
  br label %sdhci_writel.exit352

do.body.i350:                                     ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %74 = tail call i32 @llvm.bswap.i32(i32 %or55) #5
  %ioaddr.i348 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %75 = ptrtoint ptr %ioaddr.i348 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ioaddr.i348, align 16
  %add.ptr.i349 = getelementptr i8, ptr %76, i32 2164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i349, i32 %74) #5, !srcloc !47
  br label %sdhci_writel.exit352

sdhci_writel.exit352:                             ; preds = %do.body.i350, %if.then.i347
  %and57 = and i32 %retval.0.i300, -15728641
  %or74 = or i32 %and57, 8388608
  %and94 = and i32 %retval.0.i318, -125
  %or145 = or i32 %and94, 80
  %and146 = and i32 %retval.0.i327, -8
  %or163 = or i32 %and146, 1
  %and165 = and i32 %retval.0.i336, -1638417
  %or199 = or i32 %and165, 1114112
  %77 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i.i, align 4
  %write_l.i354 = getelementptr inbounds %struct.sdhci_ops, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %write_l.i354 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_l.i354, align 4
  %tobool.not.i355 = icmp eq ptr %80, null
  br i1 %tobool.not.i355, label %do.body.i359, label %if.then.i356, !prof !43

if.then.i356:                                     ; preds = %sdhci_writel.exit352
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %80(ptr noundef %host, i32 noundef %or74, i32 noundef 2148) #5
  br label %sdhci_writel.exit361

do.body.i359:                                     ; preds = %sdhci_writel.exit352
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %81 = tail call i32 @llvm.bswap.i32(i32 %or74) #5
  %ioaddr.i357 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %82 = ptrtoint ptr %ioaddr.i357 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr.i357, align 16
  %add.ptr.i358 = getelementptr i8, ptr %83, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358, i32 %81) #5, !srcloc !47
  br label %sdhci_writel.exit361

sdhci_writel.exit361:                             ; preds = %do.body.i359, %if.then.i356
  %84 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i, align 4
  %write_l.i363 = getelementptr inbounds %struct.sdhci_ops, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %write_l.i363 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_l.i363, align 4
  %tobool.not.i364 = icmp eq ptr %87, null
  br i1 %tobool.not.i364, label %do.body.i368, label %if.then.i365, !prof !43

if.then.i365:                                     ; preds = %sdhci_writel.exit361
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %87(ptr noundef %host, i32 noundef %or145, i32 noundef 2168) #5
  br label %sdhci_writel.exit370

do.body.i368:                                     ; preds = %sdhci_writel.exit361
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %88 = tail call i32 @llvm.bswap.i32(i32 %or145) #5
  %ioaddr.i366 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %89 = ptrtoint ptr %ioaddr.i366 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioaddr.i366, align 16
  %add.ptr.i367 = getelementptr i8, ptr %90, i32 2168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i367, i32 %88) #5, !srcloc !47
  br label %sdhci_writel.exit370

sdhci_writel.exit370:                             ; preds = %do.body.i368, %if.then.i365
  %91 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops.i.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i372 = icmp eq ptr %94, null
  br i1 %tobool.not.i372, label %if.else.i377, label %if.then.i374, !prof !43

if.then.i374:                                     ; preds = %sdhci_writel.exit370
  call void @__sanitizer_cov_trace_pc() #7
  %call.i373 = tail call zeroext i16 %94(ptr noundef %host, i32 noundef 62) #5
  br label %sdhci_readw.exit

if.else.i377:                                     ; preds = %sdhci_writel.exit370
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i375 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %95 = ptrtoint ptr %ioaddr.i375 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ioaddr.i375, align 16
  %add.ptr.i376 = getelementptr i8, ptr %96, i32 62
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i376) #5, !srcloc !54
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i377, %if.then.i374
  %retval.0.i378 = phi i16 [ %call.i373, %if.then.i374 ], [ %98, %if.else.i377 ]
  %99 = and i16 %retval.0.i378, -129
  %100 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i380 = icmp eq ptr %103, null
  br i1 %tobool.not.i380, label %do.body.i384, label %if.then.i381, !prof !43

if.then.i381:                                     ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %103(ptr noundef %host, i16 noundef zeroext %99, i32 noundef 62) #5
  br label %sdhci_writew.exit

do.body.i384:                                     ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %104 = tail call i16 @llvm.bswap.i16(i16 %99) #5
  %ioaddr.i382 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %105 = ptrtoint ptr %ioaddr.i382 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ioaddr.i382, align 16
  %add.ptr.i383 = getelementptr i8, ptr %106, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i383, i16 %104) #5, !srcloc !51
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i384, %if.then.i381
  %or220 = or i32 %and165, 1114128
  %107 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i.i, align 4
  %write_l.i387 = getelementptr inbounds %struct.sdhci_ops, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %write_l.i387 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_l.i387, align 4
  %tobool.not.i388 = icmp eq ptr %110, null
  br i1 %tobool.not.i388, label %do.body.i392, label %if.then.i389, !prof !43

if.then.i389:                                     ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %110(ptr noundef %host, i32 noundef %or220, i32 noundef 1344) #5
  br label %sdhci_writel.exit394

do.body.i392:                                     ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %111 = tail call i32 @llvm.bswap.i32(i32 %or220) #5
  %ioaddr.i390 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %112 = ptrtoint ptr %ioaddr.i390 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ioaddr.i390, align 16
  %add.ptr.i391 = getelementptr i8, ptr %113, i32 1344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391, i32 %111) #5, !srcloc !47
  br label %sdhci_writel.exit394

sdhci_writel.exit394:                             ; preds = %do.body.i392, %if.then.i389
  %114 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i.i, align 4
  %write_l.i396 = getelementptr inbounds %struct.sdhci_ops, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %write_l.i396 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write_l.i396, align 4
  %tobool.not.i397 = icmp eq ptr %117, null
  br i1 %tobool.not.i397, label %do.body.i401, label %if.then.i398, !prof !43

if.then.i398:                                     ; preds = %sdhci_writel.exit394
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %117(ptr noundef %host, i32 noundef %or163, i32 noundef 1348) #5
  br label %sdhci_writel.exit403

do.body.i401:                                     ; preds = %sdhci_writel.exit394
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %118 = tail call i32 @llvm.bswap.i32(i32 %or163) #5
  %ioaddr.i399 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %119 = ptrtoint ptr %ioaddr.i399 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ioaddr.i399, align 16
  %add.ptr.i400 = getelementptr i8, ptr %120, i32 1348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i400, i32 %118) #5, !srcloc !47
  br label %sdhci_writel.exit403

sdhci_writel.exit403:                             ; preds = %do.body.i401, %if.then.i398
  %121 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i.i, align 4
  %write_l.i405 = getelementptr inbounds %struct.sdhci_ops, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %write_l.i405 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write_l.i405, align 4
  %tobool.not.i406 = icmp eq ptr %124, null
  br i1 %tobool.not.i406, label %do.body.i410, label %if.then.i407, !prof !43

if.then.i407:                                     ; preds = %sdhci_writel.exit403
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %124(ptr noundef %host, i32 noundef %or199, i32 noundef 1344) #5
  br label %sdhci_writel.exit412

do.body.i410:                                     ; preds = %sdhci_writel.exit403
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %125 = tail call i32 @llvm.bswap.i32(i32 %or199) #5
  %ioaddr.i408 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %126 = ptrtoint ptr %ioaddr.i408 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ioaddr.i408, align 16
  %add.ptr.i409 = getelementptr i8, ptr %127, i32 1344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i409, i32 %125) #5, !srcloc !47
  br label %sdhci_writel.exit412

sdhci_writel.exit412:                             ; preds = %do.body.i410, %if.then.i407
  %128 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i.i, align 4
  %read_w.i414 = getelementptr inbounds %struct.sdhci_ops, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %read_w.i414 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read_w.i414, align 4
  %tobool.not.i415 = icmp eq ptr %131, null
  br i1 %tobool.not.i415, label %if.else.i420, label %if.then.i417, !prof !43

if.then.i417:                                     ; preds = %sdhci_writel.exit412
  call void @__sanitizer_cov_trace_pc() #7
  %call.i416 = tail call zeroext i16 %131(ptr noundef %host, i32 noundef 62) #5
  br label %sdhci_readw.exit422

if.else.i420:                                     ; preds = %sdhci_writel.exit412
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i418 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %132 = ptrtoint ptr %ioaddr.i418 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ioaddr.i418, align 16
  %add.ptr.i419 = getelementptr i8, ptr %133, i32 62
  %134 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i419) #5, !srcloc !54
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  br label %sdhci_readw.exit422

sdhci_readw.exit422:                              ; preds = %if.else.i420, %if.then.i417
  %retval.0.i421 = phi i16 [ %call.i416, %if.then.i417 ], [ %135, %if.else.i420 ]
  %136 = and i16 %retval.0.i421, -129
  %137 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i.i, align 4
  %write_w.i424 = getelementptr inbounds %struct.sdhci_ops, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %write_w.i424 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write_w.i424, align 4
  %tobool.not.i425 = icmp eq ptr %140, null
  br i1 %tobool.not.i425, label %do.body.i429, label %if.then.i426, !prof !43

if.then.i426:                                     ; preds = %sdhci_readw.exit422
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %140(ptr noundef %host, i16 noundef zeroext %136, i32 noundef 62) #5
  br label %sdhci_writew.exit431

do.body.i429:                                     ; preds = %sdhci_readw.exit422
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %141 = tail call i16 @llvm.bswap.i16(i16 %136) #5
  %ioaddr.i427 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %142 = ptrtoint ptr %ioaddr.i427 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ioaddr.i427, align 16
  %add.ptr.i428 = getelementptr i8, ptr %143, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i428, i16 %141) #5, !srcloc !51
  br label %sdhci_writew.exit431

sdhci_writew.exit431:                             ; preds = %do.body.i429, %if.then.i426
  %144 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %tobool.not.i.i433 = icmp eq ptr %147, null
  br i1 %tobool.not.i.i433, label %if.else.i.i438, label %if.then.i.i435, !prof !43

if.then.i.i435:                                   ; preds = %sdhci_writew.exit431
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i434 = tail call i32 %147(ptr noundef %host, i32 noundef 2048) #5
  br label %sdhci_readl.exit.i441

if.else.i.i438:                                   ; preds = %sdhci_writew.exit431
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i436 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %148 = ptrtoint ptr %ioaddr.i.i436 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ioaddr.i.i436, align 16
  %add.ptr.i.i437 = getelementptr i8, ptr %149, i32 2048
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i437) #5, !srcloc !44
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit.i441

sdhci_readl.exit.i441:                            ; preds = %if.else.i.i438, %if.then.i.i435
  %retval.0.i.i439 = phi i32 [ %call.i.i434, %if.then.i.i435 ], [ %151, %if.else.i.i438 ]
  %and.i440 = and i32 %retval.0.i.i439, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i440)
  %cmp.i = icmp eq i32 %and.i440, 0
  br i1 %cmp.i, label %sdhci_readl.exit.i441.gl9750_wt_off.exit_crit_edge, label %if.end.i444

sdhci_readl.exit.i441.gl9750_wt_off.exit_crit_edge: ; preds = %sdhci_readl.exit.i441
  call void @__sanitizer_cov_trace_pc() #7
  br label %gl9750_wt_off.exit

if.end.i444:                                      ; preds = %sdhci_readl.exit.i441
  %and13.i = and i32 %retval.0.i.i439, -2
  %152 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i442 = getelementptr inbounds %struct.sdhci_ops, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %write_l.i.i442 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write_l.i.i442, align 4
  %tobool.not.i36.i443 = icmp eq ptr %155, null
  br i1 %tobool.not.i36.i443, label %do.body.i.i448, label %if.then.i37.i445, !prof !43

if.then.i37.i445:                                 ; preds = %if.end.i444
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %155(ptr noundef %host, i32 noundef %and13.i, i32 noundef 2048) #5
  br label %gl9750_wt_off.exit

do.body.i.i448:                                   ; preds = %if.end.i444
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %156 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #5
  %ioaddr.i38.i446 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %157 = ptrtoint ptr %ioaddr.i38.i446 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ioaddr.i38.i446, align 16
  %add.ptr.i39.i447 = getelementptr i8, ptr %158, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i447, i32 %156) #5, !srcloc !47
  br label %gl9750_wt_off.exit

gl9750_wt_off.exit:                               ; preds = %do.body.i.i448, %if.then.i37.i445, %sdhci_readl.exit.i441.gl9750_wt_off.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_end_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_start_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_send_tuning(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_abort_tuning(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gl9763e_hs400_enhanced_strobe(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %3(ptr noundef %private.i, i32 noundef 1324) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 1324
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %8 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enhanced_strobe, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %and = and i32 %retval.0.i, -257
  %masksel = select i1 %tobool.not, i32 0, i32 256
  %val.0 = or i32 %masksel, %and
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i6 = icmp eq ptr %13, null
  br i1 %tobool.not.i6, label %do.body.i, label %if.then.i7, !prof !43

if.then.i7:                                       ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %private.i, i32 noundef %val.0, i32 noundef 1324) #5
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0) #5
  %ioaddr.i8 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %ioaddr.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i8, align 16
  %add.ptr.i9 = getelementptr i8, ptr %16, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %14) #5, !srcloc !47
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_gl9763e_dumpregs(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void @sdhci_dumpregs(ptr noundef %private.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_gl9763e_cqe_enable(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void %3(ptr noundef %private.i, i16 noundef zeroext 35, i32 noundef 12) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 8960) #5, !srcloc !51
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i
  tail call void @sdhci_cqe_enable(ptr noundef %mmc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_gl9763e_cqe_pre_enable(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 8) #5
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %or = or i32 %retval.0.i, 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i3 = icmp eq ptr %13, null
  br i1 %tobool.not.i3, label %if.else.i7, label %if.then.i4, !prof !43

if.then.i4:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %1, i32 noundef %or, i32 noundef 8) #5
  br label %cqhci_writel.exit

if.else.i7:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %mmio.i5 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mmio.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %14) #5, !srcloc !47
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i7, %if.then.i4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_gl9763e_cqe_post_disable(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 8) #5
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %and = and i32 %retval.0.i, -2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i5 = icmp eq ptr %13, null
  br i1 %tobool.not.i5, label %if.else.i9, label %if.then.i6, !prof !43

if.then.i6:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %1, i32 noundef %and, i32 noundef 8) #5
  br label %cqhci_writel.exit

if.else.i9:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %mmio.i7 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mmio.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %14) #5, !srcloc !47
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i9, %if.then.i6
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i10 = icmp eq ptr %20, null
  br i1 %tobool.not.i10, label %do.body.i, label %if.then.i11, !prof !43

if.then.i11:                                      ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %20(ptr noundef %private.i, i16 noundef zeroext 0, i32 noundef 12) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i12 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12, i16 0) #5, !srcloc !51
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_gl9763e_cqhci_irq(ptr noundef %host, i32 noundef %intmask) #0 align 64 {
entry:
  %cmd_error = alloca i32, align 4
  %data_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_error) #5
  %0 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_error) #5
  %1 = ptrtoint ptr %data_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_error, align 4
  %call = call zeroext i1 @sdhci_cqe_irq(ptr noundef %host, i32 noundef %intmask, ptr noundef nonnull %cmd_error, ptr noundef nonnull %data_error) #5
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %4 = ptrtoint ptr %cmd_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_error, align 4
  %6 = ptrtoint ptr %data_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_error, align 4
  %call1 = call i32 @cqhci_irq(ptr noundef %3, i32 noundef %intmask, i32 noundef %5, i32 noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %intmask, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_error) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_error) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_gl9763e_reset(ptr noundef %host, i8 noundef zeroext %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps2, align 4
  %and = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = and i8 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 63
  %5 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cqe_private, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @cqhci_deactivate(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_set_gl9763e_signaling(ptr noundef %host, i32 noundef %timing) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 62) #5
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 62
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !54
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %8 = and i16 %retval.0.i, -8
  %9 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %timing, label %sdhci_readw.exit.if.end27_crit_edge [
    i32 9, label %if.then
    i32 1, label %if.then7
    i32 8, label %if.then14
    i32 10, label %if.then21
  ]

sdhci_readw.exit.if.end27_crit_edge:              ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = or i16 %8, 3
  br label %if.end27

if.then7:                                         ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = or i16 %8, 1
  br label %if.end27

if.then14:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = or i16 %8, 4
  br label %if.end27

if.then21:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = or i16 %retval.0.i, 7
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.then14, %if.then7, %if.then, %sdhci_readw.exit.if.end27_crit_edge
  %ctrl_2.0 = phi i16 [ %10, %if.then ], [ %11, %if.then7 ], [ %12, %if.then14 ], [ %13, %if.then21 ], [ %8, %sdhci_readw.exit.if.end27_crit_edge ]
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i38 = icmp eq ptr %17, null
  br i1 %tobool.not.i38, label %do.body.i, label %if.then.i39, !prof !43

if.then.i39:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %17(ptr noundef %host, i16 noundef zeroext %ctrl_2.0, i32 noundef 62) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %18 = tail call i16 @llvm.bswap.i16(i16 %ctrl_2.0) #5
  %ioaddr.i40 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %19 = ptrtoint ptr %ioaddr.i40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i40, align 16
  %add.ptr.i41 = getelementptr i8, ptr %20, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i41, i16 %18) #5, !srcloc !51
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @sdhci_gl9755, !1, !"sdhci_gl9755", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 935, i32 30}
!2 = !{ptr @sdhci_gl9750, !3, !"sdhci_gl9750", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 958, i32 30}
!4 = !{ptr @sdhci_gl9763e, !5, !"sdhci_gl9763e", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 978, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 580, i32 47}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 582, i32 47}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 445, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gli_pcie_enable_msi._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @gli_pcie_enable_msi._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @sdhci_gl9755_ops, !17, !"sdhci_gl9755_ops", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 924, i32 31}
!18 = !{ptr @sdhci_gl9750_ops, !19, !"sdhci_gl9750_ops", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 945, i32 31}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 319, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__sdhci_execute_tuning_9750._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @__sdhci_execute_tuning_9750._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 324, i32 2}
!27 = !{ptr @__sdhci_execute_tuning_9750._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @__sdhci_execute_tuning_9750._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sdhci_gl9763e_cqhci_ops, !30, !"sdhci_gl9763e_cqhci_ops", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 785, i32 36}
!31 = !{ptr @sdhci_gl9763e_ops, !32, !"sdhci_gl9763e_ops", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/sdhci-pci-gli.c", i32 968, i32 31}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 5033877}
!45 = !{i64 2155075217}
!46 = !{i64 2155073247}
!47 = !{i64 5033459}
!48 = !{i64 2156312717}
!49 = !{i64 2156313259}
!50 = !{i64 2155073853}
!51 = !{i64 5032839}
!52 = !{i64 2156143546}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 5033039}
!55 = !{i64 2155075921}
!56 = !{i8 0, i8 2}
