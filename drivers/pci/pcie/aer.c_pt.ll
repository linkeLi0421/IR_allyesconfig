; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/aer.c_pt.bc'
source_filename = "../drivers/pci/pcie/aer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_enable_pcie_error_reporting\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_enable_pcie_error_reporting\09\09\09\09"
module asm "\09.long\09__crc_pci_enable_pcie_error_reporting\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_pcie_error_reporting:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_pcie_error_reporting\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_pcie_error_reporting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_disable_pcie_error_reporting\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_disable_pcie_error_reporting\09\09\09\09"
module asm "\09.long\09__crc_pci_disable_pcie_error_reporting\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_pcie_error_reporting:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_pcie_error_reporting\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_pcie_error_reporting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_aer_clear_nonfatal_status\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_aer_clear_nonfatal_status\09\09\09\09"
module asm "\09.long\09__crc_pci_aer_clear_nonfatal_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_aer_clear_nonfatal_status:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_aer_clear_nonfatal_status\22\09\09\09\09\09"
module asm "__kstrtabns_pci_aer_clear_nonfatal_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcie_port_service_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.pci_cap_saved_state = type { %struct.hlist_node, %struct.pci_cap_saved_data }
%struct.pci_cap_saved_data = type { i16, i8, i32, [0 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.aer_err_info = type { [5 x ptr], i32, i32, i32, i32, %struct.aer_header_log_regs }
%struct.aer_header_log_regs = type { i32, i32, i32, i32 }
%struct.aer_stats = type { [16 x i64], [27 x i64], [27 x i64], i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }
%struct.aer_rpc = type { ptr, %struct.anon.72 }
%struct.anon.72 = type { %union.anon.73, [128 x %struct.aer_err_source] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.aer_err_source = type { i32, i32 }

@pcie_aer_disable = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ecrc_policy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ecrc_policy_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17], [20 x i8] zeroinitializer }, align 32
@pcie_ports_native = external dso_local local_unnamed_addr global i8, align 1
@__kstrtab_pci_enable_pcie_error_reporting = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_pcie_error_reporting = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_pcie_error_reporting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_pcie_error_reporting to i32), ptr @__kstrtab_pci_enable_pcie_error_reporting, ptr @__kstrtabns_pci_enable_pcie_error_reporting }, section "___ksymtab_gpl+pci_enable_pcie_error_reporting", align 4
@__kstrtab_pci_disable_pcie_error_reporting = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_pcie_error_reporting = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_pcie_error_reporting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_pcie_error_reporting to i32), ptr @__kstrtab_pci_disable_pcie_error_reporting, ptr @__kstrtabns_pci_disable_pcie_error_reporting }, section "___ksymtab_gpl+pci_disable_pcie_error_reporting", align 4
@__kstrtab_pci_aer_clear_nonfatal_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_aer_clear_nonfatal_status = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_aer_clear_nonfatal_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_aer_clear_nonfatal_status to i32), ptr @__kstrtab_pci_aer_clear_nonfatal_status, ptr @__kstrtabns_pci_aer_clear_nonfatal_status }, section "___ksymtab_gpl+pci_aer_clear_nonfatal_status", align 4
@aer_stats_attrs = internal global [7 x ptr] [ptr @dev_attr_aer_dev_correctable, ptr @dev_attr_aer_dev_fatal, ptr @dev_attr_aer_dev_nonfatal, ptr @dev_attr_aer_rootport_total_err_cor, ptr @dev_attr_aer_rootport_total_err_fatal, ptr @dev_attr_aer_rootport_total_err_nonfatal, ptr null], section ".data..ro_after_init", align 4
@aer_stats_attr_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @aer_stats_attrs_are_visible, ptr null, ptr @aer_stats_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@aer_print_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 707, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"AER: PCIe Bus Error: severity=%s, type=Inaccessible, (Unregistered Agent ID)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aer_print_error\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pci/pcie/aer.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aer_print_error._entry_ptr = internal global ptr @aer_print_error._entry, section ".printk_index", align 4
@aer_error_severity_string = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62], [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aer_print_error._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 718, ptr null, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PCIe Bus Error: severity=%s, type=%s, (%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@aer_print_error._entry_ptr.8 = internal global ptr @aer_print_error._entry.6, section ".printk_index", align 4
@aer_error_layer = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65], [20 x i8] zeroinitializer }, align 32
@aer_agent_string = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], [16 x i8] zeroinitializer }, align 32
@aer_print_error._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 721, ptr null, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"  device [%04x:%04x] error status/mask=%08x/%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@aer_print_error._entry_ptr.11 = internal global ptr @aer_print_error._entry.9, section ".printk_index", align 4
@aer_print_error._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 730, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"AER:   Error of this Agent is reported first\0A\00", [50 x i8] zeroinitializer }, align 32
@aer_print_error._entry_ptr.14 = internal global ptr @aer_print_error._entry.12, section ".printk_index", align 4
@aerdriver = internal global { %struct.pcie_port_service_driver, [40 x i8] } { %struct.pcie_port_service_driver { ptr @.str.80, ptr @aer_probe, ptr @aer_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i32 2, %struct.device_driver zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bios\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dev_attr_aer_rootport_total_err_cor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aer_rootport_total_err_cor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_aer_rootport_total_err_fatal = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aer_rootport_total_err_fatal_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_aer_rootport_total_err_nonfatal = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aer_rootport_total_err_nonfatal_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aer_rootport_total_err_cor\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aer_rootport_total_err_fatal\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aer_rootport_total_err_nonfatal\00", [32 x i8] zeroinitializer }, align 32
@dev_attr_aer_dev_correctable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aer_dev_correctable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_aer_dev_fatal = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aer_dev_fatal_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_aer_dev_nonfatal = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aer_dev_nonfatal_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aer_dev_correctable\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %llu\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev_cor_errs_bit[%d] %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TOTAL_%s %llu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ERR_COR\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RxErr\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BadTLP\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BadDLLP\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Rollover\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NonFatalErr\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CorrIntErr\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HeaderOF\00", [23 x i8] zeroinitializer }, align 32
@aer_correctable_error_string = internal constant { <{ [16 x ptr], [16 x ptr] }>, [32 x i8] } { <{ [16 x ptr], [16 x ptr] }> <{ [16 x ptr] [ptr @.str.27, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr null, ptr null, ptr null, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [16 x ptr] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aer_dev_fatal\00", [18 x i8] zeroinitializer }, align 32
@aer_uncorrectable_error_string = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.39, ptr null, ptr null, ptr null, ptr @.str.40, ptr @.str.41, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr null, ptr null, ptr null, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dev_fatal_errs_bit[%d] %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ERR_FATAL\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DLP\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDES\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TLP\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCP\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CmpltTO\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CmpltAbrt\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UnxCmplt\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RxOF\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MalfTLP\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ECRC\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UnsupReq\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ACSViol\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UncorrIntErr\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BlockedTLP\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AtomicOpBlocked\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TLPBlockedErr\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PoisonTLPBlocked\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aer_dev_nonfatal\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dev_nonfatal_errs_bit[%d] %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ERR_NONFATAL\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Uncorrected (Non-Fatal)\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Uncorrected (Fatal)\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Corrected\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Physical Layer\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Data Link Layer\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Transaction Layer\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Receiver ID\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Requester ID\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Completer ID\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Transmitter ID\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown Error Bit\00", [46 x i8] zeroinitializer }, align 32
@__aer_print_error._entry = internal constant %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 694, ptr null, ptr @.str.4 }, align 1
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"   [%2d] %-22s%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__aer_print_error\00", [46 x i8] zeroinitializer }, align 32
@__aer_print_error._entry_ptr = internal global ptr @__aer_print_error._entry, section ".printk_index", align 4
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (First)\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__print_tlp_header._entry = internal constant %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 669, ptr @.str.3, ptr @.str.4 }, align 1
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AER:   TLP Header: %08x %08x %08x %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__print_tlp_header\00", [45 x i8] zeroinitializer }, align 32
@__print_tlp_header._entry_ptr = internal global ptr @__print_tlp_header._entry, section ".printk_index", align 4
@__tracepoint_aer_event = external dso_local global %struct.tracepoint, align 4
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/ras/ras_event.h\00", [40 x i8] zeroinitializer }, align 32
@trace_aer_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aer\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aerdrv\00", [25 x i8] zeroinitializer }, align 32
@aer_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1361, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AER: request AER IRQ %d failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aer_probe\00", [22 x i8] zeroinitializer }, align 32
@aer_probe._entry_ptr = internal global ptr @aer_probe._entry, section ".printk_index", align 4
@aer_probe._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1366, ptr @.str.86, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AER: enabled with IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aer_probe._entry_ptr.87 = internal global ptr @aer_probe._entry.84, section ".printk_index", align 4
@aer_print_port_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 745, ptr @.str.86, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"AER: %s%s error received: %04x:%02x:%02x.%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aer_print_port_info\00", [44 x i8] zeroinitializer }, align 32
@aer_print_port_info._entry_ptr = internal global ptr @aer_print_port_info._entry, section ".printk_index", align 4
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Multiple \00", [22 x i8] zeroinitializer }, align 32
@find_source_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 929, ptr @.str.86, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AER: can't find device of ID%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"find_source_device\00", [45 x i8] zeroinitializer }, align 32
@find_source_device._entry_ptr = internal global ptr @find_source_device._entry, section ".printk_index", align 4
@aer_root_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1412, ptr @.str.86, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AER: has been reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aer_root_reset\00", [17 x i8] zeroinitializer }, align 32
@aer_root_reset._entry_ptr = internal global ptr @aer_root_reset._entry, section ".printk_index", align 4
@aer_root_reset._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 1414, ptr @.str.86, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AER: not reset (no FLR support: %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@aer_root_reset._entry_ptr.97 = internal global ptr @aer_root_reset._entry.95, section ".printk_index", align 4
@aer_root_reset._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 1418, ptr @.str.86, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AER: %s Port link has been reset (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@aer_root_reset._entry_ptr.100 = internal global ptr @aer_root_reset._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Root\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Downstream\00", [21 x i8] zeroinitializer }, align 32
@switch.table.pci_enable_pcie_error_reporting = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@switch.table.pci_disable_pcie_error_reporting = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 10]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 10]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 10]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 10]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 10]
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"pcie_aer_disable\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"ecrc_policy\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 123, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"ecrc_policy_str\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 125, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"aer_stats_attr_group\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 608, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 706, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [26 x i8] c"aer_error_severity_string\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 436, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 714, i32 48 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 716, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"aer_error_layer\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 442, i32 20 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"aer_agent_string\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 518, i32 20 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 720, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 730, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [10 x i8] c"aerdriver\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1435, i32 40 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 126, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 127, i32 22 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 128, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant [36 x i8] c"dev_attr_aer_rootport_total_err_cor\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [38 x i8] c"dev_attr_aer_rootport_total_err_fatal\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [41 x i8] c"dev_attr_aer_rootport_total_err_nonfatal\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 572, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 574, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 576, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant [29 x i8] c"dev_attr_aer_dev_correctable\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [23 x i8] c"dev_attr_aer_dev_fatal\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [26 x i8] c"dev_attr_aer_dev_nonfatal\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 552, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 449, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 455, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 456, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 457, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 461, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 462, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 463, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 464, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [29 x i8] c"aer_correctable_error_string\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 448, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant [31 x i8] c"aer_uncorrectable_error_string\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 483, i32 20 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 555, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 484, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 488, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 489, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 496, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 497, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 498, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 499, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 500, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 501, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 502, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 503, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 504, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 505, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 506, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 507, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 508, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 509, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 510, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 558, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 437, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 438, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 439, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 443, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 444, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 445, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 519, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 520, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 521, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 522, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 691, i32 13 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 693, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 668, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [27 x i8] c"../include/ras/ras_event.h\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 298, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 108, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1436, i32 11 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1359, i32 22 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1361, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1366, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 741, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 929, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1412, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1414, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.457 = private constant [26 x i8] c"../drivers/pci/pcie/aer.c\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1417, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant [45 x i8] c"switch.table.pci_enable_pcie_error_reporting\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [46 x i8] c"switch.table.pci_disable_pcie_error_reporting\00", align 1
@llvm.compiler.used = appending global [137 x ptr] [ptr @__aer_print_error._entry, ptr @__aer_print_error._entry_ptr, ptr @__ksymtab_pci_aer_clear_nonfatal_status, ptr @__ksymtab_pci_disable_pcie_error_reporting, ptr @__ksymtab_pci_enable_pcie_error_reporting, ptr @__print_tlp_header._entry, ptr @__print_tlp_header._entry_ptr, ptr @aer_print_error._entry, ptr @aer_print_error._entry.12, ptr @aer_print_error._entry.6, ptr @aer_print_error._entry.9, ptr @aer_print_error._entry_ptr, ptr @aer_print_error._entry_ptr.11, ptr @aer_print_error._entry_ptr.14, ptr @aer_print_error._entry_ptr.8, ptr @aer_print_port_info._entry, ptr @aer_print_port_info._entry_ptr, ptr @aer_probe._entry, ptr @aer_probe._entry.84, ptr @aer_probe._entry_ptr, ptr @aer_probe._entry_ptr.87, ptr @aer_root_reset._entry, ptr @aer_root_reset._entry.95, ptr @aer_root_reset._entry.98, ptr @aer_root_reset._entry_ptr, ptr @aer_root_reset._entry_ptr.100, ptr @aer_root_reset._entry_ptr.97, ptr @find_source_device._entry, ptr @find_source_device._entry_ptr, ptr @pcie_aer_disable, ptr @ecrc_policy, ptr @ecrc_policy_str, ptr @aer_stats_attr_group, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @aer_error_severity_string, ptr @.str.5, ptr @.str.7, ptr @aer_error_layer, ptr @aer_agent_string, ptr @.str.10, ptr @.str.13, ptr @aerdriver, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @dev_attr_aer_rootport_total_err_cor, ptr @dev_attr_aer_rootport_total_err_fatal, ptr @dev_attr_aer_rootport_total_err_nonfatal, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dev_attr_aer_dev_correctable, ptr @dev_attr_aer_dev_fatal, ptr @dev_attr_aer_dev_nonfatal, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @aer_correctable_error_string, ptr @.str.36, ptr @aer_uncorrectable_error_string, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @switch.table.pci_enable_pcie_error_reporting, ptr @switch.table.pci_disable_pcie_error_reporting], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_aer_disable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecrc_policy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecrc_policy_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_stats_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_print_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_error_severity_string to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_print_error._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_error_layer to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_agent_string to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_print_error._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_print_error._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aerdriver to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aer_rootport_total_err_cor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aer_rootport_total_err_fatal to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aer_rootport_total_err_nonfatal to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aer_dev_correctable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aer_dev_fatal to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aer_dev_nonfatal to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_correctable_error_string to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_uncorrectable_error_string to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_probe._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_print_port_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_source_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_root_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_root_reset._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_root_reset._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pci_enable_pcie_error_reporting to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pci_disable_pcie_error_reporting to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pci_no_aer() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @pcie_aer_disable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_aer_available() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @pcie_aer_disable, align 4
  br i1 %.b, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @pci_msi_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %0 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_set_ecrc_checking(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %reg32.i5 = alloca i32, align 4
  %reg32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ecrc_policy, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb2
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aer_cap.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32.i) #10
  %4 = ptrtoint ptr %reg32.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg32.i, align 4, !annotation !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %sw.bb1.disable_ecrc_checking.exit_crit_edge, label %if.end.i

sw.bb1.disable_ecrc_checking.exit_crit_edge:      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_ecrc_checking.exit

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 24
  %call.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add.i, ptr noundef nonnull %reg32.i) #10
  %5 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg32.i, align 4
  %and.i = and i32 %6, -321
  store i32 %and.i, ptr %reg32.i, align 4
  %call2.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add.i, i32 noundef %and.i) #10
  br label %disable_ecrc_checking.exit

disable_ecrc_checking.exit:                       ; preds = %if.end.i, %sw.bb1.disable_ecrc_checking.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32.i) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %aer_cap.i6 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %aer_cap.i6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %aer_cap.i6, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32.i5) #10
  %9 = ptrtoint ptr %reg32.i5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg32.i5, align 4, !annotation !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i7 = icmp eq i16 %8, 0
  br i1 %tobool.not.i7, label %sw.bb2.enable_ecrc_checking.exit_crit_edge, label %if.end.i12

sw.bb2.enable_ecrc_checking.exit_crit_edge:       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_ecrc_checking.exit

if.end.i12:                                       ; preds = %sw.bb2
  %conv.i8 = zext i16 %8 to i32
  %add.i9 = add nuw nsw i32 %conv.i8, 24
  %call.i10 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add.i9, ptr noundef nonnull %reg32.i5) #10
  %10 = ptrtoint ptr %reg32.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg32.i5, align 4
  %and.i11 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool1.not.i = icmp eq i32 %and.i11, 0
  br i1 %tobool1.not.i, label %if.end.i12.if.end3.i_crit_edge, label %if.then2.i

if.end.i12.if.end3.i_crit_edge:                   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %11, 64
  %12 = ptrtoint ptr %reg32.i5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %reg32.i5, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i12.if.end3.i_crit_edge
  %13 = ptrtoint ptr %reg32.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg32.i5, align 4
  %and4.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end8.i_crit_edge, label %if.then6.i

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %or7.i = or i32 %14, 256
  %15 = ptrtoint ptr %reg32.i5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or7.i, ptr %reg32.i5, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end3.i.if.end8.i_crit_edge
  %16 = ptrtoint ptr %reg32.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg32.i5, align 4
  %call10.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add.i9, i32 noundef %17) #10
  br label %enable_ecrc_checking.exit

enable_ecrc_checking.exit:                        ; preds = %if.end8.i, %sw.bb2.enable_ecrc_checking.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32.i5) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %enable_ecrc_checking.exit, %disable_ecrc_checking.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_ecrc_get_policy(ptr noundef %str) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @match_string(ptr noundef nonnull @ecrc_policy_str, i32 noundef 3, ptr noundef %str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %call, ptr @ecrc_policy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_aer_is_native(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_find_host_bridge(ptr noundef %1) #10
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aer_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %4 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %lor.rhs, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %native_aer = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %native_aer to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %native_aer, align 8
  %6 = lshr i16 %bf.load, 13
  %.lobit = and i16 %6, 1
  %7 = zext i16 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %7, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %call.i = tail call ptr @pci_find_host_bridge(ptr noundef %1) #10
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aer_cap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %4 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %pcie_aer_is_native.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit:                          ; preds = %if.end.i
  %native_aer.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %native_aer.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %native_aer.i, align 8
  %6 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %pcie_aer_is_native.exit.cleanup_crit_edge, label %pcie_aer_is_native.exit.if.end_crit_edge

pcie_aer_is_native.exit.if.end_crit_edge:         ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit.cleanup_crit_edge:        ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %pcie_aer_is_native.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call.i4 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 8, i16 noundef zeroext 0, i16 noundef zeroext 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i4)
  %cmp.i = icmp slt i32 %call.i4, 1
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i5:                                        ; preds = %if.end
  %switch.tableidx = add i32 %call.i4, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 9
  br i1 %7, label %switch.lookup, label %if.end.i5.cleanup_crit_edge

if.end.i5.cleanup_crit_edge:                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.pci_enable_pcie_error_reporting, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.i5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pcie_aer_is_native.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %pcie_aer_is_native.exit.cleanup_crit_edge ], [ %call.i4, %if.end.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -34, %if.end.i5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %call.i = tail call ptr @pci_find_host_bridge(ptr noundef %1) #10
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aer_cap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %4 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %pcie_aer_is_native.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit:                          ; preds = %if.end.i
  %native_aer.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %native_aer.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %native_aer.i, align 8
  %6 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %pcie_aer_is_native.exit.cleanup_crit_edge, label %pcie_aer_is_native.exit.if.end_crit_edge

pcie_aer_is_native.exit.if.end_crit_edge:         ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit.cleanup_crit_edge:        ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %pcie_aer_is_native.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call.i4 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 8, i16 noundef zeroext 15, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i4)
  %cmp.i = icmp slt i32 %call.i4, 1
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i5:                                        ; preds = %if.end
  %switch.tableidx = add i32 %call.i4, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 9
  br i1 %7, label %switch.lookup, label %if.end.i5.cleanup_crit_edge

if.end.i5.cleanup_crit_edge:                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.pci_disable_pcie_error_reporting, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.i5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pcie_aer_is_native.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %pcie_aer_is_native.exit.cleanup_crit_edge ], [ %call.i4, %if.end.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -34, %if.end.i5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_aer_clear_nonfatal_status(ptr noundef %dev) #1 align 64 {
entry:
  %status = alloca i32, align 4
  %sev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aer_cap, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sev) #10
  %3 = ptrtoint ptr %sev to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sev, align 4, !annotation !227
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %call.i = tail call ptr @pci_find_host_bridge(ptr noundef %5) #10
  %6 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %aer_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %8 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %pcie_aer_is_native.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit:                          ; preds = %if.end.i
  %native_aer.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %native_aer.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %native_aer.i, align 8
  %10 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %pcie_aer_is_native.exit.cleanup_crit_edge, label %pcie_aer_is_native.exit.if.end_crit_edge

pcie_aer_is_native.exit.if.end_crit_edge:         ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit.cleanup_crit_edge:        ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %pcie_aer_is_native.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 4
  %call1 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %status) #10
  %add2 = add nuw nsw i32 %conv, 12
  %call3 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add2, ptr noundef nonnull %sev) #10
  %11 = ptrtoint ptr %sev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sev, align 4
  %neg = xor i32 %12, -1
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and = and i32 %14, %neg
  store i32 %and, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add, i32 noundef %and) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %pcie_aer_is_native.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %pcie_aer_is_native.exit.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_aer_clear_fatal_status(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %status = alloca i32, align 4
  %sev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aer_cap, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sev) #10
  %3 = ptrtoint ptr %sev to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sev, align 4, !annotation !227
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %call.i = tail call ptr @pci_find_host_bridge(ptr noundef %5) #10
  %6 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %aer_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %8 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %pcie_aer_is_native.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit:                          ; preds = %if.end.i
  %native_aer.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %native_aer.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %native_aer.i, align 8
  %10 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %pcie_aer_is_native.exit.cleanup_crit_edge, label %pcie_aer_is_native.exit.if.end_crit_edge

pcie_aer_is_native.exit.if.end_crit_edge:         ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit.cleanup_crit_edge:        ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %pcie_aer_is_native.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 4
  %call1 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %status) #10
  %add2 = add nuw nsw i32 %conv, 12
  %call3 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add2, ptr noundef nonnull %sev) #10
  %11 = ptrtoint ptr %sev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sev, align 4
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and = and i32 %14, %12
  store i32 %and, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add, i32 noundef %and) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %pcie_aer_is_native.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_aer_raw_clear_status(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aer_cap, align 2
  %conv = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %3 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %5 = lshr i16 %4, 4
  %6 = and i16 %5, 15
  %7 = zext i16 %6 to i32
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %7, label %if.end.if.end8_crit_edge [
    i32 4, label %if.end.if.then4_crit_edge
    i32 10, label %if.end.if.then4_crit_edge33
  ]

if.end.if.then4_crit_edge33:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.if.then4_crit_edge33
  %add = add nuw nsw i32 %conv, 48
  %call5 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %status) #10
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %call7 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add, i32 noundef %10) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %add9 = add nuw nsw i32 %conv, 16
  %call10 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add9, ptr noundef nonnull %status) #10
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %call12 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add9, i32 noundef %12) #10
  %add13 = add nuw nsw i32 %conv, 4
  %call14 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add13, ptr noundef nonnull %status) #10
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %call16 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add13, i32 noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_aer_clear_status(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %call.i = tail call ptr @pci_find_host_bridge(ptr noundef %1) #10
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aer_cap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %4 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %pcie_aer_is_native.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit:                          ; preds = %if.end.i
  %native_aer.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %native_aer.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %native_aer.i, align 8
  %6 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %pcie_aer_is_native.exit.return_crit_edge, label %pcie_aer_is_native.exit.if.end_crit_edge

pcie_aer_is_native.exit.if.end_crit_edge:         ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcie_aer_is_native.exit.return_crit_edge:         ; preds = %pcie_aer_is_native.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %pcie_aer_is_native.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call1 = tail call i32 @pci_aer_raw_clear_status(ptr noundef %dev)
  br label %return

return:                                           ; preds = %if.end, %pcie_aer_is_native.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -5, %pcie_aer_is_native.exit.return_crit_edge ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_save_aer_state(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aer_cap, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 1) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.pci_cap_saved_state, ptr %call, i32 1
  %add = add nuw nsw i32 %conv, 8
  %incdec.ptr = getelementptr %struct.pci_cap_saved_state, ptr %call, i32 1, i32 0, i32 1
  %call5 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef %data) #10
  %add6 = add nuw nsw i32 %conv, 12
  %incdec.ptr7 = getelementptr %struct.pci_cap_saved_state, ptr %call, i32 1, i32 1
  %call8 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add6, ptr noundef %incdec.ptr) #10
  %add9 = add nuw nsw i32 %conv, 20
  %incdec.ptr10 = getelementptr %struct.pci_cap_saved_state, ptr %call, i32 1, i32 1, i32 2
  %call11 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add9, ptr noundef %incdec.ptr7) #10
  %add12 = add nuw nsw i32 %conv, 24
  %call14 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add12, ptr noundef %incdec.ptr10) #10
  %call15 = tail call zeroext i1 @pcie_cap_has_rtctl(ptr noundef %dev) #10
  br i1 %call15, label %if.then16, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr13 = getelementptr %struct.pci_cap_saved_state, ptr %call, i32 2
  %add17 = add nuw nsw i32 %conv, 44
  %call19 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add17, ptr noundef %incdec.ptr13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_saved_ext_cap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcie_cap_has_rtctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_restore_aer_state(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aer_cap, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 1) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.pci_cap_saved_state, ptr %call, i32 1
  %add = add nuw nsw i32 %conv, 8
  %incdec.ptr = getelementptr %struct.pci_cap_saved_state, ptr %call, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call5 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add, i32 noundef %3) #10
  %add6 = add nuw nsw i32 %conv, 12
  %incdec.ptr7 = getelementptr %struct.pci_cap_saved_state, ptr %call, i32 1, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr, align 4
  %call8 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add6, i32 noundef %5) #10
  %add9 = add nuw nsw i32 %conv, 20
  %incdec.ptr10 = getelementptr %struct.pci_cap_saved_state, ptr %call, i32 1, i32 1, i32 2
  %6 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr7, align 4
  %call11 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add9, i32 noundef %7) #10
  %add12 = add nuw nsw i32 %conv, 24
  %8 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr10, align 4
  %call14 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add12, i32 noundef %9) #10
  %call15 = tail call zeroext i1 @pcie_cap_has_rtctl(ptr noundef %dev) #10
  br i1 %call15, label %if.then16, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr13 = getelementptr %struct.pci_cap_saved_state, ptr %call, i32 2
  %add17 = add nuw nsw i32 %conv, 44
  %10 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr13, align 4
  %call19 = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add17, i32 noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_aer_init(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 1) #10
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %aer_cap to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call, ptr %aer_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 608) #13
  %aer_stats = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %aer_stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %aer_stats, align 8
  %call3 = tail call zeroext i1 @pcie_cap_has_rtctl(ptr noundef %dev) #10
  %mul = select i1 %call3, i32 20, i32 16
  %call4 = tail call i32 @pci_add_ext_cap_save_buffer(ptr noundef %dev, i16 noundef zeroext 1, i32 noundef %mul) #10
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call ptr @pci_find_host_bridge(ptr noundef %4) #10
  %5 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %aer_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %7 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i.i, label %pcie_aer_is_native.exit.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

pcie_aer_is_native.exit.i:                        ; preds = %if.end.i.i
  %native_aer.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %native_aer.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %native_aer.i.i, align 8
  %9 = and i16 %bf.load.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %pcie_aer_is_native.exit.i.cleanup_crit_edge, label %pcie_aer_is_native.exit.i.if.end.i_crit_edge

pcie_aer_is_native.exit.i.if.end.i_crit_edge:     ; preds = %pcie_aer_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

pcie_aer_is_native.exit.i.cleanup_crit_edge:      ; preds = %pcie_aer_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %pcie_aer_is_native.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %call1.i = tail call i32 @pci_aer_raw_clear_status(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %pcie_aer_is_native.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_add_ext_cap_save_buffer(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_aer_exit(ptr nocapture noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_stats = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aer_stats, align 8
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %aer_stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %aer_stats, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @aer_stats_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_stats = getelementptr i8, ptr %kobj, i32 -88
  %0 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aer_stats, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %a, @dev_attr_aer_rootport_total_err_cor
  %cmp1 = icmp eq ptr %a, @dev_attr_aer_rootport_total_err_fatal
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %a, @dev_attr_aer_rootport_total_err_nonfatal
  %or.cond17 = or i1 %cmp3, %or.cond
  br i1 %or.cond17, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %pcie_flags_reg.i.i = getelementptr i8, ptr %kobj, i32 -66
  %2 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 15
  %6 = zext i16 %5 to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %6, label %land.lhs.true.cleanup_crit_edge [
    i32 4, label %land.lhs.true.if.end10_crit_edge
    i32 10, label %land.lhs.true.if.end10_crit_edge19
  ]

land.lhs.true.if.end10_crit_edge19:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge19, %if.end.if.end10_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %9, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aer_print_error(ptr noundef %dev, ptr noundef %info) local_unnamed_addr #1 align 64 {
entry:
  %status.i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn, align 4
  %or = or i32 %shl, %5
  %status = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %severity = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %severity to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %severity, align 4
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 3
  %arrayidx = getelementptr [3 x ptr], ptr @aer_error_severity_string, i32 0, i32 %bf.clear
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef %10) #14
  br label %out

if.end:                                           ; preds = %entry
  %severity3 = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %severity3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load4 = load i32, ptr %severity3, align 4
  %12 = and i32 %bf.load4, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %12)
  %cmp = icmp eq i32 %12, 32768
  %cond = zext i1 %cmp to i32
  %and = and i32 %7, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %cond16 = select i1 %cmp, i32 4544, i32 16
  %and17 = and i32 %cond16, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, i32 2, i32 1
  %cond20 = select i1 %tobool8.not, i32 %cond19, i32 0
  %cond28 = select i1 %cmp, i32 0, i32 32768
  %and29 = and i32 %cond28, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %cond.false32, label %if.end.cond.end58_crit_edge

if.end.cond.end58_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end58

cond.false32:                                     ; preds = %if.end
  %cond40 = select i1 %cmp, i32 0, i32 1064960
  %and41 = and i32 %cond40, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %cond.false44, label %cond.false32.cond.end58_crit_edge

cond.false32.cond.end58_crit_edge:                ; preds = %cond.false32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end58

cond.false44:                                     ; preds = %cond.false32
  call void @__sanitizer_cov_trace_pc() #12
  %cond52 = select i1 %cmp, i32 4352, i32 0
  %and53 = and i32 %cond52, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %cond55 = select i1 %tobool54.not, i32 0, i32 3
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false44, %cond.false32.cond.end58_crit_edge, %if.end.cond.end58_crit_edge
  %cond59 = phi i32 [ 2, %if.end.cond.end58_crit_edge ], [ %cond55, %cond.false44 ], [ 1, %cond.false32.cond.end58_crit_edge ]
  %bf.lshr62 = lshr i32 %bf.load4, 14
  %bf.clear63 = and i32 %bf.lshr62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear63)
  %cmp64 = icmp eq i32 %bf.clear63, 2
  %cond66 = select i1 %cmp64, ptr @.str.5, ptr @.str.3
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %arrayidx77 = getelementptr [3 x ptr], ptr @aer_error_severity_string, i32 0, i32 %bf.clear63
  %13 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr [3 x ptr], ptr @aer_error_layer, i32 0, i32 %cond20
  %15 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx78, align 4
  %arrayidx79 = getelementptr [4 x ptr], ptr @aer_agent_string, i32 0, i32 %cond59
  %17 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx79, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %cond66, ptr noundef %dev72, ptr noundef nonnull @.str.7, ptr noundef %14, ptr noundef %16, ptr noundef %18) #14
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %19 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vendor, align 8
  %conv86 = zext i16 %20 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device, align 2
  %conv87 = zext i16 %22 to i32
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %mask = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 4
  %25 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %cond66, ptr noundef %dev72, ptr noundef nonnull @.str.10, i32 noundef %conv86, i32 noundef %conv87, i32 noundef %24, i32 noundef %26) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #10
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask, align 4
  %neg.i = xor i32 %30, -1
  %and.i = and i32 %28, %neg.i
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %status.i, align 4
  %32 = ptrtoint ptr %severity3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i = load i32, ptr %severity3, align 4
  %33 = and i32 %bf.load.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %33)
  %cmp.i = icmp eq i32 %33, 32768
  %aer_correctable_error_string.aer_uncorrectable_error_string.i = select i1 %cmp.i, ptr @aer_correctable_error_string, ptr @aer_uncorrectable_error_string
  %.str.5..str.3.i = select i1 %cmp.i, ptr @.str.5, ptr @.str.3
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %status.i, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp223.i = icmp slt i32 %call.i, 32
  br i1 %cmp223.i, label %cond.end58.for.body.i_crit_edge, label %cond.end58.for.end.i_crit_edge

cond.end58.for.end.i_crit_edge:                   ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

cond.end58.for.body.i_crit_edge:                  ; preds = %cond.end58
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end58.for.body.i_crit_edge
  %i.024.i = phi i32 [ %call12.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %cond.end58.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %aer_correctable_error_string.aer_uncorrectable_error_string.i, i32 %i.024.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr @.str.70, ptr %35
  %36 = ptrtoint ptr %severity3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load8.i = load i32, ptr %severity3, align 4
  %bf.lshr9.i = lshr i32 %bf.load8.i, 3
  %bf.clear10.i = and i32 %bf.lshr9.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear10.i, i32 %i.024.i)
  %cmp11.i = icmp eq i32 %bf.clear10.i, %i.024.i
  %cond.i = select i1 %cmp11.i, ptr @.str.73, ptr @.str.74
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %.str.5..str.3.i, ptr noundef %dev72, ptr noundef nonnull @.str.71, i32 noundef %i.024.i, ptr noundef %spec.store.select.i, ptr noundef nonnull %cond.i) #14
  %add.i = add nsw i32 %i.024.i, 1
  %call12.i = call i32 @_find_next_bit_be(ptr noundef nonnull %status.i, i32 noundef 32, i32 noundef %add.i) #10
  %cmp2.i = icmp slt i32 %call12.i, 32
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %cond.end58.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #10
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  %39 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mask, align 4
  %neg.i.i = xor i32 %40, -1
  %and.i.i = and i32 %38, %neg.i.i
  %41 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i.i, ptr %status.i.i, align 4
  %aer_stats2.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 15
  %42 = ptrtoint ptr %aer_stats2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aer_stats2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %for.end.i.__aer_print_error.exit_crit_edge, label %if.end.i.i

for.end.i.__aer_print_error.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__aer_print_error.exit

if.end.i.i:                                       ; preds = %for.end.i
  %44 = ptrtoint ptr %severity3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load.i.i = load i32, ptr %severity3, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 14
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 3
  %45 = zext i32 %bf.clear.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %bf.clear.i.i, label %if.end.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 0, label %sw.bb3.i.i
    i32 1, label %sw.bb6.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev_total_cor_errs.i.i = getelementptr inbounds %struct.aer_stats, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %dev_total_cor_errs.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dev_total_cor_errs.i.i, align 8
  %inc.i.i = add i64 %47, 1
  store i64 %inc.i.i, ptr %dev_total_cor_errs.i.i, align 8
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev_total_nonfatal_errs.i.i = getelementptr inbounds %struct.aer_stats, ptr %43, i32 0, i32 5
  %48 = ptrtoint ptr %dev_total_nonfatal_errs.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dev_total_nonfatal_errs.i.i, align 8
  %inc4.i.i = add i64 %49, 1
  store i64 %inc4.i.i, ptr %dev_total_nonfatal_errs.i.i, align 8
  %dev_nonfatal_errs.i.i = getelementptr inbounds %struct.aer_stats, ptr %43, i32 0, i32 2
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev_total_fatal_errs.i.i = getelementptr inbounds %struct.aer_stats, ptr %43, i32 0, i32 4
  %50 = ptrtoint ptr %dev_total_fatal_errs.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %dev_total_fatal_errs.i.i, align 8
  %inc7.i.i = add i64 %51, 1
  store i64 %inc7.i.i, ptr %dev_total_fatal_errs.i.i, align 8
  %dev_fatal_errs.i.i = getelementptr inbounds %struct.aer_stats, ptr %43, i32 0, i32 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb6.i.i, %sw.bb3.i.i, %sw.bb.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %max.0.i.i = phi i32 [ -1, %if.end.i.i.sw.epilog.i.i_crit_edge ], [ 27, %sw.bb6.i.i ], [ 27, %sw.bb3.i.i ], [ 16, %sw.bb.i.i ]
  %counter.0.i.i = phi ptr [ null, %if.end.i.i.sw.epilog.i.i_crit_edge ], [ %dev_fatal_errs.i.i, %sw.bb6.i.i ], [ %dev_nonfatal_errs.i.i, %sw.bb3.i.i ], [ %43, %sw.bb.i.i ]
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %status.i.i, i32 noundef %max.0.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %max.0.i.i)
  %cmp28.i.i = icmp slt i32 %call.i.i, %max.0.i.i
  br i1 %cmp28.i.i, label %sw.epilog.i.i.for.body.i.i_crit_edge, label %sw.epilog.i.i.__aer_print_error.exit_crit_edge

sw.epilog.i.i.__aer_print_error.exit_crit_edge:   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__aer_print_error.exit

sw.epilog.i.i.for.body.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.epilog.i.i.for.body.i.i_crit_edge
  %i.029.i.i = phi i32 [ %call11.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %arrayidx9.i.i = getelementptr i64, ptr %counter.0.i.i, i32 %i.029.i.i
  %52 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx9.i.i, align 8
  %inc10.i.i = add i64 %53, 1
  store i64 %inc10.i.i, ptr %arrayidx9.i.i, align 8
  %add.i.i = add nsw i32 %i.029.i.i, 1
  %call11.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %status.i.i, i32 noundef %max.0.i.i, i32 noundef %add.i.i) #10
  %cmp.i.i = icmp slt i32 %call11.i.i, %max.0.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__aer_print_error.exit_crit_edge

for.body.i.i.__aer_print_error.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__aer_print_error.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

__aer_print_error.exit:                           ; preds = %for.body.i.i.__aer_print_error.exit_crit_edge, %sw.epilog.i.i.__aer_print_error.exit_crit_edge, %for.end.i.__aer_print_error.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #10
  %54 = ptrtoint ptr %severity3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load89 = load i32, ptr %severity3, align 4
  %bf.clear90 = and i32 %bf.load89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear90)
  %tobool91.not = icmp eq i32 %bf.clear90, 0
  br i1 %tobool91.not, label %__aer_print_error.exit.out_crit_edge, label %if.then92

__aer_print_error.exit.out_crit_edge:             ; preds = %__aer_print_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then92:                                        ; preds = %__aer_print_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tlp = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 5
  %55 = ptrtoint ptr %tlp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tlp, align 4
  %dw1.i = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %dw1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dw1.i, align 4
  %dw2.i = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %dw2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dw2.i, align 4
  %dw3.i = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 5, i32 3
  %61 = ptrtoint ptr %dw3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dw3.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.75, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #14
  br label %out

out:                                              ; preds = %if.then92, %__aer_print_error.exit.out_crit_edge, %do.end
  %id94 = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 2
  %63 = ptrtoint ptr %id94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load95 = load i32, ptr %id94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load95)
  %tobool97.not = icmp ult i32 %bf.load95, 65536
  br i1 %tobool97.not, label %out.if.end111_crit_edge, label %land.lhs.true

out.if.end111_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

land.lhs.true:                                    ; preds = %out
  %bf.lshr96 = lshr i32 %bf.load95, 16
  %error_dev_num = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 1
  %64 = ptrtoint ptr %error_dev_num to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %error_dev_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp98 = icmp sgt i32 %65, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr96, i32 %or)
  %cmp104 = icmp eq i32 %bf.lshr96, %or
  %or.cond = select i1 %cmp98, i1 %cmp104, i1 false
  br i1 %or.cond, label %do.end109, label %land.lhs.true.if.end111_crit_edge

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

do.end109:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.13) #14
  br label %if.end111

if.end111:                                        ; preds = %do.end109, %land.lhs.true.if.end111_crit_edge, %out.if.end111_crit_edge
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %66 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i163 = icmp eq ptr %67, null
  br i1 %tobool.not.i163, label %if.end.i, label %if.end111.dev_name.exit_crit_edge

if.end111.dev_name.exit_crit_edge:                ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %dev112 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %68 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev112, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end111.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %69, %if.end.i ], [ %67, %if.end111.dev_name.exit_crit_edge ]
  %70 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status, align 4
  %mask114 = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 4
  %72 = ptrtoint ptr %mask114 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mask114, align 4
  %neg = xor i32 %73, -1
  %and115 = and i32 %71, %neg
  %74 = ptrtoint ptr %id94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load117 = load i32, ptr %id94, align 4
  %bf.lshr118 = lshr i32 %bf.load117, 14
  %75 = trunc i32 %bf.lshr118 to i8
  %conv120 = and i8 %75, 3
  %76 = trunc i32 %bf.load117 to i8
  %conv124 = and i8 %76, 1
  %tlp125 = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 5
  call fastcc void @trace_aer_event(ptr noundef %retval.0.i, i32 noundef %and115, i8 noundef zeroext %conv120, i8 noundef zeroext %conv124, ptr noundef %tlp125)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_aer_event(ptr noundef %dev_name, i32 noundef %status, i8 noundef zeroext %severity, i8 noundef zeroext %tlp_header_valid, ptr noundef %tlp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_aer_event, i32 0, i32 1), ptr blockaddress(@trace_aer_event, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !229

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !217) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !230

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !217) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !231
  %call42 = tail call i32 @__traceiter_aer_event(ptr noundef null, ptr noundef %dev_name, i32 noundef %status, i8 noundef zeroext %severity, i8 noundef zeroext %tlp_header_valid, ptr noundef %tlp) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !232
  %13 = tail call i32 @llvm.read_register.i32(metadata !217) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !217) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !230

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !217) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_aer_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_aer_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_aer_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_aer_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.77, i32 noundef 339, ptr noundef nonnull @.str.78) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !234
  %31 = tail call i32 @llvm.read_register.i32(metadata !217) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aer_get_device_error_info(ptr noundef %dev, ptr noundef %info) local_unnamed_addr #1 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %2 = lshr i16 %1, 4
  %3 = and i16 %2, 15
  %4 = zext i16 %3 to i32
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %aer_cap, align 2
  %conv = zext i16 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #10
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %temp, align 4, !annotation !227
  %status = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %status, align 4
  %tlp_header_valid = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %tlp_header_valid to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %tlp_header_valid, align 4
  %bf.clear = and i32 %bf.load, -2
  store i32 %bf.clear, ptr %tlp_header_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear2 = and i32 %bf.lshr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear2)
  %cmp = icmp eq i32 %bf.clear2, 2
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %add = add nuw nsw i32 %conv, 16
  %call6 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef %status) #10
  %add7 = add nuw nsw i32 %conv, 20
  %mask = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 4
  %call8 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add7, ptr noundef %mask) #10
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %neg = xor i32 %13, -1
  %and = and i32 %11, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end72_crit_edge

if.then4.if.end72_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %14 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %4, label %lor.lhs.false21 [
    i32 4, label %if.else.if.then28_crit_edge
    i32 10, label %if.else.if.then28_crit_edge114
    i32 6, label %if.else.if.then28_crit_edge115
  ]

if.else.if.then28_crit_edge115:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.else.if.then28_crit_edge114:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.else.if.then28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

lor.lhs.false21:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear2)
  %cmp26 = icmp eq i32 %bf.clear2, 0
  br i1 %cmp26, label %lor.lhs.false21.if.then28_crit_edge, label %lor.lhs.false21.if.end72_crit_edge

lor.lhs.false21.if.end72_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

lor.lhs.false21.if.then28_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false21.if.then28_crit_edge, %if.else.if.then28_crit_edge, %if.else.if.then28_crit_edge114, %if.else.if.then28_crit_edge115
  %add29 = add nuw nsw i32 %conv, 4
  %call31 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add29, ptr noundef %status) #10
  %add32 = add nuw nsw i32 %conv, 8
  %mask33 = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 4
  %call34 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add32, ptr noundef %mask33) #10
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %17 = ptrtoint ptr %mask33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask33, align 4
  %neg37 = xor i32 %18, -1
  %and38 = and i32 %16, %neg37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then28.cleanup_crit_edge, label %if.end41

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.then28
  %add42 = add nuw nsw i32 %conv, 24
  %call43 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add42, ptr noundef nonnull %temp) #10
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp, align 4
  %21 = ptrtoint ptr %tlp_header_valid to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load45 = load i32, ptr %tlp_header_valid, align 4
  %and44 = shl i32 %20, 3
  %bf.shl = and i32 %and44, 248
  %bf.clear46 = and i32 %bf.load45, -249
  %bf.set47 = or i32 %bf.clear46, %bf.shl
  store i32 %bf.set47, ptr %tlp_header_valid, align 4
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %and49 = and i32 %23, 1937408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end41.if.end72_crit_edge, label %if.then51

if.end41.if.end72_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then51:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set55 = or i32 %bf.set47, 1
  %24 = ptrtoint ptr %tlp_header_valid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bf.set55, ptr %tlp_header_valid, align 4
  %add56 = add nuw nsw i32 %conv, 28
  %tlp = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 5
  %call57 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add56, ptr noundef %tlp) #10
  %add59 = add nuw nsw i32 %conv, 32
  %dw1 = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 5, i32 1
  %call61 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add59, ptr noundef %dw1) #10
  %add63 = add nuw nsw i32 %conv, 36
  %dw2 = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 5, i32 2
  %call65 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add63, ptr noundef %dw2) #10
  %add67 = add nuw nsw i32 %conv, 40
  %dw3 = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 5, i32 3
  %call69 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add67, ptr noundef %dw3) #10
  br label %if.end72

if.end72:                                         ; preds = %if.then51, %if.end41.if.end72_crit_edge, %lor.lhs.false21.if.end72_crit_edge, %if.then4.if.end72_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then28.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end72 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_aer_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @pcie_aer_disable, align 4
  br i1 %.b.i, label %entry.return_crit_edge, label %pci_aer_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

pci_aer_available.exit:                           ; preds = %entry
  %call.i = tail call i32 @pci_msi_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.i.not, label %pci_aer_available.exit.return_crit_edge, label %if.end

pci_aer_available.exit.return_crit_edge:          ; preds = %pci_aer_available.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %pci_aer_available.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @pcie_port_service_register(ptr noundef nonnull @aerdriver) #10
  br label %return

return:                                           ; preds = %if.end, %pci_aer_available.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -6, %pci_aer_available.exit.return_crit_edge ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_service_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_rootport_total_err_cor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_stats = getelementptr i8, ptr %dev, i32 -88
  %0 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aer_stats, align 8
  %rootport_total_cor_errs = getelementptr inbounds %struct.aer_stats, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rootport_total_cor_errs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rootport_total_cor_errs, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i64 noundef %3) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_rootport_total_err_fatal_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_stats = getelementptr i8, ptr %dev, i32 -88
  %0 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aer_stats, align 8
  %rootport_total_fatal_errs = getelementptr inbounds %struct.aer_stats, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rootport_total_fatal_errs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rootport_total_fatal_errs, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i64 noundef %3) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_rootport_total_err_nonfatal_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_stats = getelementptr i8, ptr %dev, i32 -88
  %0 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aer_stats, align 8
  %rootport_total_nonfatal_errs = getelementptr inbounds %struct.aer_stats, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rootport_total_nonfatal_errs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rootport_total_nonfatal_errs, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i64 noundef %3) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_dev_correctable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_stats = getelementptr i8, ptr %dev, i32 -88
  %0 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aer_stats, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %len.034 = phi i32 [ 0, %entry ], [ %len.1, %for.inc.for.body_crit_edge ]
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @aer_correctable_error_string, i32 0, i32 %i.032
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  %arrayidx3 = getelementptr i64, ptr %1, i32 %i.032
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx3, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.034, ptr noundef nonnull @.str.23, ptr noundef nonnull %3, i64 noundef %5) #10
  %add = add i32 %call, %len.034
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool4.not = icmp eq i64 %5, 0
  br i1 %tobool4.not, label %if.else.for.inc_crit_edge, label %if.then5

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.034, ptr noundef nonnull @.str.24, i32 noundef %i.032, i64 noundef %5) #10
  %add8 = add i32 %call7, %len.034
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.else.for.inc_crit_edge, %if.then
  %len.1 = phi i32 [ %add, %if.then ], [ %add8, %if.then5 ], [ %len.034, %if.else.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aer_stats, align 8
  %dev_total_cor_errs = getelementptr inbounds %struct.aer_stats, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev_total_cor_errs to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dev_total_cor_errs, align 8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i64 noundef %9) #10
  %add12 = add i32 %call11, %len.1
  ret i32 %add12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_dev_fatal_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_stats = getelementptr i8, ptr %dev, i32 -88
  %0 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aer_stats, align 8
  %dev_fatal_errs = getelementptr inbounds %struct.aer_stats, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %len.034 = phi i32 [ 0, %entry ], [ %len.1, %for.inc.for.body_crit_edge ]
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = lshr i32 -134213682, %i.032
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [32 x ptr], ptr @aer_uncorrectable_error_string, i32 0, i32 %i.032
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i64, ptr %dev_fatal_errs, i32 %i.032
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx2, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.034, ptr noundef nonnull @.str.23, ptr noundef %5, i64 noundef %7) #10
  %add = add i32 %call, %len.034
  br label %for.inc

if.else:                                          ; preds = %for.body
  %arrayidx3 = getelementptr i64, ptr %dev_fatal_errs, i32 %i.032
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool4.not = icmp eq i64 %9, 0
  br i1 %tobool4.not, label %if.else.for.inc_crit_edge, label %if.then5

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.034, ptr noundef nonnull @.str.37, i32 noundef %i.032, i64 noundef %9) #10
  %add8 = add i32 %call7, %len.034
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.else.for.inc_crit_edge, %if.then
  %len.1 = phi i32 [ %add, %if.then ], [ %add8, %if.then5 ], [ %len.034, %if.else.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aer_stats, align 8
  %dev_total_fatal_errs = getelementptr inbounds %struct.aer_stats, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dev_total_fatal_errs to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dev_total_fatal_errs, align 8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.38, i64 noundef %13) #10
  %add12 = add i32 %call11, %len.1
  ret i32 %add12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_dev_nonfatal_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_stats = getelementptr i8, ptr %dev, i32 -88
  %0 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aer_stats, align 8
  %dev_nonfatal_errs = getelementptr inbounds %struct.aer_stats, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %len.034 = phi i32 [ 0, %entry ], [ %len.1, %for.inc.for.body_crit_edge ]
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = lshr i32 -134213682, %i.032
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [32 x ptr], ptr @aer_uncorrectable_error_string, i32 0, i32 %i.032
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i64, ptr %dev_nonfatal_errs, i32 %i.032
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx2, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.034, ptr noundef nonnull @.str.23, ptr noundef %5, i64 noundef %7) #10
  %add = add i32 %call, %len.034
  br label %for.inc

if.else:                                          ; preds = %for.body
  %arrayidx3 = getelementptr i64, ptr %dev_nonfatal_errs, i32 %i.032
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool4.not = icmp eq i64 %9, 0
  br i1 %tobool4.not, label %if.else.for.inc_crit_edge, label %if.then5

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.034, ptr noundef nonnull @.str.58, i32 noundef %i.032, i64 noundef %9) #10
  %add8 = add i32 %call7, %len.034
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.else.for.inc_crit_edge, %if.then
  %len.1 = phi i32 [ %add, %if.then ], [ %add8, %if.then5 ], [ %len.034, %if.else.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %aer_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aer_stats, align 8
  %dev_total_nonfatal_errs = getelementptr inbounds %struct.aer_stats, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev_total_nonfatal_errs to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dev_total_nonfatal_errs, align 8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.59, i64 noundef %13) #10
  %add12 = add i32 %call11, %len.1
  ret i32 %add12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_aer_event(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_probe(ptr noundef %dev) #1 align 64 {
entry:
  %enable.addr.i.i = alloca i8, align 1
  %reg16.i = alloca i16, align 2
  %reg32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 4
  %port2 = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port2, align 4
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 15
  %6 = zext i16 %5 to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 10, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge45
  ]

entry.if.end_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge45
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %device1, i32 noundef 1048, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %call.i, align 4
  %aer_fifo = getelementptr inbounds %struct.aer_rpc, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %aer_fifo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %aer_fifo, align 4
  %out = getelementptr inbounds %struct.aer_rpc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.aer_rpc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 127, ptr %mask, align 4
  %esize = getelementptr inbounds %struct.aer_rpc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %esize, align 4
  %buf = getelementptr inbounds %struct.aer_rpc, ptr %call.i, i32 0, i32 1, i32 1
  %data = getelementptr inbounds %struct.aer_rpc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %data, align 4
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %priv_data.i, align 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev, align 8
  %call8 = tail call i32 @devm_request_threaded_irq(ptr noundef %device1, i32 noundef %16, ptr noundef nonnull @aer_irq, ptr noundef nonnull @aer_isr, i32 noundef 128, ptr noundef nonnull @.str.81, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.82, i32 noundef %18) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %aer_cap.i, align 2
  %conv.i = zext i16 %22 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16.i) #10
  %23 = ptrtoint ptr %reg16.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %reg16.i, align 2, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32.i) #10
  %24 = ptrtoint ptr %reg32.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %reg32.i, align 4, !annotation !227
  %call.i44 = call i32 @pcie_capability_read_word(ptr noundef %20, i32 noundef 10, ptr noundef nonnull %reg16.i) #10
  %25 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %reg16.i, align 2
  %call1.i = call i32 @pcie_capability_write_word(ptr noundef %20, i32 noundef 10, i16 noundef zeroext %26) #10
  %call.i.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %20, i32 noundef 28, i16 noundef zeroext 7, i16 noundef zeroext 0) #10
  %add.i = add nuw nsw i32 %conv.i, 48
  %call3.i = call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef %add.i, ptr noundef nonnull %reg32.i) #10
  %27 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg32.i, align 4
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %20, i32 noundef %add.i, i32 noundef %28) #10
  %add6.i = add nuw nsw i32 %conv.i, 16
  %call7.i = call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef %add6.i, ptr noundef nonnull %reg32.i) #10
  %29 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg32.i, align 4
  %call9.i = call i32 @pci_write_config_dword(ptr noundef %20, i32 noundef %add6.i, i32 noundef %30) #10
  %add10.i = add nuw nsw i32 %conv.i, 4
  %call11.i = call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef %add10.i, ptr noundef nonnull %reg32.i) #10
  %31 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg32.i, align 4
  %call13.i = call i32 @pci_write_config_dword(ptr noundef %20, i32 noundef %add10.i, i32 noundef %32) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable.addr.i.i) #10
  %33 = ptrtoint ptr %enable.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %enable.addr.i.i, align 1
  %call.i37.i = call i32 @set_device_error_reporting(ptr noundef %20, ptr noundef nonnull %enable.addr.i.i) #10
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 25
  %34 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %36 = and i16 %35, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 160, i16 %36)
  %cmp.i.i = icmp eq i16 %36, 160
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @pcie_walk_rcec(ptr noundef %20, ptr noundef nonnull @set_device_error_reporting, ptr noundef nonnull %enable.addr.i.i) #10
  br label %aer_enable_rootport.exit

if.else.i.i:                                      ; preds = %if.end13
  %subordinate.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 2
  %37 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %subordinate.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.else.i.i.aer_enable_rootport.exit_crit_edge, label %if.then2.i.i

if.else.i.i.aer_enable_rootport.exit_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aer_enable_rootport.exit

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_walk_bus(ptr noundef nonnull %38, ptr noundef nonnull @set_device_error_reporting, ptr noundef nonnull %enable.addr.i.i) #10
  br label %aer_enable_rootport.exit

aer_enable_rootport.exit:                         ; preds = %if.then2.i.i, %if.else.i.i.aer_enable_rootport.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable.addr.i.i) #10
  %add14.i = add nuw nsw i32 %conv.i, 44
  %call15.i = call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef %add14.i, ptr noundef nonnull %reg32.i) #10
  %39 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg32.i, align 4
  %or.i = or i32 %40, 7
  store i32 %or.i, ptr %reg32.i, align 4
  %call17.i = call i32 @pci_write_config_dword(ptr noundef %20, i32 noundef %add14.i, i32 noundef %or.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i) #10
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.85, i32 noundef %42) #14
  br label %cleanup

cleanup:                                          ; preds = %aer_enable_rootport.exit, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ 0, %aer_enable_rootport.exit ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aer_remove(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  %enable.addr.i.i = alloca i8, align 1
  %reg32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %aer_cap.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32.i) #10
  %6 = ptrtoint ptr %reg32.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg32.i, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable.addr.i.i) #10
  %7 = ptrtoint ptr %enable.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %enable.addr.i.i, align 1
  %call.i.i = call i32 @set_device_error_reporting(ptr noundef %3, ptr noundef nonnull %enable.addr.i.i) #10
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 25
  %8 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %10 = and i16 %9, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 160, i16 %10)
  %cmp.i.i = icmp eq i16 %10, 160
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @pcie_walk_rcec(ptr noundef %3, ptr noundef nonnull @set_device_error_reporting, ptr noundef nonnull %enable.addr.i.i) #10
  br label %aer_disable_rootport.exit

if.else.i.i:                                      ; preds = %entry
  %subordinate.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subordinate.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.else.i.i.aer_disable_rootport.exit_crit_edge, label %if.then2.i.i

if.else.i.i.aer_disable_rootport.exit_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aer_disable_rootport.exit

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_walk_bus(ptr noundef nonnull %12, ptr noundef nonnull @set_device_error_reporting, ptr noundef nonnull %enable.addr.i.i) #10
  br label %aer_disable_rootport.exit

aer_disable_rootport.exit:                        ; preds = %if.then2.i.i, %if.else.i.i.aer_disable_rootport.exit_crit_edge, %if.then.i.i
  %conv.i = zext i16 %5 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable.addr.i.i) #10
  %add.i = add nuw nsw i32 %conv.i, 44
  %call.i = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %reg32.i) #10
  %13 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg32.i, align 4
  %and.i = and i32 %14, -8
  store i32 %and.i, ptr %reg32.i, align 4
  %call2.i = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef %add.i, i32 noundef %and.i) #10
  %add3.i = add nuw nsw i32 %conv.i, 48
  %call4.i = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add3.i, ptr noundef nonnull %reg32.i) #10
  %15 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg32.i, align 4
  %call6.i = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef %add3.i, i32 noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_irq(i32 noundef %irq, ptr nocapture noundef readonly %context) #1 align 64 {
entry:
  %e_src = alloca %struct.aer_err_source, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %aer_cap, align 2
  %conv = zext i16 %5 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %e_src) #10
  %6 = ptrtoint ptr %e_src to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %e_src, align 8
  %add = add nuw nsw i32 %conv, 48
  %call1 = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %e_src) #10
  %7 = ptrtoint ptr %e_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %e_src, align 8
  %and = and i32 %8, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add3 = add nuw nsw i32 %conv, 52
  %id = getelementptr inbounds %struct.aer_err_source, ptr %e_src, i32 0, i32 1
  %call4 = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add3, ptr noundef %id) #10
  %9 = ptrtoint ptr %e_src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %e_src, align 8
  %call7 = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef %add, i32 noundef %10) #10
  %aer_fifo = getelementptr inbounds %struct.aer_rpc, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %aer_fifo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aer_fifo, align 4
  %out = getelementptr inbounds %struct.aer_rpc, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out, align 4
  %sub = sub i32 %12, %14
  %mask = getelementptr inbounds %struct.aer_rpc, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %16)
  %cmp.not = icmp ugt i32 %sub, %16
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %e_src to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %e_src, align 8
  %buf = getelementptr inbounds %struct.aer_rpc, ptr %1, i32 0, i32 1, i32 1
  %and18 = and i32 %16, %12
  %arrayidx = getelementptr %struct.aer_err_source, ptr %buf, i32 %and18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %arrayidx, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !235
  %20 = ptrtoint ptr %aer_fifo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aer_fifo, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %aer_fifo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 2, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e_src) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_isr(i32 noundef %irq, ptr nocapture noundef readonly %context) #1 align 64 {
entry:
  %e_info.i = alloca %struct.aer_err_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data.i = getelementptr inbounds %struct.pcie_device, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data.i, align 4
  %aer_fifo = getelementptr inbounds %struct.aer_rpc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %aer_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aer_fifo, align 4
  %out = getelementptr inbounds %struct.aer_rpc, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %6 = ptrtoint ptr %aer_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aer_fifo, align 4
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6.not40 = icmp eq i32 %7, %9
  br i1 %cmp6.not40, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %buf = getelementptr inbounds %struct.aer_rpc, ptr %1, i32 0, i32 1, i32 1
  %mask = getelementptr inbounds %struct.aer_rpc, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %id2.i = getelementptr inbounds %struct.aer_err_info, ptr %e_info.i, i32 0, i32 2
  %error_dev_num.i.i = getelementptr inbounds %struct.aer_err_info, ptr %e_info.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %aer_isr_one_error.exit.while.body_crit_edge, %while.body.lr.ph
  %10 = phi i32 [ %9, %while.body.lr.ph ], [ %69, %aer_isr_one_error.exit.while.body_crit_edge ]
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and = and i32 %12, %10
  %arrayidx = getelementptr %struct.aer_err_source, ptr %buf, i32 %and
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %arrayidx, align 4
  %e_src.sroa.0.0.extract.shift = lshr i64 %14, 32
  %e_src.sroa.0.0.extract.trunc = trunc i64 %e_src.sroa.0.0.extract.shift to i32
  %e_src.sroa.8.0.extract.trunc = trunc i64 %14 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !236
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %out, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %e_info.i) #10
  %19 = call ptr @memset(ptr %e_info.i, i32 255, i32 52)
  %aer_stats1.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 15
  %20 = ptrtoint ptr %aer_stats1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aer_stats1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  %.pre = and i32 %e_src.sroa.0.0.extract.trunc, 1
  br i1 %tobool.not.i.i, label %while.body.pci_rootport_aer_stats_incr.exit.i_crit_edge, label %if.end.i.i

while.body.pci_rootport_aer_stats_incr.exit.i_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_rootport_aer_stats_incr.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool2.not.i.i = icmp eq i32 %.pre, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rootport_total_cor_errs.i.i = getelementptr inbounds %struct.aer_stats, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %rootport_total_cor_errs.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rootport_total_cor_errs.i.i, align 8
  %inc.i.i = add i64 %23, 1
  store i64 %inc.i.i, ptr %rootport_total_cor_errs.i.i, align 8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %and6.i.i = and i32 %e_src.sroa.0.0.extract.trunc, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end4.i.i.pci_rootport_aer_stats_incr.exit.i_crit_edge, label %if.then8.i.i

if.end4.i.i.pci_rootport_aer_stats_incr.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_rootport_aer_stats_incr.exit.i

if.then8.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and10.i.i = and i32 %e_src.sroa.0.0.extract.trunc, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %rootport_total_nonfatal_errs.i.i = getelementptr inbounds %struct.aer_stats, ptr %21, i32 0, i32 8
  %rootport_total_fatal_errs.i.i = getelementptr inbounds %struct.aer_stats, ptr %21, i32 0, i32 7
  %rootport_total_nonfatal_errs.sink22.i.i = select i1 %tobool11.not.i.i, ptr %rootport_total_nonfatal_errs.i.i, ptr %rootport_total_fatal_errs.i.i
  %24 = ptrtoint ptr %rootport_total_nonfatal_errs.sink22.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rootport_total_nonfatal_errs.sink22.i.i, align 8
  %inc14.i.i = add i64 %25, 1
  store i64 %inc14.i.i, ptr %rootport_total_nonfatal_errs.sink22.i.i, align 8
  br label %pci_rootport_aer_stats_incr.exit.i

pci_rootport_aer_stats_incr.exit.i:               ; preds = %if.then8.i.i, %if.end4.i.i.pci_rootport_aer_stats_incr.exit.i_crit_edge, %while.body.pci_rootport_aer_stats_incr.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool.not.i = icmp eq i32 %.pre, 0
  br i1 %tobool.not.i, label %pci_rootport_aer_stats_incr.exit.i.if.end19.i_crit_edge, label %if.then.i

pci_rootport_aer_stats_incr.exit.i.if.end19.i_crit_edge: ; preds = %pci_rootport_aer_stats_incr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then.i:                                        ; preds = %pci_rootport_aer_stats_incr.exit.i
  %26 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i = load i32, ptr %id2.i, align 4
  %bf.shl.i = shl i32 %e_src.sroa.8.0.extract.trunc, 16
  %bf.clear.i = and i32 %bf.load.i, 16383
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  %and7.i = and i32 %e_src.sroa.0.0.extract.trunc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %bf.set5.i = and i32 %bf.set.i, -49409
  %bf.clear15.i = or i32 %bf.set5.i, 32768
  %bf.set12.i = or i32 %bf.set.i, 33024
  %storemerge75.i = select i1 %tobool8.not.i, i32 %bf.clear15.i, i32 %bf.set12.i
  %27 = ptrtoint ptr %id2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge75.i, ptr %id2.i, align 4
  %bf.lshr.i.i = lshr i32 %storemerge75.i, 16
  %28 = lshr i32 %storemerge75.i, 24
  %dev5.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %29 = and i32 %storemerge75.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i76.i = icmp eq i32 %29, 0
  %cond.i.i = select i1 %tobool.not.i76.i, ptr @.str.74, ptr @.str.90
  %bus11.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 1
  %30 = ptrtoint ptr %bus11.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus11.i.i, align 8
  %domain_nr.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %domain_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %domain_nr.i.i.i, align 8
  %34 = lshr i32 %storemerge75.i, 19
  %and15.i.i = and i32 %34, 31
  %and17.i.i = and i32 %bf.lshr.i.i, 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.88, ptr noundef nonnull %cond.i.i, ptr noundef nonnull @.str.62, i32 noundef %33, i32 noundef %28, i32 noundef %and15.i.i, i32 noundef %and17.i.i) #14
  %35 = ptrtoint ptr %error_dev_num.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %error_dev_num.i.i, align 4
  %call.i.i = call i32 @find_device_iter(ptr noundef %18, ptr noundef nonnull %e_info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i77.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i77.i, label %if.end.i78.i, label %if.then.i.if.then17.i_crit_edge

if.then.i.if.then17.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.end.i78.i:                                     ; preds = %if.then.i
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 25
  %36 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %38 = and i16 %37, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 160, i16 %38)
  %cmp.i.i = icmp eq i16 %38, 160
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @pcie_walk_rcec(ptr noundef %18, ptr noundef nonnull @find_device_iter, ptr noundef nonnull %e_info.i) #10
  br label %if.end3.i.i

if.else.i.i:                                      ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #12
  %subordinate.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 2
  %39 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %subordinate.i.i, align 4
  call void @pci_walk_bus(ptr noundef %40, ptr noundef nonnull @find_device_iter, ptr noundef nonnull %e_info.i) #10
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.else.i.i, %if.then2.i.i
  %41 = ptrtoint ptr %error_dev_num.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error_dev_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool5.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool5.not.i.i, label %find_source_device.exit.i, label %if.end3.i.i.if.then17.i_crit_edge

if.end3.i.i.if.then17.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

find_source_device.exit.i:                        ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load.i80.i = load i32, ptr %id2.i, align 4
  %bf.lshr.i81.i = lshr i32 %bf.load.i80.i, 16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.91, i32 noundef %bf.lshr.i81.i) #14
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end3.i.i.if.then17.i_crit_edge, %if.then.i.if.then17.i_crit_edge
  call fastcc void @aer_process_err_devices(ptr noundef nonnull %e_info.i) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %find_source_device.exit.i, %pci_rootport_aer_stats_incr.exit.i.if.end19.i_crit_edge
  %and21.i = and i32 %e_src.sroa.0.0.extract.trunc, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i.aer_isr_one_error.exit_crit_edge, label %if.then23.i

if.end19.i.aer_isr_one_error.exit_crit_edge:      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aer_isr_one_error.exit

if.then23.i:                                      ; preds = %if.end19.i
  %shr.i = and i32 %e_src.sroa.8.0.extract.trunc, -65536
  %44 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load26.i = load i32, ptr %id2.i, align 4
  %bf.clear29.i = and i32 %bf.load26.i, 16383
  %and32.i = shl i32 %e_src.sroa.0.0.extract.trunc, 8
  %45 = and i32 %and32.i, 16384
  %bf.set30.i = or i32 %45, %shr.i
  %46 = or i32 %bf.set30.i, %bf.clear29.i
  %and46.i = and i32 %e_src.sroa.0.0.extract.trunc, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  %bf.clear56.i = and i32 %46, -33025
  %bf.set52.i = or i32 %46, 256
  %storemerge74.i = select i1 %tobool47.not.i, i32 %bf.clear56.i, i32 %bf.set52.i
  %47 = ptrtoint ptr %id2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %storemerge74.i, ptr %id2.i, align 4
  %bf.lshr.i84.i = lshr i32 %storemerge74.i, 16
  %48 = lshr i32 %storemerge74.i, 24
  %dev5.i85.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %49 = and i32 %storemerge74.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i86.i = icmp eq i32 %49, 0
  %cond.i87.i = select i1 %tobool.not.i86.i, ptr @.str.74, ptr @.str.90
  %bf.lshr9.i88.i = lshr i32 %storemerge74.i, 14
  %bf.clear10.i89.i = and i32 %bf.lshr9.i88.i, 3
  %arrayidx.i90.i = getelementptr [3 x ptr], ptr @aer_error_severity_string, i32 0, i32 %bf.clear10.i89.i
  %50 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i90.i, align 4
  %bus11.i91.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 1
  %52 = ptrtoint ptr %bus11.i91.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus11.i91.i, align 8
  %domain_nr.i.i92.i = getelementptr inbounds %struct.pci_bus, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %domain_nr.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %domain_nr.i.i92.i, align 8
  %56 = lshr i32 %storemerge74.i, 19
  %and15.i93.i = and i32 %56, 31
  %and17.i94.i = and i32 %bf.lshr.i84.i, 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i85.i, ptr noundef nonnull @.str.88, ptr noundef nonnull %cond.i87.i, ptr noundef %51, i32 noundef %55, i32 noundef %48, i32 noundef %and15.i93.i, i32 noundef %and17.i94.i) #14
  %57 = ptrtoint ptr %error_dev_num.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %error_dev_num.i.i, align 4
  %call.i96.i = call i32 @find_device_iter(ptr noundef %18, ptr noundef nonnull %e_info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool.not.i97.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool.not.i97.i, label %if.end.i100.i, label %if.then23.i.if.then60.i_crit_edge

if.then23.i.if.then60.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60.i

if.end.i100.i:                                    ; preds = %if.then23.i
  %pcie_flags_reg.i.i.i98.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 25
  %58 = ptrtoint ptr %pcie_flags_reg.i.i.i98.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %pcie_flags_reg.i.i.i98.i, align 2
  %60 = and i16 %59, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 160, i16 %60)
  %cmp.i99.i = icmp eq i16 %60, 160
  br i1 %cmp.i99.i, label %if.then2.i101.i, label %if.else.i103.i

if.then2.i101.i:                                  ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @pcie_walk_rcec(ptr noundef %18, ptr noundef nonnull @find_device_iter, ptr noundef nonnull %e_info.i) #10
  br label %if.end3.i105.i

if.else.i103.i:                                   ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  %subordinate.i102.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 2
  %61 = ptrtoint ptr %subordinate.i102.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %subordinate.i102.i, align 4
  call void @pci_walk_bus(ptr noundef %62, ptr noundef nonnull @find_device_iter, ptr noundef nonnull %e_info.i) #10
  br label %if.end3.i105.i

if.end3.i105.i:                                   ; preds = %if.else.i103.i, %if.then2.i101.i
  %63 = ptrtoint ptr %error_dev_num.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %error_dev_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool5.not.i104.i = icmp eq i32 %64, 0
  br i1 %tobool5.not.i104.i, label %find_source_device.exit112.i, label %if.end3.i105.i.if.then60.i_crit_edge

if.end3.i105.i.if.then60.i_crit_edge:             ; preds = %if.end3.i105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60.i

find_source_device.exit112.i:                     ; preds = %if.end3.i105.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load.i108.i = load i32, ptr %id2.i, align 4
  %bf.lshr.i109.i = lshr i32 %bf.load.i108.i, 16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i85.i, ptr noundef nonnull @.str.91, i32 noundef %bf.lshr.i109.i) #14
  br label %aer_isr_one_error.exit

if.then60.i:                                      ; preds = %if.end3.i105.i.if.then60.i_crit_edge, %if.then23.i.if.then60.i_crit_edge
  call fastcc void @aer_process_err_devices(ptr noundef nonnull %e_info.i) #10
  br label %aer_isr_one_error.exit

aer_isr_one_error.exit:                           ; preds = %if.then60.i, %find_source_device.exit112.i, %if.end19.i.aer_isr_one_error.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %e_info.i) #10
  %66 = ptrtoint ptr %aer_fifo to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %aer_fifo, align 4
  %68 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %out, align 4
  %cmp6.not = icmp eq i32 %67, %69
  br i1 %cmp6.not, label %aer_isr_one_error.exit.cleanup_crit_edge, label %aer_isr_one_error.exit.while.body_crit_edge

aer_isr_one_error.exit.while.body_crit_edge:      ; preds = %aer_isr_one_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

aer_isr_one_error.exit.cleanup_crit_edge:         ; preds = %aer_isr_one_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %aer_isr_one_error.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %while.cond.preheader.cleanup_crit_edge ], [ 1, %aer_isr_one_error.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aer_process_err_devices(ptr noundef %e_info) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %error_dev_num = getelementptr inbounds %struct.aer_err_info, ptr %e_info, i32 0, i32 1
  %0 = ptrtoint ptr %error_dev_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_dev_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp47 = icmp sgt i32 %1, 0
  br i1 %cmp47, label %entry.land.rhs_crit_edge, label %entry.for.end25_crit_edge

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr %e_info, i32 0, i32 %i.048
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.endthread-pre-split, label %for.body

for.body:                                         ; preds = %land.rhs
  %call = tail call i32 @aer_get_device_error_info(ptr noundef nonnull %3, ptr noundef %e_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @aer_print_error(ptr noundef %5, ptr noundef %e_info)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %6 = ptrtoint ptr %error_dev_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_dev_num, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.endthread-pre-split:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %error_dev_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %error_dev_num, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %for.inc.for.end_crit_edge
  %9 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %7, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp849 = icmp sgt i32 %9, 0
  br i1 %cmp849, label %land.rhs9.lr.ph, label %for.end.for.end25_crit_edge

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

land.rhs9.lr.ph:                                  ; preds = %for.end
  %severity.i = getelementptr inbounds %struct.aer_err_info, ptr %e_info, i32 0, i32 2
  %status.i = getelementptr inbounds %struct.aer_err_info, ptr %e_info, i32 0, i32 3
  br label %land.rhs9

land.rhs9:                                        ; preds = %for.inc23.land.rhs9_crit_edge, %land.rhs9.lr.ph
  %i.150 = phi i32 [ 0, %land.rhs9.lr.ph ], [ %inc24, %for.inc23.land.rhs9_crit_edge ]
  %arrayidx11 = getelementptr [5 x ptr], ptr %e_info, i32 0, i32 %i.150
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %land.rhs9.for.end25_crit_edge, label %for.body14

land.rhs9.for.end25_crit_edge:                    ; preds = %land.rhs9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.body14:                                       ; preds = %land.rhs9
  %call17 = tail call i32 @aer_get_device_error_info(ptr noundef nonnull %11, ptr noundef %e_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.body14.for.inc23_crit_edge, label %if.then19

for.body14.for.inc23_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc23

if.then19:                                        ; preds = %for.body14
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 4
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %aer_cap.i, align 2
  %conv.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %severity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %severity.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 14
  %bf.clear.i = and i32 %bf.lshr.i, 3
  %17 = zext i32 %bf.clear.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %bf.clear.i, label %if.then19.handle_error_source.exit_crit_edge [
    i32 2, label %if.then.i
    i32 0, label %if.then13.i
    i32 1, label %if.then22.i
  ]

if.then19.handle_error_source.exit_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_error_source.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw nsw i32 %conv.i, 16
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status.i, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %13, i32 noundef %add.i, i32 noundef %19) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call ptr @pci_find_host_bridge(ptr noundef %21) #10
  %22 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %aer_cap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i.i, label %if.end.i.handle_error_source.exit_crit_edge, label %if.end.i.i

if.end.i.handle_error_source.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_error_source.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %24 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool1.not.i.i, label %pcie_aer_is_native.exit.i, label %if.end.i.i.if.then5.i_crit_edge

if.end.i.i.if.then5.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

pcie_aer_is_native.exit.i:                        ; preds = %if.end.i.i
  %native_aer.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i.i, i32 0, i32 13
  %25 = ptrtoint ptr %native_aer.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i.i = load i16, ptr %native_aer.i.i, align 8
  %26 = and i16 %bf.load.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool4.not.i = icmp eq i16 %26, 0
  br i1 %tobool4.not.i, label %pcie_aer_is_native.exit.i.handle_error_source.exit_crit_edge, label %pcie_aer_is_native.exit.i.if.then5.i_crit_edge

pcie_aer_is_native.exit.i.if.then5.i_crit_edge:   ; preds = %pcie_aer_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

pcie_aer_is_native.exit.i.handle_error_source.exit_crit_edge: ; preds = %pcie_aer_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_error_source.exit

if.then5.i:                                       ; preds = %pcie_aer_is_native.exit.i.if.then5.i_crit_edge, %if.end.i.i.if.then5.i_crit_edge
  tail call void @pcie_clear_device_status(ptr noundef %13) #10
  br label %handle_error_source.exit

if.then13.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = tail call i32 @pcie_do_recovery(ptr noundef %13, i32 noundef 1, ptr noundef nonnull @aer_root_reset) #10
  br label %handle_error_source.exit

if.then22.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %call23.i = tail call i32 @pcie_do_recovery(ptr noundef %13, i32 noundef 2, ptr noundef nonnull @aer_root_reset) #10
  br label %handle_error_source.exit

handle_error_source.exit:                         ; preds = %if.then22.i, %if.then13.i, %if.then5.i, %pcie_aer_is_native.exit.i.handle_error_source.exit_crit_edge, %if.end.i.handle_error_source.exit_crit_edge, %if.then19.handle_error_source.exit_crit_edge
  tail call void @pci_dev_put(ptr noundef %13) #10
  br label %for.inc23

for.inc23:                                        ; preds = %handle_error_source.exit, %for.body14.for.inc23_crit_edge
  %inc24 = add nuw nsw i32 %i.150, 1
  %27 = ptrtoint ptr %error_dev_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %error_dev_num, align 4
  %cmp8 = icmp slt i32 %inc24, %28
  br i1 %cmp8, label %for.inc23.land.rhs9_crit_edge, label %for.inc23.for.end25_crit_edge

for.inc23.for.end25_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.inc23.land.rhs9_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs9

for.end25:                                        ; preds = %for.inc23.for.end25_crit_edge, %land.rhs9.for.end25_crit_edge, %for.end.for.end25_crit_edge, %entry.for.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @find_device_iter(ptr noundef %dev, ptr nocapture noundef %data) #1 align 64 {
entry:
  %status.i = alloca i32, align 4
  %mask.i = alloca i32, align 4
  %reg16.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aer_cap.i, align 2
  %conv.i = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #10
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status.i, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #10
  %3 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mask.i, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16.i) #10
  %4 = ptrtoint ptr %reg16.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %reg16.i, align 2, !annotation !227
  %id.i = getelementptr inbounds %struct.aer_err_info, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %id.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load.i)
  %cmp.not.i = icmp ult i32 %bf.load.i, 16777216
  br i1 %cmp.not.i, label %entry.if.end17.i_crit_edge, label %land.lhs.true.i

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %entry
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %bus_flags.i = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bus_flags.i, align 2
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12
  %11 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %number.i, align 4
  %conv8.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devfn.i, align 4
  %or.i = or i32 %shl.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %or.i)
  %cmp9.i = icmp eq i32 %bf.lshr.i, %or.i
  br i1 %cmp9.i, label %is_error_source.exit.thread13, label %if.end.i

is_error_source.exit.thread13:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #10
  br label %if.then

if.end.i:                                         ; preds = %if.then.i
  %15 = and i32 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not.i = icmp eq i32 %15, 0
  br i1 %tobool14.not.i, label %if.end.i.is_error_source.exit.thread_crit_edge, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.end.i.is_error_source.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_error_source.exit.thread

if.end17.i:                                       ; preds = %if.end.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %enable_cnt.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 51
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %enable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %enable_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp18.i = icmp eq i32 %17, 0
  br i1 %cmp18.i, label %if.end17.i.is_error_source.exit.thread_crit_edge, label %if.end21.i

if.end17.i.is_error_source.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_error_source.exit.thread

if.end21.i:                                       ; preds = %if.end17.i
  %call22.i = call i32 @pcie_capability_read_word(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull %reg16.i) #10
  %18 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg16.i, align 2
  %20 = and i16 %19, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool25.not.i = icmp eq i16 %20, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool28.not.i = icmp eq i16 %1, 0
  %or.cond.i = select i1 %tobool25.not.i, i1 true, i1 %tobool28.not.i
  br i1 %or.cond.i, label %if.end21.i.is_error_source.exit.thread_crit_edge, label %is_error_source.exit

if.end21.i.is_error_source.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_error_source.exit.thread

is_error_source.exit.thread:                      ; preds = %if.end21.i.is_error_source.exit.thread_crit_edge, %if.end17.i.is_error_source.exit.thread_crit_edge, %if.end.i.is_error_source.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #10
  br label %if.end6

is_error_source.exit:                             ; preds = %if.end21.i
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load31.i = load i32, ptr %id.i, align 4
  %22 = and i32 %bf.load31.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %22)
  %cmp34.i = icmp eq i32 %22, 32768
  %..i = select i1 %cmp34.i, i32 16, i32 4
  %.69.i = select i1 %cmp34.i, i32 20, i32 8
  %add40.i = add nuw nsw i32 %..i, %conv.i
  %call41.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add40.i, ptr noundef nonnull %status.i) #10
  %add42.i = add nuw nsw i32 %.69.i, %conv.i
  %call43.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add42.i, ptr noundef nonnull %mask.i) #10
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status.i, align 4
  %25 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %26, -1
  %and45.i = and i32 %24, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i.not = icmp eq i32 %and45.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #10
  br i1 %tobool46.not.i.not, label %is_error_source.exit.if.end6_crit_edge, label %is_error_source.exit.if.then_crit_edge

is_error_source.exit.if.then_crit_edge:           ; preds = %is_error_source.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

is_error_source.exit.if.end6_crit_edge:           ; preds = %is_error_source.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %is_error_source.exit.if.then_crit_edge, %is_error_source.exit.thread13
  %error_dev_num.i = getelementptr inbounds %struct.aer_err_info, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %error_dev_num.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %error_dev_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp.i = icmp slt i32 %28, 5
  br i1 %cmp.i, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i = call ptr @pci_dev_get(ptr noundef %dev) #10
  %29 = ptrtoint ptr %error_dev_num.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error_dev_num.i, align 4
  %arrayidx.i = getelementptr [5 x ptr], ptr %data, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %32 = load i32, ptr %error_dev_num.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %error_dev_num.i, align 4
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load = load i32, ptr %id.i, align 4
  %34 = and i32 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool3.not = icmp eq i32 %34, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %is_error_source.exit.if.end6_crit_edge, %is_error_source.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_walk_rcec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_clear_device_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_do_recovery(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_root_reset(ptr noundef %dev) #1 align 64 {
entry:
  %reg32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %2 = lshr i16 %1, 4
  %3 = and i16 %2, 15
  %4 = zext i16 %3 to i32
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %call1 = tail call ptr @pci_find_host_bridge(ptr noundef %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32) #10
  %7 = ptrtoint ptr %reg32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg32, align 4, !annotation !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %3)
  %cmp = icmp eq i16 %3, 9
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %tobool.not7.i = icmp eq ptr %dev, null
  br i1 %tobool.not7.i, label %if.else.cond.end_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

while.body.i:                                     ; preds = %pci_upstream_bridge.exit.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %dev.addr.08.i = phi ptr [ %23, %pci_upstream_bridge.exit.i.while.body.i_crit_edge ], [ %dev, %if.else.while.body.i_crit_edge ]
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 19
  %8 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 25
  %10 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %12 = and i16 %11, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %12)
  %cmp.i = icmp eq i16 %12, 64
  br i1 %cmp.i, label %land.lhs.true.i.cond.true_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.cond.true_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %is_virtfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 49
  %13 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %14 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %14, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.pci_physfn.exit.i.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 66
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %if.end.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %17, %if.then.i.i.i ], [ %dev.addr.08.i, %if.end.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.cond.end_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.cond.end_crit_edge:           ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %pci_upstream_bridge.exit.i.cond.end_crit_edge, label %pci_upstream_bridge.exit.i.while.body.i_crit_edge

pci_upstream_bridge.exit.i.while.body.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

pci_upstream_bridge.exit.i.cond.end_crit_edge:    ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end:                                           ; preds = %entry
  %rcec = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 17
  %24 = ptrtoint ptr %rcec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rcec, align 8
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %if.end.cond.true_crit_edge

if.end.cond.true_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end.cond.true_crit_edge, %land.lhs.true.i.cond.true_crit_edge
  %root.0100 = phi ptr [ %25, %if.end.cond.true_crit_edge ], [ %dev.addr.08.i, %land.lhs.true.i.cond.true_crit_edge ]
  %aer_cap = getelementptr inbounds %struct.pci_dev, ptr %root.0100, i32 0, i32 14
  %26 = ptrtoint ptr %aer_cap to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %aer_cap, align 2
  %conv = zext i16 %27 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge, %pci_upstream_bridge.exit.i.cond.end_crit_edge, %pci_physfn.exit.i.i.cond.end_crit_edge, %if.else.cond.end_crit_edge
  %root.095 = phi ptr [ %root.0100, %cond.true ], [ null, %if.end.cond.end_crit_edge ], [ null, %if.else.cond.end_crit_edge ], [ null, %pci_physfn.exit.i.i.cond.end_crit_edge ], [ null, %pci_upstream_bridge.exit.i.cond.end_crit_edge ]
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %if.end.cond.end_crit_edge ], [ 0, %if.else.cond.end_crit_edge ], [ 0, %pci_physfn.exit.i.i.cond.end_crit_edge ], [ 0, %pci_upstream_bridge.exit.i.cond.end_crit_edge ]
  %native_aer = getelementptr inbounds %struct.pci_host_bridge, ptr %call1, i32 0, i32 13
  %28 = ptrtoint ptr %native_aer to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %native_aer, align 8
  %29 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool3.not = icmp eq i16 %29, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %cond.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %30 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool4.not = icmp eq i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool6.not = icmp eq i32 %cond, 0
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool6.not.old = icmp eq i32 %cond, 0
  br i1 %tobool6.not.old, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.if.then7_crit_edge

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %lor.lhs.false.if.then7_crit_edge
  %add = add nuw nsw i32 %cond, 44
  %call8 = call i32 @pci_read_config_dword(ptr noundef %root.095, i32 noundef %add, ptr noundef nonnull %reg32) #10
  %31 = ptrtoint ptr %reg32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg32, align 4
  %and = and i32 %32, -8
  store i32 %and, ptr %reg32, align 4
  %call10 = call i32 @pci_write_config_dword(ptr noundef %root.095, i32 noundef %add, i32 noundef %and) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %lor.lhs.false.if.end11_crit_edge
  %call.off = add nsw i32 %4, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off)
  %switch = icmp ult i32 %call.off, 2
  br i1 %switch, label %if.then17, label %if.else28

if.then17:                                        ; preds = %if.end11
  %call18 = call i32 @pcie_reset_flr(ptr noundef %dev, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool19.not, label %do.end, label %do.end25

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.93) #14
  br label %if.end38

do.end25:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.96, i32 noundef %call18) #14
  br label %if.end38

if.else28:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = call i32 @pci_bus_error_reset(ptr noundef %dev) #10
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 8
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i, align 8
  %tobool.not.i92 = icmp eq ptr %36, null
  %cond37 = select i1 %tobool.not.i92, ptr @.str.101, ptr @.str.102
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef nonnull @.str.99, ptr noundef nonnull %cond37, i32 noundef %call29) #14
  br label %if.end38

if.end38:                                         ; preds = %if.else28, %do.end25, %do.end
  %rc.0 = phi i32 [ 1, %do.end25 ], [ 0, %do.end ], [ %call29, %if.else28 ]
  %37 = ptrtoint ptr %native_aer to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load40 = load i16, ptr %native_aer, align 8
  %38 = and i16 %bf.load40, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool44.not = icmp eq i16 %38, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %land.lhs.true48

lor.lhs.false45:                                  ; preds = %if.end38
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %39 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool46.not = icmp eq i8 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool49.not = icmp eq i32 %cond, 0
  %or.cond91 = select i1 %tobool46.not, i1 true, i1 %tobool49.not
  br i1 %or.cond91, label %lor.lhs.false45.if.end59_crit_edge, label %lor.lhs.false45.if.then50_crit_edge

lor.lhs.false45.if.then50_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

lor.lhs.false45.if.end59_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

land.lhs.true48:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool49.not.old = icmp eq i32 %cond, 0
  br i1 %tobool49.not.old, label %land.lhs.true48.if.end59_crit_edge, label %land.lhs.true48.if.then50_crit_edge

land.lhs.true48.if.then50_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

land.lhs.true48.if.end59_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then50:                                        ; preds = %land.lhs.true48.if.then50_crit_edge, %lor.lhs.false45.if.then50_crit_edge
  %add51 = add nuw nsw i32 %cond, 48
  %call52 = call i32 @pci_read_config_dword(ptr noundef %root.095, i32 noundef %add51, ptr noundef nonnull %reg32) #10
  %40 = ptrtoint ptr %reg32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg32, align 4
  %call54 = call i32 @pci_write_config_dword(ptr noundef %root.095, i32 noundef %add51, i32 noundef %41) #10
  %add55 = add nuw nsw i32 %cond, 44
  %call56 = call i32 @pci_read_config_dword(ptr noundef %root.095, i32 noundef %add55, ptr noundef nonnull %reg32) #10
  %42 = ptrtoint ptr %reg32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg32, align 4
  %or = or i32 %43, 7
  store i32 %or, ptr %reg32, align 4
  %call58 = call i32 @pci_write_config_dword(ptr noundef %root.095, i32 noundef %add55, i32 noundef %or) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then50, %land.lhs.true48.if.end59_crit_edge, %lor.lhs.false45.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool60.not = icmp eq i32 %rc.0, 0
  %cond61 = select i1 %tobool60.not, i32 5, i32 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32) #10
  ret i32 %cond61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_reset_flr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_error_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_device_error_reporting(ptr noundef %dev, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 15
  %6 = zext i16 %5 to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %6, label %if.end10 [
    i32 4, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge42
    i32 5, label %entry.if.then_crit_edge43
    i32 6, label %entry.if.then_crit_edge44
  ]

entry.if.then_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge42, %entry.if.then_crit_edge43, %entry.if.then_crit_edge44
  %bus.i.i21 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i21, align 8
  %call.i.i22 = tail call ptr @pci_find_host_bridge(ptr noundef %9) #10
  %aer_cap.i.i23 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %aer_cap.i.i23 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %aer_cap.i.i23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i.i24 = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  br i1 %tobool.not.i.i24, label %if.then7.if.then12_crit_edge, label %if.end.i.i

if.then7.if.then12_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end.i.i:                                       ; preds = %if.then7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %12 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i.i, label %pcie_aer_is_native.exit.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

pcie_aer_is_native.exit.i:                        ; preds = %if.end.i.i
  %native_aer.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i.i22, i32 0, i32 13
  %13 = ptrtoint ptr %native_aer.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i.i = load i16, ptr %native_aer.i.i, align 8
  %14 = and i16 %bf.load.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %pcie_aer_is_native.exit.i.if.then12_crit_edge, label %pcie_aer_is_native.exit.i.if.end.i_crit_edge

pcie_aer_is_native.exit.i.if.end.i_crit_edge:     ; preds = %pcie_aer_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

pcie_aer_is_native.exit.i.if.then12_crit_edge:    ; preds = %pcie_aer_is_native.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end.i:                                         ; preds = %pcie_aer_is_native.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %call.i4.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 8, i16 noundef zeroext 0, i16 noundef zeroext 15) #10
  br label %if.then12

if.else:                                          ; preds = %if.then
  br i1 %tobool.not.i.i24, label %if.else.if.end13_crit_edge, label %if.end.i.i26

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end.i.i26:                                     ; preds = %if.else
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_native to i32))
  %15 = load i8, ptr @pcie_ports_native, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i.i25 = icmp eq i8 %15, 0
  br i1 %tobool1.not.i.i25, label %pcie_aer_is_native.exit.i30, label %if.end.i.i26.if.end.i33_crit_edge

if.end.i.i26.if.end.i33_crit_edge:                ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i33

pcie_aer_is_native.exit.i30:                      ; preds = %if.end.i.i26
  %native_aer.i.i27 = getelementptr inbounds %struct.pci_host_bridge, ptr %call.i.i22, i32 0, i32 13
  %16 = ptrtoint ptr %native_aer.i.i27 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i28 = load i16, ptr %native_aer.i.i27, align 8
  %17 = and i16 %bf.load.i.i28, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i29 = icmp eq i16 %17, 0
  br i1 %tobool.not.i29, label %pcie_aer_is_native.exit.i30.if.end13_crit_edge, label %pcie_aer_is_native.exit.i30.if.end.i33_crit_edge

pcie_aer_is_native.exit.i30.if.end.i33_crit_edge: ; preds = %pcie_aer_is_native.exit.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i33

pcie_aer_is_native.exit.i30.if.end13_crit_edge:   ; preds = %pcie_aer_is_native.exit.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end.i33:                                       ; preds = %pcie_aer_is_native.exit.i30.if.end.i33_crit_edge, %if.end.i.i26.if.end.i33_crit_edge
  %call.i4.i31 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef 8, i16 noundef zeroext 15, i16 noundef zeroext 0) #10
  br label %if.end13

if.end10:                                         ; preds = %entry
  br i1 %tobool.not, label %if.end10.if.end13_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end.i, %pcie_aer_is_native.exit.i.if.then12_crit_edge, %if.then7.if.then12_crit_edge
  tail call void @pcie_set_ecrc_checking(ptr noundef %dev)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge, %if.end.i33, %pcie_aer_is_native.exit.i30.if.end13_crit_edge, %if.else.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !51, !52, !54, !56, !57, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216}
!llvm.named.register.sp = !{!217}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !{ptr @__ksymtab_pci_enable_pcie_error_reporting, !1, !"__ksymtab_pci_enable_pcie_error_reporting", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/aer.c", i32 235, i32 1}
!2 = !{ptr @__ksymtab_pci_disable_pcie_error_reporting, !3, !"__ksymtab_pci_disable_pcie_error_reporting", i1 false, i1 false}
!3 = !{!"../drivers/pci/pcie/aer.c", i32 247, i32 1}
!4 = !{ptr @__ksymtab_pci_aer_clear_nonfatal_status, !5, !"__ksymtab_pci_aer_clear_nonfatal_status", i1 false, i1 false}
!5 = !{!"../drivers/pci/pcie/aer.c", i32 266, i32 1}
!6 = !{ptr @aer_stats_attr_group, !7, !"aer_stats_attr_group", i1 false, i1 false}
!7 = !{!"../drivers/pci/pcie/aer.c", i32 608, i32 30}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/pcie/aer.c", i32 706, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @aer_print_error._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @aer_print_error._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/pcie/aer.c", i32 714, i32 48}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/pcie/aer.c", i32 716, i32 2}
!20 = !{ptr @aer_print_error._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @aer_print_error._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/pcie/aer.c", i32 720, i32 2}
!24 = !{ptr @aer_print_error._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @aer_print_error._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/pcie/aer.c", i32 730, i32 3}
!28 = !{ptr @aer_print_error._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @aer_print_error._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"pcie_aer_disable", i1 false, i1 false}
!31 = !{!"../drivers/pci/pcie/aer.c", i32 104, i32 12}
!32 = !{ptr @ecrc_policy, !33, !"ecrc_policy", i1 false, i1 false}
!33 = !{!"../drivers/pci/pcie/aer.c", i32 123, i32 12}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/pcie/aer.c", i32 126, i32 26}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/pcie/aer.c", i32 127, i32 22}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/pcie/aer.c", i32 128, i32 21}
!40 = !{ptr @ecrc_policy_str, !41, !"ecrc_policy_str", i1 false, i1 false}
!41 = !{!"../drivers/pci/pcie/aer.c", i32 125, i32 27}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/pcie/aer.c", i32 572, i32 1}
!44 = !{ptr @dev_attr_aer_rootport_total_err_cor, !43, !"dev_attr_aer_rootport_total_err_cor", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/pcie/aer.c", i32 574, i32 1}
!48 = !{ptr @dev_attr_aer_rootport_total_err_fatal, !47, !"dev_attr_aer_rootport_total_err_fatal", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/pcie/aer.c", i32 576, i32 1}
!51 = !{ptr @dev_attr_aer_rootport_total_err_nonfatal, !50, !"dev_attr_aer_rootport_total_err_nonfatal", i1 false, i1 false}
!52 = !{ptr @aer_stats_attrs, !53, !"aer_stats_attrs", i1 false, i1 false}
!53 = !{!"../drivers/pci/pcie/aer.c", i32 579, i32 26}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/pcie/aer.c", i32 552, i32 1}
!56 = !{ptr @dev_attr_aer_dev_correctable, !55, !"dev_attr_aer_dev_correctable", i1 false, i1 false}
!57 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/pcie/aer.c", i32 449, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pci/pcie/aer.c", i32 455, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/pcie/aer.c", i32 456, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/pcie/aer.c", i32 457, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/pcie/aer.c", i32 461, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pci/pcie/aer.c", i32 462, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/pcie/aer.c", i32 463, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/pcie/aer.c", i32 464, i32 2}
!77 = !{ptr @aer_correctable_error_string, !78, !"aer_correctable_error_string", i1 false, i1 false}
!78 = !{!"../drivers/pci/pcie/aer.c", i32 448, i32 20}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pci/pcie/aer.c", i32 555, i32 1}
!81 = !{ptr @dev_attr_aer_dev_fatal, !80, !"dev_attr_aer_dev_fatal", i1 false, i1 false}
!82 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/pcie/aer.c", i32 484, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/pcie/aer.c", i32 488, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pci/pcie/aer.c", i32 489, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/pcie/aer.c", i32 496, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/pcie/aer.c", i32 497, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/pcie/aer.c", i32 498, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/pcie/aer.c", i32 499, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/pcie/aer.c", i32 500, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/pcie/aer.c", i32 501, i32 2}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/pcie/aer.c", i32 502, i32 2}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pci/pcie/aer.c", i32 503, i32 2}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/pcie/aer.c", i32 504, i32 2}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pci/pcie/aer.c", i32 505, i32 2}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/pcie/aer.c", i32 506, i32 2}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pci/pcie/aer.c", i32 507, i32 2}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/pcie/aer.c", i32 508, i32 2}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pci/pcie/aer.c", i32 509, i32 2}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/pcie/aer.c", i32 510, i32 2}
!120 = !{ptr @aer_uncorrectable_error_string, !121, !"aer_uncorrectable_error_string", i1 false, i1 false}
!121 = !{!"../drivers/pci/pcie/aer.c", i32 483, i32 20}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/pcie/aer.c", i32 558, i32 1}
!124 = !{ptr @dev_attr_aer_dev_nonfatal, !123, !"dev_attr_aer_dev_nonfatal", i1 false, i1 false}
!125 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/pcie/aer.c", i32 437, i32 2}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/pcie/aer.c", i32 438, i32 2}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pci/pcie/aer.c", i32 439, i32 2}
!133 = !{ptr @aer_error_severity_string, !134, !"aer_error_severity_string", i1 false, i1 false}
!134 = !{!"../drivers/pci/pcie/aer.c", i32 436, i32 20}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pci/pcie/aer.c", i32 443, i32 2}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pci/pcie/aer.c", i32 444, i32 2}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pci/pcie/aer.c", i32 445, i32 2}
!141 = !{ptr @aer_error_layer, !142, !"aer_error_layer", i1 false, i1 false}
!142 = !{!"../drivers/pci/pcie/aer.c", i32 442, i32 20}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pci/pcie/aer.c", i32 519, i32 2}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pci/pcie/aer.c", i32 520, i32 2}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/pcie/aer.c", i32 521, i32 2}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/pcie/aer.c", i32 522, i32 2}
!151 = !{ptr @aer_agent_string, !152, !"aer_agent_string", i1 false, i1 false}
!152 = !{!"../drivers/pci/pcie/aer.c", i32 518, i32 20}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pci/pcie/aer.c", i32 691, i32 13}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pci/pcie/aer.c", i32 693, i32 3}
!157 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @__aer_print_error._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @__aer_print_error._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pci/pcie/aer.c", i32 668, i32 2}
!164 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @__print_tlp_header._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @__print_tlp_header._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../include/ras/ras_event.h", i32 298, i32 1}
!169 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!170 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!171 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!174 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pci/pcie/aer.c", i32 1436, i32 11}
!177 = !{ptr @aerdriver, !178, !"aerdriver", i1 false, i1 false}
!178 = !{!"../drivers/pci/pcie/aer.c", i32 1435, i32 40}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pci/pcie/aer.c", i32 1359, i32 22}
!181 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/pci/pcie/aer.c", i32 1361, i32 3}
!183 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @aer_probe._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @aer_probe._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pci/pcie/aer.c", i32 1366, i32 2}
!188 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @aer_probe._entry.84, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @aer_probe._entry_ptr.87, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pci/pcie/aer.c", i32 741, i32 2}
!193 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @aer_print_port_info._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @aer_print_port_info._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pci/pcie/aer.c", i32 929, i32 3}
!199 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @find_source_device._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @find_source_device._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pci/pcie/aer.c", i32 1412, i32 4}
!204 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @aer_root_reset._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @aer_root_reset._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pci/pcie/aer.c", i32 1414, i32 4}
!209 = !{ptr @aer_root_reset._entry.95, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @aer_root_reset._entry_ptr.97, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pci/pcie/aer.c", i32 1417, i32 3}
!213 = !{ptr @aer_root_reset._entry.98, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @aer_root_reset._entry_ptr.100, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!217 = !{!"sp"}
!218 = !{i32 1, !"wchar_size", i32 2}
!219 = !{i32 1, !"min_enum_size", i32 4}
!220 = !{i32 8, !"branch-target-enforcement", i32 0}
!221 = !{i32 8, !"sign-return-address", i32 0}
!222 = !{i32 8, !"sign-return-address-all", i32 0}
!223 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!224 = !{i32 7, !"uwtable", i32 1}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!227 = !{!"auto-init"}
!228 = !{i8 0, i8 2}
!229 = !{i64 2149045009, i64 2149045014, i64 2149045027, i64 2149045071, i64 2149045105, i64 2149045126}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{i64 2155308495}
!232 = !{i64 2155308774}
!233 = !{i64 2149541921}
!234 = !{i64 2149542957}
!235 = !{i64 2155406790}
!236 = !{i64 2155405170}
