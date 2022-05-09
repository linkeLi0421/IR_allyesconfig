; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/aspm.c_pt.bc'
source_filename = "../drivers/pci/pcie/aspm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pci_disable_link_state_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_disable_link_state_locked\09\09\09\09"
module asm "\09.long\09__crc_pci_disable_link_state_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_link_state_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_link_state_locked\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_link_state_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_disable_link_state\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_disable_link_state\09\09\09\09"
module asm "\09.long\09__crc_pci_disable_link_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_link_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcie_aspm_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_aspm_enabled\09\09\09\09"
module asm "\09.long\09__crc_pcie_aspm_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_aspm_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_aspm_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_aspm_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcie_aspm_support_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_aspm_support_enabled\09\09\09\09"
module asm "\09.long\09__crc_pcie_aspm_support_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_aspm_support_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_aspm_support_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_aspm_support_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pcie_link_state = type { ptr, ptr, ptr, ptr, %struct.list_head, i32, i16 }

@aspm_support_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@aspm_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @aspm_lock, i64 52), ptr getelementptr (i8, ptr @aspm_lock, i64 52) }, ptr @aspm_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@aspm_policy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@aspm_disabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_pci_disable_link_state_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_link_state_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_link_state_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_link_state_locked to i32), ptr @__kstrtab_pci_disable_link_state_locked, ptr @__kstrtabns_pci_disable_link_state_locked }, section "___ksymtab+pci_disable_link_state_locked", align 4
@__kstrtab_pci_disable_link_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_link_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_link_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_link_state to i32), ptr @__kstrtab_pci_disable_link_state, ptr @__kstrtabns_pci_disable_link_state }, section "___ksymtab+pci_disable_link_state", align 4
@__param_str_policy = internal constant [17 x i8] c"pcie_aspm.policy\00", align 1
@__param_ops_policy = internal constant %struct.kernel_param_ops { i32 0, ptr @pcie_aspm_set_policy, ptr @pcie_aspm_get_policy, ptr null }, align 4
@__param_policy = internal constant %struct.kernel_param { ptr @__param_str_policy, ptr null, ptr @__param_ops_policy, i16 420, i8 -1, i8 0, %union.anon.65 zeroinitializer }, section "__param", align 4
@__kstrtab_pcie_aspm_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_aspm_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_aspm_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_aspm_enabled to i32), ptr @__kstrtab_pcie_aspm_enabled, ptr @__kstrtabns_pcie_aspm_enabled }, section "___ksymtab_gpl+pcie_aspm_enabled", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@aspm_ctrl_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_clkpm, ptr @dev_attr_l0s_aspm, ptr @dev_attr_l1_aspm, ptr @dev_attr_l1_1_aspm, ptr @dev_attr_l1_2_aspm, ptr @dev_attr_l1_1_pcipm, ptr @dev_attr_l1_2_pcipm, ptr null], [32 x i8] zeroinitializer }, align 32
@aspm_ctrl_attr_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str, ptr @aspm_ctrl_attrs_are_visible, ptr null, ptr @aspm_ctrl_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__setup_str_pcie_aspm_disable = internal constant [11 x i8] c"pcie_aspm=\00", section ".init.rodata", align 1
@__setup_pcie_aspm_disable = internal global %struct.obs_kernel_param { ptr @__setup_str_pcie_aspm_disable, ptr @pcie_aspm_disable, i32 0 }, section ".init.setup", align 4
@aspm_force = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_pcie_aspm_support_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_aspm_support_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_aspm_support_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_aspm_support_enabled to i32), ptr @__kstrtab_pcie_aspm_support_enabled, ptr @__kstrtabns_pcie_aspm_support_enabled }, section "___ksymtab+pcie_aspm_support_enabled", align 4
@pcie_aspm_sanity_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 828, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"disabling ASPM on pre-1.1 PCIe device.  You can enable it with 'pcie_aspm=force'\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcie_aspm_sanity_check\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pci/pcie/aspm.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcie_aspm_sanity_check._entry_ptr = internal global ptr @pcie_aspm_sanity_check._entry, section ".printk_index", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aspm_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aspm_lock\00", [22 x i8] zeroinitializer }, align 32
@link_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @link_list, ptr @link_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pcie_aspm_configure_common_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ASPM: current common clock configuration is inconsistent, reconfiguring\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcie_aspm_configure_common_clock\00", [63 x i8] zeroinitializer }, align 32
@pcie_aspm_configure_common_clock._entry_ptr = internal global ptr @pcie_aspm_configure_common_clock._entry, section ".printk_index", align 4
@pcie_aspm_configure_common_clock._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 295, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ASPM: Could not configure common clock\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pcie_aspm_configure_common_clock._entry_ptr.13 = internal global ptr @pcie_aspm_configure_common_clock._entry.10, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@calc_l1ss_pwron._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 349, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Invalid T_PwrOn scale: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"calc_l1ss_pwron\00", [16 x i8] zeroinitializer }, align 32
@calc_l1ss_pwron._entry_ptr = internal global ptr @calc_l1ss_pwron._entry, section ".printk_index", align 4
@__pci_disable_link_state._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1082, ptr @.str.18, ptr @.str.5 }, align 1
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"can't disable ASPM; OS doesn't have ASPM control\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__pci_disable_link_state\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__pci_disable_link_state._entry_ptr = internal global ptr @__pci_disable_link_state._entry, section ".printk_index", align 4
@policy_str = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"performance\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powersave\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powersupersave\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@aspm_ctrl_attrs_are_visible.aspm_state_map = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\03\04\08\10 @", [26 x i8] zeroinitializer }, align 32
@dev_attr_clkpm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @clkpm_show, ptr @clkpm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l0s_aspm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l0s_aspm_show, ptr @l0s_aspm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l1_aspm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l1_aspm_show, ptr @l1_aspm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l1_1_aspm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l1_1_aspm_show, ptr @l1_1_aspm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l1_2_aspm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l1_2_aspm_show, ptr @l1_2_aspm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l1_1_pcipm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l1_1_pcipm_show, ptr @l1_1_pcipm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l1_2_pcipm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l1_2_pcipm_show, ptr @l1_2_pcipm_store }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkpm\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l0s_aspm\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l1_aspm\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l1_1_aspm\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l1_2_aspm\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l1_1_pcipm\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l1_2_pcipm\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@pcie_aspm_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016PCIe ASPM is disabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcie_aspm_disable\00", [46 x i8] zeroinitializer }, align 32
@pcie_aspm_disable._entry_ptr = internal global ptr @pcie_aspm_disable._entry, section ".printk_index", align 4
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"force\00", [26 x i8] zeroinitializer }, align 32
@pcie_aspm_disable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016PCIe ASPM is forcibly enabled\0A\00", [63 x i8] zeroinitializer }, align 32
@pcie_aspm_disable._entry_ptr.40 = internal global ptr @pcie_aspm_disable._entry.38, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"aspm_support_enabled\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"aspm_lock\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"aspm_policy\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 82, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"aspm_disabled\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1330, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"aspm_ctrl_attrs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1294, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"aspm_ctrl_attr_group\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1329, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"aspm_force\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 828, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 67, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [10 x i8] c"link_list\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 68, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 268, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 295, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 349, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1082, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"policy_str\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 85, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 86, i32 21 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 87, i32 25 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 88, i32 23 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 89, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1166, i32 33 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1168, i32 33 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"aspm_state_map\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1311, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"dev_attr_clkpm\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"dev_attr_l0s_aspm\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"dev_attr_l1_aspm\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c"dev_attr_l1_1_aspm\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [19 x i8] c"dev_attr_l1_2_aspm\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c"dev_attr_l1_1_pcipm\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c"dev_attr_l1_2_pcipm\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1286, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1260, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1287, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1288, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1289, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1290, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1291, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1292, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1337, i32 19 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1341, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1342, i32 26 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [27 x i8] c"../drivers/pci/pcie/aspm.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1344, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__ksymtab_pci_disable_link_state, ptr @__ksymtab_pci_disable_link_state_locked, ptr @__ksymtab_pcie_aspm_enabled, ptr @__ksymtab_pcie_aspm_support_enabled, ptr @__param_policy, ptr @__pci_disable_link_state._entry, ptr @__pci_disable_link_state._entry_ptr, ptr @__setup_pcie_aspm_disable, ptr @calc_l1ss_pwron._entry, ptr @calc_l1ss_pwron._entry_ptr, ptr @pcie_aspm_configure_common_clock._entry, ptr @pcie_aspm_configure_common_clock._entry.10, ptr @pcie_aspm_configure_common_clock._entry_ptr, ptr @pcie_aspm_configure_common_clock._entry_ptr.13, ptr @pcie_aspm_disable._entry, ptr @pcie_aspm_disable._entry.38, ptr @pcie_aspm_disable._entry_ptr, ptr @pcie_aspm_disable._entry_ptr.40, ptr @pcie_aspm_sanity_check._entry, ptr @pcie_aspm_sanity_check._entry_ptr, ptr @aspm_support_enabled, ptr @aspm_lock, ptr @aspm_policy, ptr @aspm_disabled, ptr @.str, ptr @aspm_ctrl_attrs, ptr @aspm_ctrl_attr_group, ptr @aspm_force, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @link_list, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @policy_str, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @aspm_ctrl_attrs_are_visible.aspm_state_map, ptr @dev_attr_clkpm, ptr @dev_attr_l0s_aspm, ptr @dev_attr_l1_aspm, ptr @dev_attr_l1_1_aspm, ptr @dev_attr_l1_2_aspm, ptr @dev_attr_l1_1_pcipm, ptr @dev_attr_l1_2_pcipm, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspm_support_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspm_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspm_policy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspm_disabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspm_ctrl_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspm_ctrl_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspm_force to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_aspm_sanity_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_aspm_configure_common_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_aspm_configure_common_clock._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_l1ss_pwron._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policy_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspm_ctrl_attrs_are_visible.aspm_state_map to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_clkpm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l0s_aspm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l1_aspm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l1_1_aspm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l1_2_aspm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l1_1_pcipm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l1_2_pcipm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_aspm_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_aspm_disable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_aspm_init_link_state(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %reg32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32.i) #12
  %0 = ptrtoint ptr %reg32.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg32.i, align 4, !annotation !127
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 2
  %1 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %subordinate.i, align 4
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %child.023.i = load ptr, ptr %devices.i, align 4
  %cmp.not25.i = icmp eq ptr %child.023.i, %devices.i
  br i1 %cmp.not25.i, label %entry.pcie_aspm_sanity_check.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.pcie_aspm_sanity_check.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_sanity_check.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %child.026.i = phi ptr [ %child.0.i, %for.inc.i.for.body.i_crit_edge ], [ %child.023.i, %entry.for.body.i_crit_edge ]
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %child.026.i, i32 0, i32 19
  %4 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i, label %for.body.i.pcie_aspm_sanity_check.exit_crit_edge, label %if.end.i

for.body.i.pcie_aspm_sanity_check.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_sanity_check.exit

if.end.i:                                         ; preds = %for.body.i
  %.b.i = load i1, ptr @aspm_disabled, align 4
  br i1 %.b.i, label %if.end.i.for.inc.i_crit_edge, label %if.end4.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @pcie_capability_read_dword(ptr noundef %child.026.i, i32 noundef 4, ptr noundef nonnull %reg32.i) #12
  %6 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg32.i, align 4
  %and.i = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %.b21.i = load i1, ptr @aspm_force, align 4
  br i1 %.b21.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %do.end.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %child.026.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.1) #15
  br label %pcie_aspm_sanity_check.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %child.026.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %child.0.i = load ptr, ptr %child.026.i, align 4
  %9 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subordinate.i, align 4
  %devices2.i = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 3
  %cmp.not.i = icmp eq ptr %child.0.i, %devices2.i
  br i1 %cmp.not.i, label %for.inc.i.pcie_aspm_sanity_check.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.pcie_aspm_sanity_check.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_sanity_check.exit

pcie_aspm_sanity_check.exit:                      ; preds = %for.inc.i.pcie_aspm_sanity_check.exit_crit_edge, %do.end.i, %for.body.i.pcie_aspm_sanity_check.exit_crit_edge, %entry.pcie_aspm_sanity_check.exit_crit_edge
  %tobool = phi i32 [ 0, %entry.pcie_aspm_sanity_check.exit_crit_edge ], [ 1, %do.end.i ], [ 0, %for.inc.i.pcie_aspm_sanity_check.exit_crit_edge ], [ 1, %for.body.i.pcie_aspm_sanity_check.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32.i) #12
  %.b = load i1, ptr @aspm_support_enabled, align 1
  br i1 %.b, label %pcie_aspm_sanity_check.exit.cleanup_crit_edge, label %if.end

pcie_aspm_sanity_check.exit.cleanup_crit_edge:    ; preds = %pcie_aspm_sanity_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pcie_aspm_sanity_check.exit
  %link_state = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 37
  %11 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_state, align 8
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 25
  %13 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %15 = lshr i16 %14, 4
  %16 = and i16 %15, 15
  %17 = zext i16 %16 to i32
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.end5.cleanup_crit_edge [
    i32 4, label %land.lhs.true
    i32 6, label %if.end5.if.end12_crit_edge
    i32 8, label %if.end5.if.end12_crit_edge53
  ]

if.end5.if.end12_crit_edge53:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %self, align 4
  %tobool10.not = icmp eq ptr %22, null
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end5.if.end12_crit_edge, %if.end5.if.end12_crit_edge53
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  %23 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subordinate.i, align 4
  %devices = getelementptr inbounds %struct.pci_bus, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %devices, align 4
  %cmp.i.not = icmp eq ptr %26, %devices
  br i1 %cmp.i.not, label %if.end12.out_crit_edge, label %if.end16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end16:                                         ; preds = %if.end12
  call void @mutex_lock_nested(ptr noundef nonnull @aspm_lock, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 32) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end16.unlock_crit_edge, label %if.end.i42

if.end16.unlock_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end.i42:                                       ; preds = %if.end16
  %sibling.i = getelementptr inbounds %struct.pcie_link_state, ptr %call7.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %sibling.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %sibling.i, ptr %sibling.i, align 8
  %prev.i.i = getelementptr inbounds %struct.pcie_link_state, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sibling.i, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pdev, ptr %call7.i.i.i, align 8
  %31 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %subordinate.i, align 4
  %devices.i.i = getelementptr inbounds %struct.pci_bus, ptr %32, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i42
  %child.0.in.i.i = phi ptr [ %devices.i.i, %if.end.i42 ], [ %child.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %33 = ptrtoint ptr %child.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %child.0.i.i = load ptr, ptr %child.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %child.0.i.i, %devices.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.pci_function_0.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.pci_function_0.exit.i_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_function_0.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %child.0.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devfn.i.i, align 4
  %and.i.i = and i32 %35, 7
  %cmp2.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp2.i.i, label %for.body.i.i.pci_function_0.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

for.body.i.i.pci_function_0.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_function_0.exit.i

pci_function_0.exit.i:                            ; preds = %for.body.i.i.pci_function_0.exit.i_crit_edge, %for.cond.i.i.pci_function_0.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %child.0.i.i, %for.body.i.i.pci_function_0.exit.i_crit_edge ], [ null, %for.cond.i.i.pci_function_0.exit.i_crit_edge ]
  %downstream.i = getelementptr inbounds %struct.pcie_link_state, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %downstream.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.0.i.i, ptr %downstream.i, align 4
  %37 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %39 = lshr i16 %38, 4
  %40 = and i16 %39, 15
  %41 = zext i16 %40 to i32
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %41, label %lor.lhs.false6.i [
    i32 4, label %pci_function_0.exit.i.if.end20.i_crit_edge
    i32 8, label %pci_function_0.exit.i.if.end20.i_crit_edge54
  ]

pci_function_0.exit.i.if.end20.i_crit_edge54:     ; preds = %pci_function_0.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

pci_function_0.exit.i.if.end20.i_crit_edge:       ; preds = %pci_function_0.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

lor.lhs.false6.i:                                 ; preds = %pci_function_0.exit.i
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 8
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %self.i, align 4
  %tobool7.not.i = icmp eq ptr %48, null
  br i1 %tobool7.not.i, label %lor.lhs.false6.i.if.end20.i_crit_edge, label %if.else.i

lor.lhs.false6.i.if.end20.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.else.i:                                        ; preds = %lor.lhs.false6.i
  %link_state.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 37
  %49 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %link_state.i, align 8
  %tobool13.not.i = icmp eq ptr %50, null
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %unlock

if.end15.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %parent16.i = getelementptr inbounds %struct.pcie_link_state, ptr %call7.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %parent16.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %parent16.i, align 4
  %root18.i = getelementptr inbounds %struct.pcie_link_state, ptr %50, i32 0, i32 2
  %52 = ptrtoint ptr %root18.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %root18.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end15.i, %lor.lhs.false6.i.if.end20.i_crit_edge, %pci_function_0.exit.i.if.end20.i_crit_edge, %pci_function_0.exit.i.if.end20.i_crit_edge54
  %.sink.i = phi ptr [ %53, %if.end15.i ], [ %call7.i.i.i, %pci_function_0.exit.i.if.end20.i_crit_edge ], [ %call7.i.i.i, %pci_function_0.exit.i.if.end20.i_crit_edge54 ], [ %call7.i.i.i, %lor.lhs.false6.i.if.end20.i_crit_edge ]
  %root19.i = getelementptr inbounds %struct.pcie_link_state, ptr %call7.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %root19.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %.sink.i, ptr %root19.i, align 8
  %55 = load ptr, ptr @link_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %sibling.i, ptr noundef nonnull @link_list, ptr noundef %55) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end20.i.alloc_pcie_link_state.exit_crit_edge

if.end20.i.alloc_pcie_link_state.exit_crit_edge:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %alloc_pcie_link_state.exit

if.end.i.i.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %sibling.i, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %sibling.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %sibling.i, align 8
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @link_list, ptr %prev.i.i, align 4
  store volatile ptr %sibling.i, ptr @link_list, align 4
  br label %alloc_pcie_link_state.exit

alloc_pcie_link_state.exit:                       ; preds = %if.end.i.i.i, %if.end20.i.alloc_pcie_link_state.exit_crit_edge
  %59 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %link_state, align 8
  call fastcc void @pcie_aspm_cap_init(ptr noundef nonnull %call7.i.i.i, i32 noundef %tobool)
  call fastcc void @pcie_clkpm_cap_init(ptr noundef nonnull %call7.i.i.i, i32 noundef %tobool)
  %60 = load i32, ptr @aspm_policy, align 4
  %61 = and i32 %60, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %switch = icmp eq i32 %61, 2
  br i1 %switch, label %alloc_pcie_link_state.exit.if.end26_crit_edge, label %if.then24

alloc_pcie_link_state.exit.if.end26_crit_edge:    ; preds = %alloc_pcie_link_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %alloc_pcie_link_state.exit
  call fastcc void @pcie_config_aspm_path(ptr noundef nonnull %call7.i.i.i)
  %62 = load i32, ptr @aspm_policy, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %62, label %if.then24.policy_to_clkpm_state.exit_crit_edge [
    i32 0, label %sw.bb2.i
    i32 2, label %if.then24.sw.bb1.i_crit_edge
    i32 3, label %if.then24.sw.bb1.i_crit_edge55
  ]

if.then24.sw.bb1.i_crit_edge55:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

if.then24.sw.bb1.i_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

if.then24.policy_to_clkpm_state.exit_crit_edge:   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_clkpm_state.exit

sw.bb1.i:                                         ; preds = %if.then24.sw.bb1.i_crit_edge, %if.then24.sw.bb1.i_crit_edge55
  br label %policy_to_clkpm_state.exit

sw.bb2.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %clkpm_default.i = getelementptr inbounds %struct.pcie_link_state, ptr %call7.i.i.i, i32 0, i32 6
  %64 = ptrtoint ptr %clkpm_default.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i = load i16, ptr %clkpm_default.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 6
  %bf.clear.i = and i16 %bf.lshr.i, 1
  %bf.cast.i = zext i16 %bf.clear.i to i32
  br label %policy_to_clkpm_state.exit

policy_to_clkpm_state.exit:                       ; preds = %sw.bb2.i, %sw.bb1.i, %if.then24.policy_to_clkpm_state.exit_crit_edge
  %retval.0.i44 = phi i32 [ %bf.cast.i, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.then24.policy_to_clkpm_state.exit_crit_edge ]
  call fastcc void @pcie_set_clkpm(ptr noundef nonnull %call7.i.i.i, i32 noundef %retval.0.i44)
  br label %if.end26

if.end26:                                         ; preds = %policy_to_clkpm_state.exit, %alloc_pcie_link_state.exit.if.end26_crit_edge
  call fastcc void @pcie_aspm_update_sysfs_visibility(ptr noundef %pdev)
  br label %unlock

unlock:                                           ; preds = %if.end26, %if.then14.i, %if.end16.unlock_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #12
  br label %out

out:                                              ; preds = %unlock, %if.end12.out_crit_edge
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pcie_aspm_sanity_check.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_aspm_cap_init(ptr noundef %link, i32 noundef %blacklist) unnamed_addr #0 align 64 {
entry:
  %val.i228.i = alloca i32, align 4
  %val.i224.i = alloca i32, align 4
  %val.i219.i = alloca i32, align 4
  %val.i214.i = alloca i32, align 4
  %val.i210.i = alloca i32, align 4
  %val.i206.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %pctl1.i = alloca i32, align 4
  %pctl2.i = alloca i32, align 4
  %cctl1.i = alloca i32, align 4
  %cctl2.i = alloca i32, align 4
  %reg16.i.i = alloca i16, align 2
  %reg16.i = alloca i16, align 2
  %child_reg.i = alloca [8 x i16], align 2
  %parent_lnkcap = alloca i32, align 4
  %child_lnkcap = alloca i32, align 4
  %parent_lnkctl = alloca i16, align 2
  %child_lnkctl = alloca i16, align 2
  %parent_l1ss_cap = alloca i32, align 4
  %child_l1ss_cap = alloca i32, align 4
  %parent_l1ss_ctl1 = alloca i32, align 4
  %child_l1ss_ctl1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %downstream = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 1
  %0 = ptrtoint ptr %downstream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %downstream, align 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_lnkcap) #12
  %4 = ptrtoint ptr %parent_lnkcap to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %parent_lnkcap, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child_lnkcap) #12
  %5 = ptrtoint ptr %child_lnkcap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %child_lnkcap, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %parent_lnkctl) #12
  %6 = ptrtoint ptr %parent_lnkctl to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %parent_lnkctl, align 2, !annotation !127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %child_lnkctl) #12
  %7 = ptrtoint ptr %child_lnkctl to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %child_lnkctl, align 2, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_l1ss_cap) #12
  %8 = ptrtoint ptr %parent_l1ss_cap to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %parent_l1ss_cap, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child_l1ss_cap) #12
  %9 = ptrtoint ptr %child_l1ss_cap to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %child_l1ss_cap, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_l1ss_ctl1) #12
  %10 = ptrtoint ptr %parent_l1ss_ctl1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %parent_l1ss_ctl1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child_l1ss_ctl1) #12
  %11 = ptrtoint ptr %child_l1ss_ctl1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %child_l1ss_ctl1, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subordinate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blacklist)
  %tobool.not = icmp eq i32 %blacklist, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_enabled = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %14 = ptrtoint ptr %aspm_enabled to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %aspm_enabled, align 4
  %bf.set = or i32 %bf.load, 33292288
  store i32 %bf.set, ptr %aspm_enabled, align 4
  %aspm_disable = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 6
  %15 = ptrtoint ptr %aspm_disable to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load1 = load i16, ptr %aspm_disable, align 4
  %bf.set3 = or i16 %bf.load1, -512
  store i16 %bf.set3, ptr %aspm_disable, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @pcie_capability_read_dword(ptr noundef %3, i32 noundef 12, ptr noundef nonnull %parent_lnkcap) #12
  %call4 = call i32 @pcie_capability_read_dword(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %child_lnkcap) #12
  %16 = ptrtoint ptr %parent_lnkcap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent_lnkcap, align 4
  %18 = ptrtoint ptr %child_lnkcap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %child_lnkcap, align 4
  %and = and i32 %17, 3072
  %and5 = and i32 %and, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16.i) #12
  %20 = ptrtoint ptr %reg16.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %reg16.i, align 2, !annotation !127
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %child_reg.i) #12
  %21 = call ptr @memset(ptr %child_reg.i, i32 255, i32 16)
  %22 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link, align 4
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %subordinate.i, align 4
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %devices.i, align 4
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i.not.i = icmp eq i8 %29, 0
  br i1 %tobool.i.not.i, label %do.body3.i, label %do.end8.i, !prof !128

do.body3.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/pcie/aspm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

do.end8.i:                                        ; preds = %if.end8
  %call9.i = call i32 @pcie_capability_read_word(ptr noundef %27, i32 noundef 18, ptr noundef nonnull %reg16.i) #12
  %30 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reg16.i, align 2
  %call13.i = call i32 @pcie_capability_read_word(ptr noundef %23, i32 noundef 18, ptr noundef nonnull %reg16.i) #12
  %32 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %reg16.i, align 2
  %34 = and i16 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool16.not.i = icmp eq i16 %34, 0
  %call19.i = call i32 @pcie_capability_read_word(ptr noundef %23, i32 noundef 16, ptr noundef nonnull %reg16.i) #12
  %35 = and i16 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool20.not166.i = icmp eq i16 %35, 0
  %tobool20.not.i = select i1 %tobool16.not.i, i1 true, i1 %tobool20.not166.i
  br i1 %tobool20.not.i, label %do.end8.i.if.end51.i_crit_edge, label %land.lhs.true.i

do.end8.i.if.end51.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

land.lhs.true.i:                                  ; preds = %do.end8.i
  %36 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %reg16.i, align 2
  %38 = and i16 %37, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool23.not.i = icmp eq i16 %38, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i.if.end51.i_crit_edge, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  br label %for.cond.i

land.lhs.true.i.if.end51.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %land.lhs.true.i.for.cond.i_crit_edge
  %child.0.in.i = phi ptr [ %child.0.i, %for.body.i.for.cond.i_crit_edge ], [ %devices.i, %land.lhs.true.i.for.cond.i_crit_edge ]
  %39 = ptrtoint ptr %child.0.in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %child.0.i = load ptr, ptr %child.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %child.0.i, %devices.i
  br i1 %cmp.not.i, label %for.cond.i.pcie_aspm_configure_common_clock.exit_crit_edge, label %for.body.i

for.cond.i.pcie_aspm_configure_common_clock.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_configure_common_clock.exit

for.body.i:                                       ; preds = %for.cond.i
  %call34.i = call i32 @pcie_capability_read_word(ptr noundef %child.0.i, i32 noundef 16, ptr noundef nonnull %reg16.i) #12
  %40 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %reg16.i, align 2
  %42 = and i16 %41, 64
  %tobool37.not.i = icmp eq i16 %42, 0
  br i1 %tobool37.not.i, label %do.end50.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

do.end50.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.8) #15
  br label %if.end51.i

if.end51.i:                                       ; preds = %do.end50.i, %land.lhs.true.i.if.end51.i_crit_edge, %do.end8.i.if.end51.i_crit_edge
  %.pre.i = phi i16 [ 64, %do.end50.i ], [ 64, %land.lhs.true.i.if.end51.i_crit_edge ], [ 0, %do.end8.i.if.end51.i_crit_edge ]
  %43 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %child.1168.i = load ptr, ptr %devices.i, align 4
  %cmp60.not169.i = icmp eq ptr %child.1168.i, %devices.i
  br i1 %cmp60.not169.i, label %if.end51.i.for.end82.i_crit_edge, label %if.end51.i.for.body64.i_crit_edge

if.end51.i.for.body64.i_crit_edge:                ; preds = %if.end51.i
  br label %for.body64.i

if.end51.i.for.end82.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82.i

for.body64.i:                                     ; preds = %for.body64.i.for.body64.i_crit_edge, %if.end51.i.for.body64.i_crit_edge
  %child.1170.i = phi ptr [ %child.1.i, %for.body64.i.for.body64.i_crit_edge ], [ %child.1168.i, %if.end51.i.for.body64.i_crit_edge ]
  %call65.i = call i32 @pcie_capability_read_word(ptr noundef %child.1170.i, i32 noundef 16, ptr noundef nonnull %reg16.i) #12
  %44 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %reg16.i, align 2
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %child.1170.i, i32 0, i32 6
  %46 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %devfn.i, align 4
  %and66.i = and i32 %47, 7
  %arrayidx.i = getelementptr [8 x i16], ptr %child_reg.i, i32 0, i32 %and66.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %45, ptr %arrayidx.i, align 2
  %49 = and i16 %45, -65
  %storemerge165.i = or i16 %49, %.pre.i
  store i16 %storemerge165.i, ptr %reg16.i, align 2
  %call75.i = call i32 @pcie_capability_write_word(ptr noundef %child.1170.i, i32 noundef 16, i16 noundef zeroext %storemerge165.i) #12
  %50 = ptrtoint ptr %child.1170.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %child.1.i = load ptr, ptr %child.1170.i, align 4
  %cmp60.not.i = icmp eq ptr %child.1.i, %devices.i
  br i1 %cmp60.not.i, label %for.body64.i.for.end82.i_crit_edge, label %for.body64.i.for.body64.i_crit_edge

for.body64.i.for.body64.i_crit_edge:              ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body64.i

for.body64.i.for.end82.i_crit_edge:               ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82.i

for.end82.i:                                      ; preds = %for.body64.i.for.end82.i_crit_edge, %if.end51.i.for.end82.i_crit_edge
  %call83.i = call i32 @pcie_capability_read_word(ptr noundef %23, i32 noundef 16, ptr noundef nonnull %reg16.i) #12
  %51 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %reg16.i, align 2
  %53 = and i16 %52, -65
  %storemerge.i = or i16 %53, %.pre.i
  store i16 %storemerge.i, ptr %reg16.i, align 2
  %call94.i = call i32 @pcie_capability_write_word(ptr noundef %23, i32 noundef 16, i16 noundef zeroext %storemerge.i) #12
  %54 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16.i.i) #12
  %56 = ptrtoint ptr %reg16.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %reg16.i.i, align 2, !annotation !127
  %call.i.i = call i32 @pcie_capability_read_word(ptr noundef %55, i32 noundef 16, ptr noundef nonnull %reg16.i.i) #12
  %57 = ptrtoint ptr %reg16.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %reg16.i.i, align 2
  %59 = or i16 %58, 32
  store i16 %59, ptr %reg16.i.i, align 2
  %call2.i.i = call i32 @pcie_capability_write_word(ptr noundef %55, i32 noundef 16, i16 noundef zeroext %59) #12
  %clear_retrain_link.i.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 33
  %60 = ptrtoint ptr %clear_retrain_link.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %bf.load.i.i = load i32, ptr %clear_retrain_link.i.i, align 2
  %61 = and i32 %bf.load.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i, label %for.end82.i.if.end.i.i_crit_edge, label %if.then.i.i

for.end82.i.if.end.i.i_crit_edge:                 ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %reg16.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %reg16.i.i, align 2
  %64 = and i16 %63, -33
  store i16 %64, ptr %reg16.i.i, align 2
  %call5.i.i = call i32 @pcie_capability_write_word(ptr noundef %55, i32 noundef 16, i16 noundef zeroext %64) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.end82.i.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -100, %65
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end11.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call6.i.i = call i32 @pcie_capability_read_word(ptr noundef %55, i32 noundef 18, ptr noundef nonnull %reg16.i.i) #12
  %66 = ptrtoint ptr %reg16.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %reg16.i.i, align 2
  %68 = and i16 %67, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool9.not.i.i = icmp eq i16 %68, 0
  br i1 %tobool9.not.i.i, label %do.body.i.i.pcie_retrain_link.exit.i_crit_edge, label %if.end11.i.i

do.body.i.i.pcie_retrain_link.exit.i_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_retrain_link.exit.i

if.end11.i.i:                                     ; preds = %do.body.i.i
  call void @msleep(i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %69
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end11.i.i.do.body.i.i_crit_edge, label %if.end11.i.i.pcie_retrain_link.exit.i_crit_edge

if.end11.i.i.pcie_retrain_link.exit.i_crit_edge:  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_retrain_link.exit.i

if.end11.i.i.do.body.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

pcie_retrain_link.exit.i:                         ; preds = %if.end11.i.i.pcie_retrain_link.exit.i_crit_edge, %do.body.i.i.pcie_retrain_link.exit.i_crit_edge
  %70 = ptrtoint ptr %reg16.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %reg16.i.i, align 2
  %72 = and i16 %71, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool15.not.i.i = icmp eq i16 %72, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i.i) #12
  br i1 %tobool15.not.i.i, label %pcie_retrain_link.exit.i.pcie_aspm_configure_common_clock.exit_crit_edge, label %do.end100.i

pcie_retrain_link.exit.i.pcie_aspm_configure_common_clock.exit_crit_edge: ; preds = %pcie_retrain_link.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_configure_common_clock.exit

do.end100.i:                                      ; preds = %pcie_retrain_link.exit.i
  %dev101.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev101.i, ptr noundef nonnull @.str.11) #15
  %73 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %child.2171.i = load ptr, ptr %devices.i, align 4
  %cmp110.not172.i = icmp eq ptr %child.2171.i, %devices.i
  br i1 %cmp110.not172.i, label %do.end100.i.for.end125.i_crit_edge, label %do.end100.i.for.body114.i_crit_edge

do.end100.i.for.body114.i_crit_edge:              ; preds = %do.end100.i
  br label %for.body114.i

do.end100.i.for.end125.i_crit_edge:               ; preds = %do.end100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end125.i

for.body114.i:                                    ; preds = %for.body114.i.for.body114.i_crit_edge, %do.end100.i.for.body114.i_crit_edge
  %child.2173.i = phi ptr [ %child.2.i, %for.body114.i.for.body114.i_crit_edge ], [ %child.2171.i, %do.end100.i.for.body114.i_crit_edge ]
  %devfn115.i = getelementptr inbounds %struct.pci_dev, ptr %child.2173.i, i32 0, i32 6
  %74 = ptrtoint ptr %devfn115.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %devfn115.i, align 4
  %and116.i = and i32 %75, 7
  %arrayidx117.i = getelementptr [8 x i16], ptr %child_reg.i, i32 0, i32 %and116.i
  %76 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx117.i, align 2
  %call118.i = call i32 @pcie_capability_write_word(ptr noundef %child.2173.i, i32 noundef 16, i16 noundef zeroext %77) #12
  %78 = ptrtoint ptr %child.2173.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %child.2.i = load ptr, ptr %child.2173.i, align 4
  %cmp110.not.i = icmp eq ptr %child.2.i, %devices.i
  br i1 %cmp110.not.i, label %for.body114.i.for.end125.i_crit_edge, label %for.body114.i.for.body114.i_crit_edge

for.body114.i.for.body114.i_crit_edge:            ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body114.i

for.body114.i.for.end125.i_crit_edge:             ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end125.i

for.end125.i:                                     ; preds = %for.body114.i.for.end125.i_crit_edge, %do.end100.i.for.end125.i_crit_edge
  %call126.i = call i32 @pcie_capability_write_word(ptr noundef %23, i32 noundef 16, i16 noundef zeroext %52) #12
  br label %pcie_aspm_configure_common_clock.exit

pcie_aspm_configure_common_clock.exit:            ; preds = %for.end125.i, %pcie_retrain_link.exit.i.pcie_aspm_configure_common_clock.exit_crit_edge, %for.cond.i.pcie_aspm_configure_common_clock.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %child_reg.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i) #12
  %call9 = call i32 @pcie_capability_read_dword(ptr noundef %3, i32 noundef 12, ptr noundef nonnull %parent_lnkcap) #12
  %call10 = call i32 @pcie_capability_read_dword(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %child_lnkcap) #12
  %call11 = call i32 @pcie_capability_read_word(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %parent_lnkctl) #12
  %call12 = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %child_lnkctl) #12
  %79 = ptrtoint ptr %parent_lnkcap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %parent_lnkcap, align 4
  %81 = ptrtoint ptr %child_lnkcap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %child_lnkcap, align 4
  %and13 = and i32 %82, %80
  %and14 = and i32 %and13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %pcie_aspm_configure_common_clock.exit.if.end21_crit_edge, label %if.then16

pcie_aspm_configure_common_clock.exit.if.end21_crit_edge: ; preds = %pcie_aspm_configure_common_clock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then16:                                        ; preds = %pcie_aspm_configure_common_clock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_support = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %83 = ptrtoint ptr %aspm_support to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load17 = load i32, ptr %aspm_support, align 4
  %bf.set20 = or i32 %bf.load17, 100663296
  store i32 %bf.set20, ptr %aspm_support, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %pcie_aspm_configure_common_clock.exit.if.end21_crit_edge
  %84 = ptrtoint ptr %child_lnkctl to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %child_lnkctl, align 2
  %86 = and i16 %85, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool23.not = icmp eq i16 %86, 0
  br i1 %tobool23.not, label %if.end21.if.end35_crit_edge, label %if.then24

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_enabled25 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %87 = ptrtoint ptr %aspm_enabled25 to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load26 = load i32, ptr %aspm_enabled25, align 4
  %bf.set34 = or i32 %bf.load26, 262144
  store i32 %bf.set34, ptr %aspm_enabled25, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then24, %if.end21.if.end35_crit_edge
  %88 = ptrtoint ptr %parent_lnkctl to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %parent_lnkctl, align 2
  %90 = and i16 %89, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool38.not = icmp eq i16 %90, 0
  br i1 %tobool38.not, label %if.end35.if.end50_crit_edge, label %if.then39

if.end35.if.end50_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_enabled40 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %91 = ptrtoint ptr %aspm_enabled40 to i32
  call void @__asan_load4_noabort(i32 %91)
  %bf.load41 = load i32, ptr %aspm_enabled40, align 4
  %bf.set49 = or i32 %bf.load41, 524288
  store i32 %bf.set49, ptr %aspm_enabled40, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then39, %if.end35.if.end50_crit_edge
  %and52 = and i32 %and13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end64_crit_edge, label %if.then54

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_support55 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %92 = ptrtoint ptr %aspm_support55 to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load56 = load i32, ptr %aspm_support55, align 4
  %bf.set63 = or i32 %bf.load56, 134217728
  store i32 %bf.set63, ptr %aspm_support55, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then54, %if.end50.if.end64_crit_edge
  %and67324 = and i16 %85, 2
  %93 = and i16 %and67324, %89
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool69.not = icmp eq i16 %93, 0
  br i1 %tobool69.not, label %if.end64.if.end81_crit_edge, label %if.then70

if.end64.if.end81_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_enabled71 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %94 = ptrtoint ptr %aspm_enabled71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load72 = load i32, ptr %aspm_enabled71, align 4
  %bf.set80 = or i32 %bf.load72, 1048576
  store i32 %bf.set80, ptr %aspm_enabled71, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then70, %if.end64.if.end81_crit_edge
  %l1ss = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 40
  %95 = ptrtoint ptr %l1ss to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %l1ss, align 2
  %conv82 = zext i16 %96 to i32
  %add = add nuw nsw i32 %conv82, 4
  %call83 = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %parent_l1ss_cap) #12
  %l1ss84 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 40
  %97 = ptrtoint ptr %l1ss84 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %l1ss84, align 2
  %conv85 = zext i16 %98 to i32
  %add86 = add nuw nsw i32 %conv85, 4
  %call87 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add86, ptr noundef nonnull %child_l1ss_cap) #12
  %99 = ptrtoint ptr %parent_l1ss_cap to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %parent_l1ss_cap, align 4
  %and88 = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.then90, label %if.end81.if.end91_crit_edge

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then90:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %parent_l1ss_cap to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %parent_l1ss_cap, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end81.if.end91_crit_edge
  %102 = ptrtoint ptr %child_l1ss_cap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %child_l1ss_cap, align 4
  %and92 = and i32 %103, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.then94, label %if.end91.if.end95_crit_edge

if.end91.if.end95_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %child_l1ss_cap to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %child_l1ss_cap, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end91.if.end95_crit_edge
  %ltr_path = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 38
  %105 = ptrtoint ptr %ltr_path to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load96 = load i8, ptr %ltr_path, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load96)
  %tobool98.not = icmp sgt i8 %bf.load96, -1
  br i1 %tobool98.not, label %if.then99, label %if.end95.if.end101_crit_edge

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %child_l1ss_cap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %child_l1ss_cap, align 4
  %and100 = and i32 %107, -5
  store i32 %and100, ptr %child_l1ss_cap, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end95.if.end101_crit_edge
  %108 = ptrtoint ptr %parent_l1ss_cap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %parent_l1ss_cap, align 4
  %110 = ptrtoint ptr %child_l1ss_cap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %child_l1ss_cap, align 4
  %and102 = and i32 %111, %109
  %and103 = and i32 %and102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.if.end115_crit_edge, label %if.then105

if.end101.if.end115_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_support106 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %112 = ptrtoint ptr %aspm_support106 to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load107 = load i32, ptr %aspm_support106, align 4
  %bf.set114 = or i32 %bf.load107, 268435456
  store i32 %bf.set114, ptr %aspm_support106, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then105, %if.end101.if.end115_crit_edge
  %and117 = and i32 %and102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.if.end129_crit_edge, label %if.then119

if.end115.if.end129_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_support120 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %113 = ptrtoint ptr %aspm_support120 to i32
  call void @__asan_load4_noabort(i32 %113)
  %bf.load121 = load i32, ptr %aspm_support120, align 4
  %bf.set128 = or i32 %bf.load121, 536870912
  store i32 %bf.set128, ptr %aspm_support120, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then119, %if.end115.if.end129_crit_edge
  %and131 = and i32 %and102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end129.if.end143_crit_edge, label %if.then133

if.end129.if.end143_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_support134 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %114 = ptrtoint ptr %aspm_support134 to i32
  call void @__asan_load4_noabort(i32 %114)
  %bf.load135 = load i32, ptr %aspm_support134, align 4
  %bf.set142 = or i32 %bf.load135, 1073741824
  store i32 %bf.set142, ptr %aspm_support134, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then133, %if.end129.if.end143_crit_edge
  %and145 = and i32 %and102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end143.if.end157_crit_edge, label %if.then147

if.end143.if.end157_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

if.then147:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_support148 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %115 = ptrtoint ptr %aspm_support148 to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load149 = load i32, ptr %aspm_support148, align 4
  %bf.set156 = or i32 %bf.load149, -2147483648
  store i32 %bf.set156, ptr %aspm_support148, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then147, %if.end143.if.end157_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool158.not = icmp eq i32 %109, 0
  br i1 %tobool158.not, label %if.end157.if.end164_crit_edge, label %if.then159

if.end157.if.end164_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end164

if.then159:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %l1ss to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %l1ss, align 2
  %conv161 = zext i16 %117 to i32
  %add162 = add nuw nsw i32 %conv161, 8
  %call163 = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add162, ptr noundef nonnull %parent_l1ss_ctl1) #12
  br label %if.end164

if.end164:                                        ; preds = %if.then159, %if.end157.if.end164_crit_edge
  %118 = ptrtoint ptr %child_l1ss_cap to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %child_l1ss_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool165.not = icmp eq i32 %119, 0
  br i1 %tobool165.not, label %if.end164.if.end171_crit_edge, label %if.then166

if.end164.if.end171_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

if.then166:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %l1ss84 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %l1ss84, align 2
  %conv168 = zext i16 %121 to i32
  %add169 = add nuw nsw i32 %conv168, 8
  %call170 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add169, ptr noundef nonnull %child_l1ss_ctl1) #12
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.end164.if.end171_crit_edge
  %122 = ptrtoint ptr %parent_l1ss_ctl1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %parent_l1ss_ctl1, align 4
  %124 = ptrtoint ptr %child_l1ss_ctl1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %child_l1ss_ctl1, align 4
  %and172 = and i32 %125, %123
  %and173 = and i32 %and172, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end171.if.end186_crit_edge, label %if.then175

if.end171.if.end186_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then175:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_enabled176 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %126 = ptrtoint ptr %aspm_enabled176 to i32
  call void @__asan_load4_noabort(i32 %126)
  %bf.load177 = load i32, ptr %aspm_enabled176, align 4
  %bf.set185 = or i32 %bf.load177, 2097152
  store i32 %bf.set185, ptr %aspm_enabled176, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then175, %if.end171.if.end186_crit_edge
  %and188 = and i32 %and172, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.end186.if.end201_crit_edge, label %if.then190

if.end186.if.end201_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end201

if.then190:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_enabled191 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %127 = ptrtoint ptr %aspm_enabled191 to i32
  call void @__asan_load4_noabort(i32 %127)
  %bf.load192 = load i32, ptr %aspm_enabled191, align 4
  %bf.set200 = or i32 %bf.load192, 4194304
  store i32 %bf.set200, ptr %aspm_enabled191, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then190, %if.end186.if.end201_crit_edge
  %and203 = and i32 %and172, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %if.end201.if.end216_crit_edge, label %if.then205

if.end201.if.end216_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end216

if.then205:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_enabled206 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %128 = ptrtoint ptr %aspm_enabled206 to i32
  call void @__asan_load4_noabort(i32 %128)
  %bf.load207 = load i32, ptr %aspm_enabled206, align 4
  %bf.set215 = or i32 %bf.load207, 8388608
  store i32 %bf.set215, ptr %aspm_enabled206, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then205, %if.end201.if.end216_crit_edge
  %and218 = and i32 %and172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %if.end216.if.end231_crit_edge, label %if.then220

if.end216.if.end231_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end231

if.then220:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_enabled221 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %129 = ptrtoint ptr %aspm_enabled221 to i32
  call void @__asan_load4_noabort(i32 %129)
  %bf.load222 = load i32, ptr %aspm_enabled221, align 4
  %bf.set230 = or i32 %bf.load222, 16777216
  store i32 %bf.set230, ptr %aspm_enabled221, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then220, %if.end216.if.end231_crit_edge
  %aspm_support232 = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %130 = ptrtoint ptr %aspm_support232 to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load233 = load i32, ptr %aspm_support232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %bf.load233)
  %tobool236.not = icmp ult i32 %bf.load233, 268435456
  br i1 %tobool236.not, label %if.end231.if.end238_crit_edge, label %if.then237

if.end231.if.end238_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end238

if.then237:                                       ; preds = %if.end231
  %131 = ptrtoint ptr %parent_l1ss_cap to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %parent_l1ss_cap, align 4
  %133 = ptrtoint ptr %child_l1ss_cap to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %child_l1ss_cap, align 4
  %135 = ptrtoint ptr %downstream to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %downstream, align 4
  %137 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pctl1.i) #12
  %139 = ptrtoint ptr %pctl1.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %pctl1.i, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pctl2.i) #12
  %140 = ptrtoint ptr %pctl2.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %pctl2.i, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cctl1.i) #12
  %141 = ptrtoint ptr %cctl1.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %cctl1.i, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cctl2.i) #12
  %142 = ptrtoint ptr %cctl2.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %cctl2.i, align 4, !annotation !127
  %143 = and i32 %bf.load233, -1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i = icmp eq i32 %143, 0
  br i1 %tobool.not.i, label %if.then237.aspm_calc_l1ss_info.exit_crit_edge, label %if.end.i

if.then237.aspm_calc_l1ss_info.exit_crit_edge:    ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_calc_l1ss_info.exit

if.end.i:                                         ; preds = %if.then237
  %and1.i = lshr i32 %132, 8
  %shr.i = and i32 %and1.i, 255
  %and2.i = lshr i32 %134, 8
  %shr3.i = and i32 %and2.i, 255
  %144 = call i32 @llvm.umax.i32(i32 %shr.i, i32 %shr3.i) #12
  %and4.i = lshr i32 %132, 19
  %shr5.i = and i32 %and4.i, 31
  %and6.i = lshr i32 %132, 16
  %shr7.i = and i32 %and6.i, 3
  %and8.i = lshr i32 %134, 19
  %shr9.i = and i32 %and8.i, 31
  %and10.i = lshr i32 %134, 16
  %shr11.i = and i32 %and10.i, 3
  %145 = zext i32 %shr7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %shr7.i, label %do.end.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb3.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i = shl nuw nsw i32 %shr5.i, 1
  br label %calc_l1ss_pwron.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul2.i.i = mul nuw nsw i32 %shr5.i, 10
  br label %calc_l1ss_pwron.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul4.i.i = mul nuw nsw i32 %shr5.i, 100
  br label %calc_l1ss_pwron.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %138, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %shr7.i) #15
  br label %calc_l1ss_pwron.exit.i

calc_l1ss_pwron.exit.i:                           ; preds = %do.end.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %mul4.i.i, %sw.bb3.i.i ], [ %mul2.i.i, %sw.bb1.i.i ], [ %mul.i.i, %sw.bb.i.i ]
  %146 = zext i32 %shr11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %shr11.i, label %do.end.i182.i [
    i32 0, label %sw.bb.i176.i
    i32 1, label %sw.bb1.i178.i
    i32 2, label %sw.bb3.i180.i
  ]

sw.bb.i176.i:                                     ; preds = %calc_l1ss_pwron.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i175.i = shl nuw nsw i32 %shr9.i, 1
  br label %calc_l1ss_pwron.exit184.i

sw.bb1.i178.i:                                    ; preds = %calc_l1ss_pwron.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul2.i177.i = mul nuw nsw i32 %shr9.i, 10
  br label %calc_l1ss_pwron.exit184.i

sw.bb3.i180.i:                                    ; preds = %calc_l1ss_pwron.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul4.i179.i = mul nuw nsw i32 %shr9.i, 100
  br label %calc_l1ss_pwron.exit184.i

do.end.i182.i:                                    ; preds = %calc_l1ss_pwron.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i181.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i181.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %shr11.i) #15
  br label %calc_l1ss_pwron.exit184.i

calc_l1ss_pwron.exit184.i:                        ; preds = %do.end.i182.i, %sw.bb3.i180.i, %sw.bb1.i178.i, %sw.bb.i176.i
  %retval.0.i183.i = phi i32 [ 0, %do.end.i182.i ], [ %mul4.i179.i, %sw.bb3.i180.i ], [ %mul2.i177.i, %sw.bb1.i178.i ], [ %mul.i175.i, %sw.bb.i176.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %retval.0.i183.i)
  %cmp13.i = icmp ugt i32 %retval.0.i.i, %retval.0.i183.i
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %calc_l1ss_pwron.exit184.i
  %shl.i = shl nuw nsw i32 %shr5.i, 3
  %or.i = or i32 %shl.i, %shr7.i
  %147 = zext i32 %shr7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %shr7.i, label %do.end.i192.i [
    i32 0, label %sw.bb.i186.i
    i32 1, label %sw.bb1.i188.i
    i32 2, label %sw.bb3.i190.i
  ]

sw.bb.i186.i:                                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i185.i = shl nuw nsw i32 %shr5.i, 1
  br label %if.end21.i

sw.bb1.i188.i:                                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul2.i187.i = mul nuw nsw i32 %shr5.i, 10
  br label %if.end21.i

sw.bb3.i190.i:                                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul4.i189.i = mul nuw nsw i32 %shr5.i, 100
  br label %if.end21.i

do.end.i192.i:                                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i191.i = getelementptr inbounds %struct.pci_dev, ptr %138, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i191.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %shr7.i) #15
  br label %if.end21.i

if.else.i:                                        ; preds = %calc_l1ss_pwron.exit184.i
  %shl17.i = shl nuw nsw i32 %shr9.i, 3
  %or18.i = or i32 %shl17.i, %shr11.i
  %148 = zext i32 %shr11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %shr11.i, label %do.end.i202.i [
    i32 0, label %sw.bb.i196.i
    i32 1, label %sw.bb1.i198.i
    i32 2, label %sw.bb3.i200.i
  ]

sw.bb.i196.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i195.i = shl nuw nsw i32 %shr9.i, 1
  br label %if.end21.i

sw.bb1.i198.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul2.i197.i = mul nuw nsw i32 %shr9.i, 10
  br label %if.end21.i

sw.bb3.i200.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul4.i199.i = mul nuw nsw i32 %shr9.i, 100
  br label %if.end21.i

do.end.i202.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i201.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i201.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %shr11.i) #15
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i202.i, %sw.bb3.i200.i, %sw.bb1.i198.i, %sw.bb.i196.i, %do.end.i192.i, %sw.bb3.i190.i, %sw.bb1.i188.i, %sw.bb.i186.i
  %t_power_on.0.i = phi i32 [ 0, %do.end.i192.i ], [ %mul4.i189.i, %sw.bb3.i190.i ], [ %mul2.i187.i, %sw.bb1.i188.i ], [ %mul.i185.i, %sw.bb.i186.i ], [ 0, %do.end.i202.i ], [ %mul4.i199.i, %sw.bb3.i200.i ], [ %mul2.i197.i, %sw.bb1.i198.i ], [ %mul.i195.i, %sw.bb.i196.i ]
  %ctl2.0.i = phi i32 [ %or.i, %do.end.i192.i ], [ %or.i, %sw.bb3.i190.i ], [ %or.i, %sw.bb1.i188.i ], [ %or.i, %sw.bb.i186.i ], [ %or18.i, %do.end.i202.i ], [ %or18.i, %sw.bb3.i200.i ], [ %or18.i, %sw.bb1.i198.i ], [ %or18.i, %sw.bb.i196.i ]
  %add.i = add nuw nsw i32 %144, 6
  %add22.i = add nuw nsw i32 %add.i, %t_power_on.0.i
  %mul.i205.i = mul nuw nsw i32 %add22.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %mul.i205.i)
  %cmp4.i.i = icmp ult i32 %mul.i205.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %mul.i205.i)
  %cmp8.i.i = icmp ult i32 %mul.i205.i, 1048576
  %..i.i = select i1 %cmp8.i.i, i32 1610612736, i32 -2147483648
  %.42.i.i = select i1 %cmp8.i.i, i32 15, i32 20
  %.sink41.i.i = select i1 %cmp4.i.i, i32 1073741824, i32 %..i.i
  %.sink.i.i = select i1 %cmp4.i.i, i32 10, i32 %.42.i.i
  %shr10.i.i = lshr i32 %mul.i205.i, %.sink.i.i
  %shl23.i = shl nuw nsw i32 %144, 8
  %or25.i = or i32 %.sink41.i.i, %shl23.i
  %shl26.i = shl nuw nsw i32 %shr10.i.i, 16
  %or27.i = or i32 %shl26.i, %or25.i
  %l1ss.i = getelementptr inbounds %struct.pci_dev, ptr %138, i32 0, i32 40
  %149 = ptrtoint ptr %l1ss.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %l1ss.i, align 2
  %conv.i = zext i16 %150 to i32
  %add29.i = add nuw nsw i32 %conv.i, 8
  %call30.i = call i32 @pci_read_config_dword(ptr noundef %138, i32 noundef %add29.i, ptr noundef nonnull %pctl1.i) #12
  %151 = ptrtoint ptr %l1ss.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %l1ss.i, align 2
  %conv32.i = zext i16 %152 to i32
  %add33.i = add nuw nsw i32 %conv32.i, 12
  %call34.i325 = call i32 @pci_read_config_dword(ptr noundef %138, i32 noundef %add33.i, ptr noundef nonnull %pctl2.i) #12
  %l1ss35.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 40
  %153 = ptrtoint ptr %l1ss35.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %l1ss35.i, align 2
  %conv36.i = zext i16 %154 to i32
  %add37.i = add nuw nsw i32 %conv36.i, 8
  %call38.i = call i32 @pci_read_config_dword(ptr noundef %136, i32 noundef %add37.i, ptr noundef nonnull %cctl1.i) #12
  %155 = ptrtoint ptr %l1ss35.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %l1ss35.i, align 2
  %conv40.i = zext i16 %156 to i32
  %add41.i = add nuw nsw i32 %conv40.i, 12
  %call42.i = call i32 @pci_read_config_dword(ptr noundef %136, i32 noundef %add41.i, ptr noundef nonnull %cctl2.i) #12
  %157 = ptrtoint ptr %pctl1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pctl1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or27.i, i32 %158)
  %cmp43.i = icmp eq i32 %or27.i, %158
  br i1 %cmp43.i, label %land.lhs.true.i326, label %if.end21.i.if.end54.i_crit_edge

if.end21.i.if.end54.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

land.lhs.true.i326:                               ; preds = %if.end21.i
  %159 = ptrtoint ptr %cctl1.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cctl1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or27.i, i32 %160)
  %cmp45.i = icmp eq i32 %or27.i, %160
  br i1 %cmp45.i, label %land.lhs.true47.i, label %land.lhs.true.i326.if.end54.i_crit_edge

land.lhs.true.i326.if.end54.i_crit_edge:          ; preds = %land.lhs.true.i326
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

land.lhs.true47.i:                                ; preds = %land.lhs.true.i326
  %161 = ptrtoint ptr %pctl2.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pctl2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ctl2.0.i, i32 %162)
  %cmp48.i = icmp eq i32 %ctl2.0.i, %162
  br i1 %cmp48.i, label %land.lhs.true50.i, label %land.lhs.true47.i.if.end54.i_crit_edge

land.lhs.true47.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

land.lhs.true50.i:                                ; preds = %land.lhs.true47.i
  %163 = ptrtoint ptr %cctl2.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cctl2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ctl2.0.i, i32 %164)
  %cmp51.i = icmp eq i32 %ctl2.0.i, %164
  br i1 %cmp51.i, label %land.lhs.true50.i.aspm_calc_l1ss_info.exit_crit_edge, label %land.lhs.true50.i.if.end54.i_crit_edge

land.lhs.true50.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

land.lhs.true50.i.aspm_calc_l1ss_info.exit_crit_edge: ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_calc_l1ss_info.exit

if.end54.i:                                       ; preds = %land.lhs.true50.i.if.end54.i_crit_edge, %land.lhs.true47.i.if.end54.i_crit_edge, %land.lhs.true.i326.if.end54.i_crit_edge, %if.end21.i.if.end54.i_crit_edge
  %and55.i = and i32 %158, 5
  %165 = ptrtoint ptr %cctl1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cctl1.i, align 4
  %and56.i = and i32 %166, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool57.not.i = icmp eq i32 %and55.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool58.not.i = icmp eq i32 %and56.i, 0
  %or.cond.i = select i1 %tobool57.not.i, i1 %tobool58.not.i, i1 false
  br i1 %or.cond.i, label %if.end54.i.if.end66.i_crit_edge, label %if.then59.i

if.end54.i.if.end66.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.then59.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %l1ss35.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %l1ss35.i, align 2
  %conv61.i = zext i16 %168 to i32
  %add62.i = add nuw nsw i32 %conv61.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #12
  %169 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %val.i.i, align 4, !annotation !127
  %call.i.i327 = call i32 @pci_read_config_dword(ptr noundef %136, i32 noundef %add62.i, ptr noundef nonnull %val.i.i) #12
  %170 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %171, -6
  store i32 %and.i.i, ptr %val.i.i, align 4
  %call1.i.i = call i32 @pci_write_config_dword(ptr noundef %136, i32 noundef %add62.i, i32 noundef %and.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  %172 = ptrtoint ptr %l1ss.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %l1ss.i, align 2
  %conv64.i = zext i16 %173 to i32
  %add65.i = add nuw nsw i32 %conv64.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i206.i) #12
  %174 = ptrtoint ptr %val.i206.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 -1, ptr %val.i206.i, align 4, !annotation !127
  %call.i207.i = call i32 @pci_read_config_dword(ptr noundef %138, i32 noundef %add65.i, ptr noundef nonnull %val.i206.i) #12
  %175 = ptrtoint ptr %val.i206.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %val.i206.i, align 4
  %and.i208.i = and i32 %176, -6
  store i32 %and.i208.i, ptr %val.i206.i, align 4
  %call1.i209.i = call i32 @pci_write_config_dword(ptr noundef %138, i32 noundef %add65.i, i32 noundef %and.i208.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i206.i) #12
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then59.i, %if.end54.i.if.end66.i_crit_edge
  %177 = ptrtoint ptr %l1ss.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %l1ss.i, align 2
  %conv68.i = zext i16 %178 to i32
  %add69.i = add nuw nsw i32 %conv68.i, 12
  %call70.i = call i32 @pci_write_config_dword(ptr noundef %138, i32 noundef %add69.i, i32 noundef %ctl2.0.i) #12
  %179 = ptrtoint ptr %l1ss35.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %l1ss35.i, align 2
  %conv72.i = zext i16 %180 to i32
  %add73.i = add nuw nsw i32 %conv72.i, 12
  %call74.i = call i32 @pci_write_config_dword(ptr noundef %136, i32 noundef %add73.i, i32 noundef %ctl2.0.i) #12
  %181 = ptrtoint ptr %l1ss.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %l1ss.i, align 2
  %conv76.i = zext i16 %182 to i32
  %add77.i = add nuw nsw i32 %conv76.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i210.i) #12
  %183 = ptrtoint ptr %val.i210.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -1, ptr %val.i210.i, align 4, !annotation !127
  %call.i211.i = call i32 @pci_read_config_dword(ptr noundef %138, i32 noundef %add77.i, ptr noundef nonnull %val.i210.i) #12
  %184 = ptrtoint ptr %val.i210.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %val.i210.i, align 4
  %and.i212.i = and i32 %185, -65281
  %or.i.i = or i32 %and.i212.i, %or27.i
  store i32 %or.i.i, ptr %val.i210.i, align 4
  %call1.i213.i = call i32 @pci_write_config_dword(ptr noundef %138, i32 noundef %add77.i, i32 noundef %or.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i210.i) #12
  %186 = ptrtoint ptr %l1ss.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %l1ss.i, align 2
  %conv79.i = zext i16 %187 to i32
  %add80.i = add nuw nsw i32 %conv79.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i214.i) #12
  %188 = ptrtoint ptr %val.i214.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %val.i214.i, align 4, !annotation !127
  %call.i215.i = call i32 @pci_read_config_dword(ptr noundef %138, i32 noundef %add80.i, ptr noundef nonnull %val.i214.i) #12
  %189 = ptrtoint ptr %val.i214.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %val.i214.i, align 4
  %and.i216.i = and i32 %190, 469827583
  %or.i217.i = or i32 %and.i216.i, %or27.i
  store i32 %or.i217.i, ptr %val.i214.i, align 4
  %call1.i218.i = call i32 @pci_write_config_dword(ptr noundef %138, i32 noundef %add80.i, i32 noundef %or.i217.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i214.i) #12
  %191 = ptrtoint ptr %l1ss35.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %l1ss35.i, align 2
  %conv82.i = zext i16 %192 to i32
  %add83.i = add nuw nsw i32 %conv82.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i219.i) #12
  %193 = ptrtoint ptr %val.i219.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 -1, ptr %val.i219.i, align 4, !annotation !127
  %call.i220.i = call i32 @pci_read_config_dword(ptr noundef %136, i32 noundef %add83.i, ptr noundef nonnull %val.i219.i) #12
  %194 = ptrtoint ptr %val.i219.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %val.i219.i, align 4
  %and.i221.i = and i32 %195, 469827583
  %or.i222.i = or i32 %and.i221.i, %or27.i
  store i32 %or.i222.i, ptr %val.i219.i, align 4
  %call1.i223.i = call i32 @pci_write_config_dword(ptr noundef %136, i32 noundef %add83.i, i32 noundef %or.i222.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i219.i) #12
  br i1 %or.cond.i, label %if.end66.i.aspm_calc_l1ss_info.exit_crit_edge, label %if.then87.i

if.end66.i.aspm_calc_l1ss_info.exit_crit_edge:    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_calc_l1ss_info.exit

if.then87.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %196 = ptrtoint ptr %l1ss.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %l1ss.i, align 2
  %conv89.i = zext i16 %197 to i32
  %add90.i = add nuw nsw i32 %conv89.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i224.i) #12
  %198 = ptrtoint ptr %val.i224.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 -1, ptr %val.i224.i, align 4, !annotation !127
  %call.i225.i = call i32 @pci_read_config_dword(ptr noundef %138, i32 noundef %add90.i, ptr noundef nonnull %val.i224.i) #12
  %199 = ptrtoint ptr %val.i224.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %val.i224.i, align 4
  %or.i226.i = or i32 %200, %and55.i
  store i32 %or.i226.i, ptr %val.i224.i, align 4
  %call1.i227.i = call i32 @pci_write_config_dword(ptr noundef %138, i32 noundef %add90.i, i32 noundef %or.i226.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i224.i) #12
  %201 = ptrtoint ptr %l1ss35.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %l1ss35.i, align 2
  %conv92.i = zext i16 %202 to i32
  %add93.i = add nuw nsw i32 %conv92.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i228.i) #12
  %203 = ptrtoint ptr %val.i228.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 -1, ptr %val.i228.i, align 4, !annotation !127
  %call.i229.i = call i32 @pci_read_config_dword(ptr noundef %136, i32 noundef %add93.i, ptr noundef nonnull %val.i228.i) #12
  %204 = ptrtoint ptr %val.i228.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %val.i228.i, align 4
  %or.i230.i = or i32 %205, %and56.i
  store i32 %or.i230.i, ptr %val.i228.i, align 4
  %call1.i231.i = call i32 @pci_write_config_dword(ptr noundef %136, i32 noundef %add93.i, i32 noundef %or.i230.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i228.i) #12
  br label %aspm_calc_l1ss_info.exit

aspm_calc_l1ss_info.exit:                         ; preds = %if.then87.i, %if.end66.i.aspm_calc_l1ss_info.exit_crit_edge, %land.lhs.true50.i.aspm_calc_l1ss_info.exit_crit_edge, %if.then237.aspm_calc_l1ss_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cctl2.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cctl1.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pctl2.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pctl1.i) #12
  br label %if.end238

if.end238:                                        ; preds = %aspm_calc_l1ss_info.exit, %if.end231.if.end238_crit_edge
  %206 = ptrtoint ptr %aspm_support232 to i32
  call void @__asan_load4_noabort(i32 %206)
  %bf.load240 = load i32, ptr %aspm_support232, align 4
  %207 = lshr i32 %bf.load240, 14
  %bf.shl245 = and i32 %207, 2032
  %bf.clear246 = and i32 %bf.load240, -262129
  %bf.set247 = or i32 %bf.shl245, %bf.clear246
  %bf.shl253 = and i32 %207, 260096
  %bf.set255 = or i32 %bf.set247, %bf.shl253
  store i32 %bf.set255, ptr %aspm_support232, align 4
  %devices = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 3
  %208 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %208)
  %child.0329 = load ptr, ptr %devices, align 4
  %cmp.not330 = icmp eq ptr %child.0329, %devices
  br i1 %cmp.not330, label %if.end238.cleanup_crit_edge, label %if.end238.for.body_crit_edge

if.end238.for.body_crit_edge:                     ; preds = %if.end238
  br label %for.body

if.end238.cleanup_crit_edge:                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end238.for.body_crit_edge
  %child.0331 = phi ptr [ %child.0, %for.inc.for.body_crit_edge ], [ %child.0329, %if.end238.for.body_crit_edge ]
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %child.0331, i32 0, i32 25
  %209 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %211 = and i16 %210, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %switch = icmp eq i16 %211, 0
  br i1 %switch, label %if.end265, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end265:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @pcie_aspm_check_latency(ptr noundef %child.0331)
  br label %for.inc

for.inc:                                          ; preds = %if.end265, %for.body.for.inc_crit_edge
  %212 = ptrtoint ptr %child.0331 to i32
  call void @__asan_load4_noabort(i32 %212)
  %child.0 = load ptr, ptr %child.0331, align 4
  %cmp.not = icmp eq ptr %child.0, %devices
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end238.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_l1ss_ctl1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_l1ss_ctl1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_l1ss_cap) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_l1ss_cap) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %child_lnkctl) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %parent_lnkctl) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child_lnkcap) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_lnkcap) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_clkpm_cap_init(ptr nocapture noundef %link, i32 noundef %blacklist) unnamed_addr #0 align 64 {
entry:
  %reg32 = alloca i32, align 4
  %reg16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32) #12
  %0 = ptrtoint ptr %reg32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg32, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #12
  %1 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %reg16, align 2, !annotation !127
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subordinate, align 4
  %devices = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %child.040 = load ptr, ptr %devices, align 4
  %cmp.not41 = icmp eq ptr %child.040, %devices
  br i1 %cmp.not41, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %child.043 = phi ptr [ %child.0, %if.end.for.body_crit_edge ], [ %child.040, %entry.for.body_crit_edge ]
  %enabled.042 = phi i32 [ %spec.select, %if.end.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %call = call i32 @pcie_capability_read_dword(ptr noundef %child.043, i32 noundef 12, ptr noundef nonnull %reg32) #12
  %7 = ptrtoint ptr %reg32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg32, align 4
  %and = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.body
  %call2 = call i32 @pcie_capability_read_word(ptr noundef %child.043, i32 noundef 16, ptr noundef nonnull %reg16) #12
  %9 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg16, align 2
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not = icmp eq i16 %11, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 %enabled.042
  %12 = ptrtoint ptr %child.043 to i32
  call void @__asan_load4_noabort(i32 %12)
  %child.0 = load ptr, ptr %child.043, align 4
  %cmp.not = icmp eq ptr %child.0, %devices
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %enabled.2 = phi i32 [ 1, %entry.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ %spec.select, %if.end.for.end_crit_edge ]
  %capable.0 = phi i16 [ 256, %entry.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ 256, %if.end.for.end_crit_edge ]
  %clkpm_enabled = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 6
  %13 = trunc i32 %enabled.2 to i16
  %14 = ptrtoint ptr %clkpm_enabled to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %clkpm_enabled, align 4
  %bf.value = and i16 %13, 1
  %bf.shl = shl nuw nsw i16 %bf.value, 7
  %bf.clear = and i16 %bf.load, -481
  %bf.set = or i16 %bf.clear, %bf.shl
  %bf.shl14 = shl nuw nsw i16 %bf.value, 6
  %bf.set16 = or i16 %bf.set, %bf.shl14
  %bf.set22 = or i16 %bf.set16, %capable.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blacklist)
  %tobool24.not.not = icmp eq i32 %blacklist, 0
  %bf.shl27 = select i1 %tobool24.not.not, i16 0, i16 32
  %bf.set29 = or i16 %bf.set22, %bf.shl27
  %15 = ptrtoint ptr %clkpm_enabled to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bf.set29, ptr %clkpm_enabled, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_config_aspm_path(ptr noundef %link) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not4 = icmp eq ptr %link, null
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %policy_to_aspm_state.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %link.addr.05 = phi ptr [ %4, %policy_to_aspm_state.exit.while.body_crit_edge ], [ %link, %entry.while.body_crit_edge ]
  %0 = load i32, ptr @aspm_policy, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %0, label %while.body.policy_to_aspm_state.exit_crit_edge [
    i32 0, label %sw.bb3.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

while.body.policy_to_aspm_state.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb1.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb2.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb3.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_default.i = getelementptr inbounds %struct.pcie_link_state, ptr %link.addr.05, i32 0, i32 5
  %2 = ptrtoint ptr %aspm_default.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %aspm_default.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 4
  %bf.clear.i = and i32 %bf.lshr.i, 127
  br label %policy_to_aspm_state.exit

policy_to_aspm_state.exit:                        ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %while.body.policy_to_aspm_state.exit_crit_edge
  %retval.0.i = phi i32 [ %bf.clear.i, %sw.bb3.i ], [ 127, %sw.bb2.i ], [ 7, %sw.bb1.i ], [ 0, %while.body.policy_to_aspm_state.exit_crit_edge ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %link.addr.05, i32 noundef %retval.0.i)
  %parent = getelementptr inbounds %struct.pcie_link_state, ptr %link.addr.05, i32 0, i32 3
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %policy_to_aspm_state.exit.while.end_crit_edge, label %policy_to_aspm_state.exit.while.body_crit_edge

policy_to_aspm_state.exit.while.body_crit_edge:   ; preds = %policy_to_aspm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

policy_to_aspm_state.exit.while.end_crit_edge:    ; preds = %policy_to_aspm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %policy_to_aspm_state.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_set_clkpm(ptr nocapture noundef %link, i32 noundef %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %clkpm_capable = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 6
  %0 = ptrtoint ptr %clkpm_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %clkpm_capable, align 4
  %1 = and i16 %bf.load, 288
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %2 = icmp eq i16 %1, 256
  %enable.addr.0 = select i1 %2, i32 %enable, i32 0
  %bf.lshr7 = lshr i16 %bf.load, 7
  %bf.clear8 = and i16 %bf.lshr7, 1
  %bf.cast9 = zext i16 %bf.clear8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %enable.addr.0, i32 %bf.cast9)
  %cmp = icmp eq i32 %enable.addr.0, %bf.cast9
  br i1 %cmp, label %entry.return_crit_edge, label %if.end11

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end11:                                         ; preds = %entry
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link, align 4
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subordinate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable.addr.0)
  %tobool.not.i = icmp eq i32 %enable.addr.0, 0
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %child.015.i = load ptr, ptr %devices.i, align 4
  %cmp.not16.i = icmp eq ptr %child.015.i, %devices.i
  br i1 %cmp.not16.i, label %if.end11.pcie_set_clkpm_nocheck.exit_crit_edge, label %for.body.lr.ph.i

if.end11.pcie_set_clkpm_nocheck.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit

for.body.lr.ph.i:                                 ; preds = %if.end11
  %conv.i = select i1 %tobool.not.i, i16 0, i16 256
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.017.i = phi ptr [ %child.015.i, %for.body.lr.ph.i ], [ %child.0.i, %for.body.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %child.017.i, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %conv.i) #12
  %8 = ptrtoint ptr %child.017.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %child.0.i = load ptr, ptr %child.017.i, align 4
  %cmp.not.i = icmp eq ptr %child.0.i, %devices.i
  br i1 %cmp.not.i, label %for.body.i.pcie_set_clkpm_nocheck.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.pcie_set_clkpm_nocheck.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit

pcie_set_clkpm_nocheck.exit:                      ; preds = %for.body.i.pcie_set_clkpm_nocheck.exit_crit_edge, %if.end11.pcie_set_clkpm_nocheck.exit_crit_edge
  %9 = ptrtoint ptr %clkpm_capable to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %clkpm_capable, align 4
  %bf.shl.i = select i1 %tobool.not.i, i16 0, i16 128
  %bf.clear.i = and i16 %bf.load.i, -129
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %clkpm_capable, align 4
  br label %return

return:                                           ; preds = %pcie_set_clkpm_nocheck.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_aspm_update_sysfs_visibility(ptr nocapture noundef readonly %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 2
  %0 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subordinate, align 4
  %devices = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %child.011 = load ptr, ptr %devices, align 4
  %cmp.not13 = icmp eq ptr %child.011, %devices
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %child.014 = phi ptr [ %child.0, %for.body.for.body_crit_edge ], [ %child.011, %entry.for.body_crit_edge ]
  %dev = getelementptr inbounds %struct.pci_dev, ptr %child.014, i32 0, i32 44
  %call = tail call i32 @sysfs_update_group(ptr noundef %dev, ptr noundef nonnull @aspm_ctrl_attr_group) #12
  %3 = ptrtoint ptr %child.014 to i32
  call void @__asan_load4_noabort(i32 %3)
  %child.0 = load ptr, ptr %child.014, align 4
  %4 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subordinate, align 4
  %devices2 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3
  %cmp.not = icmp eq ptr %child.0, %devices2
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_aspm_exit_link_state(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %link_state = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_state, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @aspm_lock, i32 noundef 0) #12
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subordinate, align 4
  %devices = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %devices, align 4
  %cmp.i.not = icmp eq ptr %9, %devices
  br i1 %cmp.i.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_state, align 8
  %root6 = getelementptr inbounds %struct.pcie_link_state, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %root6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root6, align 4
  %parent7 = getelementptr inbounds %struct.pcie_link_state, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %parent7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent7, align 4
  tail call fastcc void @pcie_config_aspm_link(ptr noundef %11, i32 noundef 0)
  %sibling = getelementptr inbounds %struct.pcie_link_state, ptr %11, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sibling) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_del.exit_crit_edge

if.end4.list_del.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.pcie_link_state, ptr %11, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sibling, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end4.list_del.exit_crit_edge
  %22 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %sibling, align 4
  %prev.i = getelementptr inbounds %struct.pcie_link_state, ptr %11, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %11, align 4
  %link_state.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 37
  %26 = ptrtoint ptr %link_state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %link_state.i, align 8
  tail call void @kfree(ptr noundef %11) #12
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %list_del.exit.out_crit_edge, label %if.then9

list_del.exit.out_crit_edge:                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then9:                                         ; preds = %list_del.exit
  %parent.i = getelementptr inbounds %struct.pcie_link_state, ptr %13, i32 0, i32 3
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %do.body3.i, !prof !130

for.cond.preheader.i:                             ; preds = %if.then9
  %.pn80.i = load ptr, ptr @link_list, align 4
  %cmp.not81.i = icmp eq ptr %.pn80.i, @link_list
  br i1 %cmp.not81.i, label %for.cond.preheader.i.while.body.i.preheader_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.while.body.i.preheader_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

do.body3.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/pcie/aspm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 957, 0\0A.popsection", ""() #12, !srcloc !131
  unreachable

for.cond23.preheader.i:                           ; preds = %for.inc.i
  %.pn7886.pr.i = load ptr, ptr @link_list, align 4
  %cmp25.not87.i = icmp eq ptr %.pn7886.pr.i, @link_list
  br i1 %cmp25.not87.i, label %for.cond23.preheader.i.while.body.i.preheader_crit_edge, label %for.cond23.preheader.i.for.body28.i_crit_edge

for.cond23.preheader.i.for.body28.i_crit_edge:    ; preds = %for.cond23.preheader.i
  br label %for.body28.i

for.cond23.preheader.i.while.body.i.preheader_crit_edge: ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn82.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn80.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %root11.i = getelementptr i8, ptr %.pn82.i, i32 -8
  %29 = ptrtoint ptr %root11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %root11.i, align 4
  %cmp12.not.i = icmp eq ptr %30, %13
  br i1 %cmp12.not.i, label %if.end14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_support.i = getelementptr i8, ptr %.pn82.i, i32 8
  %31 = ptrtoint ptr %aspm_support.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load.i = load i32, ptr %aspm_support.i, align 4
  %32 = lshr i32 %bf.load.i, 14
  %bf.shl.i = and i32 %32, 260096
  %bf.clear.i = and i32 %bf.load.i, -260097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  store i32 %bf.set.i, ptr %aspm_support.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %for.body.i.for.inc.i_crit_edge
  %33 = ptrtoint ptr %.pn82.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i = load ptr, ptr %.pn82.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @link_list
  br i1 %cmp.not.i, label %for.cond23.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body28.i:                                     ; preds = %cleanup.i.for.body28.i_crit_edge, %for.cond23.preheader.i.for.body28.i_crit_edge
  %.pn7888.i = phi ptr [ %.pn78.i, %cleanup.i.for.body28.i_crit_edge ], [ %.pn7886.pr.i, %for.cond23.preheader.i.for.body28.i_crit_edge ]
  %root29.i = getelementptr i8, ptr %.pn7888.i, i32 -8
  %34 = ptrtoint ptr %root29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %root29.i, align 4
  %cmp30.not.i = icmp eq ptr %35, %13
  br i1 %cmp30.not.i, label %if.end32.i, label %for.body28.i.cleanup.i_crit_edge

for.body28.i.cleanup.i_crit_edge:                 ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end32.i:                                       ; preds = %for.body28.i
  %link.1.i = getelementptr i8, ptr %.pn7888.i, i32 -16
  %36 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link.1.i, align 4
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %subordinate.i, align 4
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %child.083.i = load ptr, ptr %devices.i, align 4
  %cmp39.not84.i = icmp eq ptr %child.083.i, %devices.i
  br i1 %cmp39.not84.i, label %if.end32.i.cleanup.i_crit_edge, label %if.end32.i.for.body42.i_crit_edge

if.end32.i.for.body42.i_crit_edge:                ; preds = %if.end32.i
  br label %for.body42.i

if.end32.i.cleanup.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

for.body42.i:                                     ; preds = %for.inc48.i.for.body42.i_crit_edge, %if.end32.i.for.body42.i_crit_edge
  %child.085.i = phi ptr [ %child.0.i, %for.inc48.i.for.body42.i_crit_edge ], [ %child.083.i, %if.end32.i.for.body42.i_crit_edge ]
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %child.085.i, i32 0, i32 25
  %41 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %43 = and i16 %42, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %switch.i = icmp eq i16 %43, 0
  br i1 %switch.i, label %if.end47.i, label %for.body42.i.for.inc48.i_crit_edge

for.body42.i.for.inc48.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc48.i

if.end47.i:                                       ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pcie_aspm_check_latency(ptr noundef %child.085.i) #12
  br label %for.inc48.i

for.inc48.i:                                      ; preds = %if.end47.i, %for.body42.i.for.inc48.i_crit_edge
  %44 = ptrtoint ptr %child.085.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %child.0.i = load ptr, ptr %child.085.i, align 4
  %cmp39.not.i = icmp eq ptr %child.0.i, %devices.i
  br i1 %cmp39.not.i, label %for.inc48.i.cleanup.i_crit_edge, label %for.inc48.i.for.body42.i_crit_edge

for.inc48.i.for.body42.i_crit_edge:               ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body42.i

for.inc48.i.cleanup.i_crit_edge:                  ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.inc48.i.cleanup.i_crit_edge, %if.end32.i.cleanup.i_crit_edge, %for.body28.i.cleanup.i_crit_edge
  %45 = ptrtoint ptr %.pn7888.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn78.i = load ptr, ptr %.pn7888.i, align 4
  %cmp25.not.i = icmp eq ptr %.pn78.i, @link_list
  br i1 %cmp25.not.i, label %cleanup.i.while.body.i.preheader_crit_edge, label %cleanup.i.for.body28.i_crit_edge

cleanup.i.for.body28.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28.i

cleanup.i.while.body.i.preheader_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %cleanup.i.while.body.i.preheader_crit_edge, %for.cond23.preheader.i.while.body.i.preheader_crit_edge, %for.cond.preheader.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %policy_to_aspm_state.exit.i.while.body.i_crit_edge, %while.body.i.preheader
  %link.addr.05.i = phi ptr [ %50, %policy_to_aspm_state.exit.i.while.body.i_crit_edge ], [ %15, %while.body.i.preheader ]
  %46 = load i32, ptr @aspm_policy, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %46, label %while.body.i.policy_to_aspm_state.exit.i_crit_edge [
    i32 0, label %sw.bb3.i.i
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

while.body.i.policy_to_aspm_state.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit.i

sw.bb1.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit.i

sw.bb2.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit.i

sw.bb3.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_default.i.i = getelementptr inbounds %struct.pcie_link_state, ptr %link.addr.05.i, i32 0, i32 5
  %48 = ptrtoint ptr %aspm_default.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load.i.i = load i32, ptr %aspm_default.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 4
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 127
  br label %policy_to_aspm_state.exit.i

policy_to_aspm_state.exit.i:                      ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %while.body.i.policy_to_aspm_state.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %bf.clear.i.i, %sw.bb3.i.i ], [ 127, %sw.bb2.i.i ], [ 7, %sw.bb1.i.i ], [ 0, %while.body.i.policy_to_aspm_state.exit.i_crit_edge ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %link.addr.05.i, i32 noundef %retval.0.i.i) #12
  %parent.i23 = getelementptr inbounds %struct.pcie_link_state, ptr %link.addr.05.i, i32 0, i32 3
  %49 = ptrtoint ptr %parent.i23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent.i23, align 4
  %tobool.not.i24 = icmp eq ptr %50, null
  br i1 %tobool.not.i24, label %policy_to_aspm_state.exit.i.out_crit_edge, label %policy_to_aspm_state.exit.i.while.body.i_crit_edge

policy_to_aspm_state.exit.i.while.body.i_crit_edge: ; preds = %policy_to_aspm_state.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

policy_to_aspm_state.exit.i.out_crit_edge:        ; preds = %policy_to_aspm_state.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %policy_to_aspm_state.exit.i.out_crit_edge, %list_del.exit.out_crit_edge, %if.end.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #12
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_config_aspm_link(ptr nocapture noundef %link, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  %val.i59.i = alloca i32, align 4
  %val.i55.i = alloca i32, align 4
  %val.i51.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %downstream = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 1
  %0 = ptrtoint ptr %downstream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %downstream, align 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subordinate, align 4
  %aspm_capable = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 5
  %6 = ptrtoint ptr %aspm_capable to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %aspm_capable, align 4
  %bf.lshr = lshr i32 %bf.load, 11
  %aspm_disable = getelementptr inbounds %struct.pcie_link_state, ptr %link, i32 0, i32 6
  %7 = ptrtoint ptr %aspm_disable to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load1 = load i16, ptr %aspm_disable, align 4
  %bf.lshr2 = lshr i16 %bf.load1, 9
  %bf.cast = zext i16 %bf.lshr2 to i32
  %neg = xor i32 %bf.cast, -1
  %bf.clear = and i32 %state, 127
  %and = and i32 %bf.clear, %bf.lshr
  %and3 = and i32 %and, %neg
  %and4 = and i32 %and3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %and5 = and i32 %and3, 7
  %spec.select = select i1 %tobool.not, i32 %and5, i32 %and3
  %current_state = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 30
  %8 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then8_crit_edge

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false:                                    ; preds = %entry
  %current_state6 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 30
  %10 = ptrtoint ptr %current_state6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_state6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not = icmp eq i32 %11, 0
  br i1 %cmp7.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = lshr i32 %bf.load, 18
  br label %if.end14

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %entry.if.then8_crit_edge
  %and9 = and i32 %spec.select, 31
  %bf.lshr11 = lshr i32 %bf.load, 18
  %and13 = and i32 %bf.lshr11, 96
  %or = or i32 %and9, %and13
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %lor.lhs.false.if.end14_crit_edge
  %bf.lshr17.pre-phi = phi i32 [ %.pre, %lor.lhs.false.if.end14_crit_edge ], [ %bf.lshr11, %if.then8 ]
  %state.addr.1 = phi i32 [ %spec.select, %lor.lhs.false.if.end14_crit_edge ], [ %or, %if.then8 ]
  %bf.clear18 = and i32 %bf.lshr17.pre-phi, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear18, i32 %state.addr.1)
  %cmp19 = icmp eq i32 %bf.clear18, %state.addr.1
  br i1 %cmp19, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %and22 = and i32 %state.addr.1, 1
  %and27 = lshr i32 %state.addr.1, 1
  %and27.lobit = and i32 %and27, 1
  %and32 = and i32 %state.addr.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %12 = lshr exact i32 %and32, 1
  %13 = or i32 %12, %and22
  %14 = or i32 %12, %and27.lobit
  %15 = and i32 %bf.load, 245760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool43.not = icmp eq i32 %15, 0
  br i1 %tobool43.not, label %if.end21.if.end45_crit_edge, label %if.then44

if.end21.if.end45_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then44:                                        ; preds = %if.end21
  %l1ss.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 40
  %16 = ptrtoint ptr %l1ss.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %l1ss.i, align 2
  %conv.i = zext i16 %17 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #12
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i.i, align 4, !annotation !127
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add.i, ptr noundef nonnull %val.i.i) #12
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %20, -16
  store i32 %and.i.i, ptr %val.i.i, align 4
  %call1.i.i = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add.i, i32 noundef %and.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  %l1ss1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 40
  %21 = ptrtoint ptr %l1ss1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %l1ss1.i, align 2
  %conv2.i = zext i16 %22 to i32
  %add3.i = add nuw nsw i32 %conv2.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i51.i) #12
  %23 = ptrtoint ptr %val.i51.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i51.i, align 4, !annotation !127
  %call.i52.i = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add3.i, ptr noundef nonnull %val.i51.i) #12
  %24 = ptrtoint ptr %val.i51.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i51.i, align 4
  %and.i53.i = and i32 %25, -16
  store i32 %and.i53.i, ptr %val.i51.i, align 4
  %call1.i54.i = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef %add3.i, i32 noundef %and.i53.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i51.i) #12
  %26 = and i32 %bf.lshr17.pre-phi, 24
  %and.i = xor i32 %26, 24
  %and4.i = and i32 %and.i, %state.addr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %if.then44.pcie_config_aspm_l1ss.exit_crit_edge, label %if.then.i

if.then44.pcie_config_aspm_l1ss.exit_crit_edge:   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_config_aspm_l1ss.exit

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %1, i32 noundef 16, i16 noundef zeroext 2, i16 noundef zeroext 0) #12
  %call5.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 16, i16 noundef zeroext 2, i16 noundef zeroext 0) #12
  br label %pcie_config_aspm_l1ss.exit

pcie_config_aspm_l1ss.exit:                       ; preds = %if.then.i, %if.then44.pcie_config_aspm_l1ss.exit_crit_edge
  %and6.i = and i32 %state.addr.1, 8
  %and10.i = lshr i32 %state.addr.1, 2
  %27 = and i32 %and10.i, 4
  %28 = or i32 %27, %and6.i
  %and15.i = lshr i32 %state.addr.1, 4
  %29 = and i32 %and15.i, 2
  %30 = or i32 %28, %29
  %and20.i = lshr i32 %state.addr.1, 6
  %31 = and i32 %and20.i, 1
  %32 = or i32 %30, %31
  %33 = ptrtoint ptr %l1ss1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %l1ss1.i, align 2
  %conv26.i = zext i16 %34 to i32
  %add27.i = add nuw nsw i32 %conv26.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i55.i) #12
  %35 = ptrtoint ptr %val.i55.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i55.i, align 4, !annotation !127
  %call.i56.i = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add27.i, ptr noundef nonnull %val.i55.i) #12
  %36 = ptrtoint ptr %val.i55.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i55.i, align 4
  %and.i57.i = and i32 %37, -16
  %or.i.i = or i32 %and.i57.i, %32
  store i32 %or.i.i, ptr %val.i55.i, align 4
  %call1.i58.i = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef %add27.i, i32 noundef %or.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i55.i) #12
  %38 = ptrtoint ptr %l1ss.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %l1ss.i, align 2
  %conv29.i = zext i16 %39 to i32
  %add30.i = add nuw nsw i32 %conv29.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i59.i) #12
  %40 = ptrtoint ptr %val.i59.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %val.i59.i, align 4, !annotation !127
  %call.i60.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add30.i, ptr noundef nonnull %val.i59.i) #12
  %41 = ptrtoint ptr %val.i59.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i59.i, align 4
  %and.i61.i = and i32 %42, -16
  %or.i62.i = or i32 %and.i61.i, %32
  store i32 %or.i62.i, ptr %val.i59.i, align 4
  %call1.i63.i = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add30.i, i32 noundef %or.i62.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i59.i) #12
  br label %if.end45

if.end45:                                         ; preds = %pcie_config_aspm_l1ss.exit, %if.end21.if.end45_crit_edge
  br i1 %tobool33.not, label %if.end45.if.end49_crit_edge, label %if.then48

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i101 = trunc i32 %14 to i16
  %call.i102 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext %conv.i101) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  %devices = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3
  %43 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %43)
  %child.0107 = load ptr, ptr %devices, align 4
  %cmp51.not108 = icmp eq ptr %child.0107, %devices
  br i1 %cmp51.not108, label %if.end49.for.end_crit_edge, label %for.body.lr.ph

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end49
  %conv.i103 = trunc i32 %13 to i16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %child.0109 = phi ptr [ %child.0107, %for.body.lr.ph ], [ %child.0, %for.body.for.body_crit_edge ]
  %call.i104 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %child.0109, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext %conv.i103) #12
  %44 = ptrtoint ptr %child.0109 to i32
  call void @__asan_load4_noabort(i32 %44)
  %child.0 = load ptr, ptr %child.0109, align 4
  %cmp51.not = icmp eq ptr %child.0, %devices
  br i1 %cmp51.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end49.for.end_crit_edge
  br i1 %tobool33.not, label %if.then59, label %for.end.if.end60_crit_edge

for.end.if.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then59:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i105 = trunc i32 %14 to i16
  %call.i106 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %3, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext %conv.i105) #12
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %for.end.if.end60_crit_edge
  %45 = ptrtoint ptr %aspm_capable to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load62 = load i32, ptr %aspm_capable, align 4
  %bf.value = shl nsw i32 %state.addr.1, 18
  %bf.shl = and i32 %bf.value, 33292288
  %bf.clear63 = and i32 %bf.load62, -33292289
  %bf.set = or i32 %bf.clear63, %bf.shl
  store i32 %bf.set, ptr %aspm_capable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_aspm_pm_state_change(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link_state = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 37
  %0 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link_state, align 8
  %.b = load i1, ptr @aspm_disabled, align 4
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %.b, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @aspm_lock, i32 noundef 0) #12
  %root = getelementptr inbounds %struct.pcie_link_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %parent.i = getelementptr inbounds %struct.pcie_link_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %do.body3.i, !prof !130

for.cond.preheader.i:                             ; preds = %if.end
  %.pn80.i = load ptr, ptr @link_list, align 4
  %cmp.not81.i = icmp eq ptr %.pn80.i, @link_list
  br i1 %cmp.not81.i, label %for.cond.preheader.i.while.body.i.preheader_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.while.body.i.preheader_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/pcie/aspm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 957, 0\0A.popsection", ""() #12, !srcloc !131
  unreachable

for.cond23.preheader.i:                           ; preds = %for.inc.i
  %.pn7886.pr.i = load ptr, ptr @link_list, align 4
  %cmp25.not87.i = icmp eq ptr %.pn7886.pr.i, @link_list
  br i1 %cmp25.not87.i, label %for.cond23.preheader.i.while.body.i.preheader_crit_edge, label %for.cond23.preheader.i.for.body28.i_crit_edge

for.cond23.preheader.i.for.body28.i_crit_edge:    ; preds = %for.cond23.preheader.i
  br label %for.body28.i

for.cond23.preheader.i.while.body.i.preheader_crit_edge: ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn82.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn80.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %root11.i = getelementptr i8, ptr %.pn82.i, i32 -8
  %6 = ptrtoint ptr %root11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root11.i, align 4
  %cmp12.not.i = icmp eq ptr %7, %3
  br i1 %cmp12.not.i, label %if.end14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_support.i = getelementptr i8, ptr %.pn82.i, i32 8
  %8 = ptrtoint ptr %aspm_support.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %aspm_support.i, align 4
  %9 = lshr i32 %bf.load.i, 14
  %bf.shl.i = and i32 %9, 260096
  %bf.clear.i = and i32 %bf.load.i, -260097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  store i32 %bf.set.i, ptr %aspm_support.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn82.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn82.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @link_list
  br i1 %cmp.not.i, label %for.cond23.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body28.i:                                     ; preds = %cleanup.i.for.body28.i_crit_edge, %for.cond23.preheader.i.for.body28.i_crit_edge
  %.pn7888.i = phi ptr [ %.pn78.i, %cleanup.i.for.body28.i_crit_edge ], [ %.pn7886.pr.i, %for.cond23.preheader.i.for.body28.i_crit_edge ]
  %root29.i = getelementptr i8, ptr %.pn7888.i, i32 -8
  %11 = ptrtoint ptr %root29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root29.i, align 4
  %cmp30.not.i = icmp eq ptr %12, %3
  br i1 %cmp30.not.i, label %if.end32.i, label %for.body28.i.cleanup.i_crit_edge

for.body28.i.cleanup.i_crit_edge:                 ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end32.i:                                       ; preds = %for.body28.i
  %link.1.i = getelementptr i8, ptr %.pn7888.i, i32 -16
  %13 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link.1.i, align 4
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %subordinate.i, align 4
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %child.083.i = load ptr, ptr %devices.i, align 4
  %cmp39.not84.i = icmp eq ptr %child.083.i, %devices.i
  br i1 %cmp39.not84.i, label %if.end32.i.cleanup.i_crit_edge, label %if.end32.i.for.body42.i_crit_edge

if.end32.i.for.body42.i_crit_edge:                ; preds = %if.end32.i
  br label %for.body42.i

if.end32.i.cleanup.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

for.body42.i:                                     ; preds = %for.inc48.i.for.body42.i_crit_edge, %if.end32.i.for.body42.i_crit_edge
  %child.085.i = phi ptr [ %child.0.i, %for.inc48.i.for.body42.i_crit_edge ], [ %child.083.i, %if.end32.i.for.body42.i_crit_edge ]
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %child.085.i, i32 0, i32 25
  %18 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %20 = and i16 %19, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %switch.i = icmp eq i16 %20, 0
  br i1 %switch.i, label %if.end47.i, label %for.body42.i.for.inc48.i_crit_edge

for.body42.i.for.inc48.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc48.i

if.end47.i:                                       ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pcie_aspm_check_latency(ptr noundef %child.085.i) #12
  br label %for.inc48.i

for.inc48.i:                                      ; preds = %if.end47.i, %for.body42.i.for.inc48.i_crit_edge
  %21 = ptrtoint ptr %child.085.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %child.0.i = load ptr, ptr %child.085.i, align 4
  %cmp39.not.i = icmp eq ptr %child.0.i, %devices.i
  br i1 %cmp39.not.i, label %for.inc48.i.cleanup.i_crit_edge, label %for.inc48.i.for.body42.i_crit_edge

for.inc48.i.for.body42.i_crit_edge:               ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body42.i

for.inc48.i.cleanup.i_crit_edge:                  ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.inc48.i.cleanup.i_crit_edge, %if.end32.i.cleanup.i_crit_edge, %for.body28.i.cleanup.i_crit_edge
  %22 = ptrtoint ptr %.pn7888.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn78.i = load ptr, ptr %.pn7888.i, align 4
  %cmp25.not.i = icmp eq ptr %.pn78.i, @link_list
  br i1 %cmp25.not.i, label %cleanup.i.while.body.i.preheader_crit_edge, label %cleanup.i.for.body28.i_crit_edge

cleanup.i.for.body28.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28.i

cleanup.i.while.body.i.preheader_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %cleanup.i.while.body.i.preheader_crit_edge, %for.cond23.preheader.i.while.body.i.preheader_crit_edge, %for.cond.preheader.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %policy_to_aspm_state.exit.i.while.body.i_crit_edge, %while.body.i.preheader
  %link.addr.05.i = phi ptr [ %27, %policy_to_aspm_state.exit.i.while.body.i_crit_edge ], [ %1, %while.body.i.preheader ]
  %23 = load i32, ptr @aspm_policy, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %23, label %while.body.i.policy_to_aspm_state.exit.i_crit_edge [
    i32 0, label %sw.bb3.i.i
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

while.body.i.policy_to_aspm_state.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit.i

sw.bb1.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit.i

sw.bb2.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit.i

sw.bb3.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_default.i.i = getelementptr inbounds %struct.pcie_link_state, ptr %link.addr.05.i, i32 0, i32 5
  %25 = ptrtoint ptr %aspm_default.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i.i = load i32, ptr %aspm_default.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 4
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 127
  br label %policy_to_aspm_state.exit.i

policy_to_aspm_state.exit.i:                      ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %while.body.i.policy_to_aspm_state.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %bf.clear.i.i, %sw.bb3.i.i ], [ 127, %sw.bb2.i.i ], [ 7, %sw.bb1.i.i ], [ 0, %while.body.i.policy_to_aspm_state.exit.i_crit_edge ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %link.addr.05.i, i32 noundef %retval.0.i.i) #12
  %parent.i4 = getelementptr inbounds %struct.pcie_link_state, ptr %link.addr.05.i, i32 0, i32 3
  %26 = ptrtoint ptr %parent.i4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i4, align 4
  %tobool.not.i5 = icmp eq ptr %27, null
  br i1 %tobool.not.i5, label %pcie_config_aspm_path.exit, label %policy_to_aspm_state.exit.i.while.body.i_crit_edge

policy_to_aspm_state.exit.i.while.body.i_crit_edge: ; preds = %policy_to_aspm_state.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

pcie_config_aspm_path.exit:                       ; preds = %policy_to_aspm_state.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #12
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %pcie_config_aspm_path.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_aspm_powersave_config_link(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link_state = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 37
  %0 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link_state, align 8
  %.b = load i1, ptr @aspm_disabled, align 4
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %.b, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @aspm_policy, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp eq i32 %3, 2
  br i1 %switch, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @aspm_lock, i32 noundef 0) #12
  br label %while.body.i

while.body.i:                                     ; preds = %policy_to_aspm_state.exit.i.while.body.i_crit_edge, %if.end4
  %link.addr.05.i = phi ptr [ %8, %policy_to_aspm_state.exit.i.while.body.i_crit_edge ], [ %1, %if.end4 ]
  %4 = load i32, ptr @aspm_policy, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %4, label %while.body.i.policy_to_aspm_state.exit.i_crit_edge [
    i32 0, label %sw.bb3.i.i
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

while.body.i.policy_to_aspm_state.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit.i

sw.bb1.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit.i

sw.bb2.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit.i

sw.bb3.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_default.i.i = getelementptr inbounds %struct.pcie_link_state, ptr %link.addr.05.i, i32 0, i32 5
  %6 = ptrtoint ptr %aspm_default.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i.i = load i32, ptr %aspm_default.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 4
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 127
  br label %policy_to_aspm_state.exit.i

policy_to_aspm_state.exit.i:                      ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %while.body.i.policy_to_aspm_state.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %bf.clear.i.i, %sw.bb3.i.i ], [ 127, %sw.bb2.i.i ], [ 7, %sw.bb1.i.i ], [ 0, %while.body.i.policy_to_aspm_state.exit.i_crit_edge ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %link.addr.05.i, i32 noundef %retval.0.i.i) #12
  %parent.i = getelementptr inbounds %struct.pcie_link_state, ptr %link.addr.05.i, i32 0, i32 3
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %pcie_config_aspm_path.exit, label %policy_to_aspm_state.exit.i.while.body.i_crit_edge

policy_to_aspm_state.exit.i.while.body.i_crit_edge: ; preds = %policy_to_aspm_state.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

pcie_config_aspm_path.exit:                       ; preds = %policy_to_aspm_state.exit.i
  %9 = load i32, ptr @aspm_policy, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %9, label %pcie_config_aspm_path.exit.policy_to_clkpm_state.exit_crit_edge [
    i32 0, label %sw.bb2.i
    i32 2, label %pcie_config_aspm_path.exit.sw.bb1.i_crit_edge
    i32 3, label %pcie_config_aspm_path.exit.sw.bb1.i_crit_edge12
  ]

pcie_config_aspm_path.exit.sw.bb1.i_crit_edge12:  ; preds = %pcie_config_aspm_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

pcie_config_aspm_path.exit.sw.bb1.i_crit_edge:    ; preds = %pcie_config_aspm_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

pcie_config_aspm_path.exit.policy_to_clkpm_state.exit_crit_edge: ; preds = %pcie_config_aspm_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_clkpm_state.exit

sw.bb1.i:                                         ; preds = %pcie_config_aspm_path.exit.sw.bb1.i_crit_edge, %pcie_config_aspm_path.exit.sw.bb1.i_crit_edge12
  br label %policy_to_clkpm_state.exit

sw.bb2.i:                                         ; preds = %pcie_config_aspm_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  %clkpm_default.i = getelementptr inbounds %struct.pcie_link_state, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %clkpm_default.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %clkpm_default.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 6
  %bf.clear.i = and i16 %bf.lshr.i, 1
  %bf.cast.i = zext i16 %bf.clear.i to i32
  br label %policy_to_clkpm_state.exit

policy_to_clkpm_state.exit:                       ; preds = %sw.bb2.i, %sw.bb1.i, %pcie_config_aspm_path.exit.policy_to_clkpm_state.exit_crit_edge
  %retval.0.i = phi i32 [ %bf.cast.i, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %pcie_config_aspm_path.exit.policy_to_clkpm_state.exit_crit_edge ]
  %clkpm_capable.i = getelementptr inbounds %struct.pcie_link_state, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %clkpm_capable.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i9 = load i16, ptr %clkpm_capable.i, align 4
  %13 = and i16 %bf.load.i9, 288
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %13)
  %14 = icmp eq i16 %13, 256
  %enable.addr.0.i = select i1 %14, i32 %retval.0.i, i32 0
  %bf.lshr7.i = lshr i16 %bf.load.i9, 7
  %bf.clear8.i = and i16 %bf.lshr7.i, 1
  %bf.cast9.i = zext i16 %bf.clear8.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %enable.addr.0.i, i32 %bf.cast9.i)
  %cmp.i = icmp eq i32 %enable.addr.0.i, %bf.cast9.i
  br i1 %cmp.i, label %policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge, label %if.end11.i

policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge: ; preds = %policy_to_clkpm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm.exit

if.end11.i:                                       ; preds = %policy_to_clkpm_state.exit
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %subordinate.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %subordinate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable.addr.0.i)
  %tobool.not.i.i = icmp eq i32 %enable.addr.0.i, 0
  %devices.i.i = getelementptr inbounds %struct.pci_bus, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %child.015.i.i = load ptr, ptr %devices.i.i, align 4
  %cmp.not16.i.i = icmp eq ptr %child.015.i.i, %devices.i.i
  br i1 %cmp.not16.i.i, label %if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end11.i
  %conv.i.i = select i1 %tobool.not.i.i, i16 0, i16 256
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child.017.i.i = phi ptr [ %child.015.i.i, %for.body.lr.ph.i.i ], [ %child.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %child.017.i.i, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %conv.i.i) #12
  %20 = ptrtoint ptr %child.017.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %child.0.i.i = load ptr, ptr %child.017.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %child.0.i.i, %devices.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit.i

pcie_set_clkpm_nocheck.exit.i:                    ; preds = %for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, %if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge
  %21 = ptrtoint ptr %clkpm_capable.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.i10 = load i16, ptr %clkpm_capable.i, align 4
  %bf.shl.i.i = select i1 %tobool.not.i.i, i16 0, i16 128
  %bf.clear.i.i11 = and i16 %bf.load.i.i10, -129
  %bf.set.i.i = or i16 %bf.clear.i.i11, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %clkpm_capable.i, align 4
  br label %pcie_set_clkpm.exit

pcie_set_clkpm.exit:                              ; preds = %pcie_set_clkpm_nocheck.exit.i, %policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #12
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %pcie_set_clkpm.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_disable_link_state_locked(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__pci_disable_link_state(ptr noundef %pdev, i32 noundef %state, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__pci_disable_link_state(ptr noundef %pdev, i32 noundef %state, i1 noundef zeroext %sem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %is_virtfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %2 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.pci_physfn.exit.i.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %if.end.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %6, %if.then.i.i.i ], [ %pdev, %if.end.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.cleanup_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.cleanup_crit_edge:            ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %pci_upstream_bridge.exit.i.cleanup_crit_edge, label %lor.lhs.false.i

pci_upstream_bridge.exit.i.cleanup_crit_edge:     ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %pci_upstream_bridge.exit.i
  %pcie_cap.i.i8.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %pcie_aspm_get_link.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pcie_aspm_get_link.exit:                          ; preds = %lor.lhs.false.i
  %link_state.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %pcie_aspm_get_link.exit.cleanup_crit_edge, label %if.end

pcie_aspm_get_link.exit.cleanup_crit_edge:        ; preds = %pcie_aspm_get_link.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pcie_aspm_get_link.exit
  %.b = load i1, ptr @aspm_disabled, align 4
  br i1 %.b, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  br i1 %sem, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @aspm_lock, i32 noundef 0) #12
  %and = and i32 %state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_disable = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %aspm_disable to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %aspm_disable, align 4
  %bf.set = or i16 %bf.load, 1536
  store i16 %bf.set, ptr %aspm_disable, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %and11 = and i32 %state, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end25_crit_edge, label %if.then13

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_disable14 = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %18 = ptrtoint ptr %aspm_disable14 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load15 = load i16, ptr %aspm_disable14, align 4
  %bf.set23 = or i16 %bf.load15, -2048
  store i16 %bf.set23, ptr %aspm_disable14, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then13, %if.end10.if.end25_crit_edge
  %and26 = and i32 %state, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end40_crit_edge, label %if.then28

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_disable29 = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %19 = ptrtoint ptr %aspm_disable29 to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load30 = load i16, ptr %aspm_disable29, align 4
  %bf.set38 = or i16 %bf.load30, 4096
  store i16 %bf.set38, ptr %aspm_disable29, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then28, %if.end25.if.end40_crit_edge
  %and41 = and i32 %state, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end55_crit_edge, label %if.then43

if.end40.if.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_disable44 = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %20 = ptrtoint ptr %aspm_disable44 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load45 = load i16, ptr %aspm_disable44, align 4
  %bf.set53 = or i16 %bf.load45, 8192
  store i16 %bf.set53, ptr %aspm_disable44, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then43, %if.end40.if.end55_crit_edge
  %and56 = and i32 %state, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end70_crit_edge, label %if.then58

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_disable59 = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %aspm_disable59 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load60 = load i16, ptr %aspm_disable59, align 4
  %bf.set68 = or i16 %bf.load60, 16384
  store i16 %bf.set68, ptr %aspm_disable59, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then58, %if.end55.if.end70_crit_edge
  %and71 = and i32 %state, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end85_crit_edge, label %if.then73

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_disable74 = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %22 = ptrtoint ptr %aspm_disable74 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load75 = load i16, ptr %aspm_disable74, align 4
  %bf.set83 = or i16 %bf.load75, -32768
  store i16 %bf.set83, ptr %aspm_disable74, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then73, %if.end70.if.end85_crit_edge
  %23 = load i32, ptr @aspm_policy, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %23, label %if.end85.policy_to_aspm_state.exit_crit_edge [
    i32 0, label %sw.bb3.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

if.end85.policy_to_aspm_state.exit_crit_edge:     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb1.i:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb2.i:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb3.i:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_default.i = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 5
  %25 = ptrtoint ptr %aspm_default.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i = load i32, ptr %aspm_default.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 4
  %bf.clear.i = and i32 %bf.lshr.i, 127
  br label %policy_to_aspm_state.exit

policy_to_aspm_state.exit:                        ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end85.policy_to_aspm_state.exit_crit_edge
  %retval.0.i117 = phi i32 [ %bf.clear.i, %sw.bb3.i ], [ 127, %sw.bb2.i ], [ 7, %sw.bb1.i ], [ 0, %if.end85.policy_to_aspm_state.exit_crit_edge ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef nonnull %16, i32 noundef %retval.0.i117)
  %and87 = and i32 %state, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %policy_to_aspm_state.exit.if.end93_crit_edge, label %if.then89

policy_to_aspm_state.exit.if.end93_crit_edge:     ; preds = %policy_to_aspm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then89:                                        ; preds = %policy_to_aspm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  %clkpm_disable = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %26 = ptrtoint ptr %clkpm_disable to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load90 = load i16, ptr %clkpm_disable, align 4
  %bf.set92 = or i16 %bf.load90, 32
  store i16 %bf.set92, ptr %clkpm_disable, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %policy_to_aspm_state.exit.if.end93_crit_edge
  %27 = load i32, ptr @aspm_policy, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %27, label %if.end93.policy_to_clkpm_state.exit_crit_edge [
    i32 0, label %sw.bb2.i122
    i32 2, label %if.end93.sw.bb1.i118_crit_edge
    i32 3, label %if.end93.sw.bb1.i118_crit_edge135
  ]

if.end93.sw.bb1.i118_crit_edge135:                ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i118

if.end93.sw.bb1.i118_crit_edge:                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i118

if.end93.policy_to_clkpm_state.exit_crit_edge:    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_clkpm_state.exit

sw.bb1.i118:                                      ; preds = %if.end93.sw.bb1.i118_crit_edge, %if.end93.sw.bb1.i118_crit_edge135
  br label %policy_to_clkpm_state.exit

sw.bb2.i122:                                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  %clkpm_default.i = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %29 = ptrtoint ptr %clkpm_default.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i119 = load i16, ptr %clkpm_default.i, align 4
  %bf.lshr.i120 = lshr i16 %bf.load.i119, 6
  %bf.clear.i121 = and i16 %bf.lshr.i120, 1
  %bf.cast.i = zext i16 %bf.clear.i121 to i32
  br label %policy_to_clkpm_state.exit

policy_to_clkpm_state.exit:                       ; preds = %sw.bb2.i122, %sw.bb1.i118, %if.end93.policy_to_clkpm_state.exit_crit_edge
  %retval.0.i123 = phi i32 [ %bf.cast.i, %sw.bb2.i122 ], [ 1, %sw.bb1.i118 ], [ 0, %if.end93.policy_to_clkpm_state.exit_crit_edge ]
  %clkpm_capable.i = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %30 = ptrtoint ptr %clkpm_capable.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i124 = load i16, ptr %clkpm_capable.i, align 4
  %31 = and i16 %bf.load.i124, 288
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %31)
  %32 = icmp eq i16 %31, 256
  %enable.addr.0.i = select i1 %32, i32 %retval.0.i123, i32 0
  %bf.lshr7.i = lshr i16 %bf.load.i124, 7
  %bf.clear8.i = and i16 %bf.lshr7.i, 1
  %bf.cast9.i = zext i16 %bf.clear8.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %enable.addr.0.i, i32 %bf.cast9.i)
  %cmp.i = icmp eq i32 %enable.addr.0.i, %bf.cast9.i
  br i1 %cmp.i, label %policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge, label %if.end11.i

policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge: ; preds = %policy_to_clkpm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm.exit

if.end11.i:                                       ; preds = %policy_to_clkpm_state.exit
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %16, align 4
  %subordinate.i.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %subordinate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable.addr.0.i)
  %tobool.not.i.i = icmp eq i32 %enable.addr.0.i, 0
  %devices.i.i = getelementptr inbounds %struct.pci_bus, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %child.015.i.i = load ptr, ptr %devices.i.i, align 4
  %cmp.not16.i.i = icmp eq ptr %child.015.i.i, %devices.i.i
  br i1 %cmp.not16.i.i, label %if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end11.i
  %conv.i.i = select i1 %tobool.not.i.i, i16 0, i16 256
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child.017.i.i = phi ptr [ %child.015.i.i, %for.body.lr.ph.i.i ], [ %child.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %child.017.i.i, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %conv.i.i) #12
  %38 = ptrtoint ptr %child.017.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %child.0.i.i = load ptr, ptr %child.017.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %child.0.i.i, %devices.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit.i

pcie_set_clkpm_nocheck.exit.i:                    ; preds = %for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, %if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge
  %39 = ptrtoint ptr %clkpm_capable.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i.i = load i16, ptr %clkpm_capable.i, align 4
  %bf.shl.i.i = select i1 %tobool.not.i.i, i16 0, i16 128
  %bf.clear.i.i = and i16 %bf.load.i.i, -129
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %clkpm_capable.i, align 4
  br label %pcie_set_clkpm.exit

pcie_set_clkpm.exit:                              ; preds = %pcie_set_clkpm_nocheck.exit.i, %policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #12
  br i1 %sem, label %if.then96, label %pcie_set_clkpm.exit.cleanup_crit_edge

pcie_set_clkpm.exit.cleanup_crit_edge:            ; preds = %pcie_set_clkpm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then96:                                        ; preds = %pcie_set_clkpm.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %pcie_set_clkpm.exit.cleanup_crit_edge, %do.end, %pcie_aspm_get_link.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %pci_upstream_bridge.exit.i.cleanup_crit_edge, %pci_physfn.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -22, %pcie_aspm_get_link.exit.cleanup_crit_edge ], [ 0, %if.then96 ], [ 0, %pcie_set_clkpm.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %pci_upstream_bridge.exit.i.cleanup_crit_edge ], [ -22, %pci_physfn.exit.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_disable_link_state(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__pci_disable_link_state(ptr noundef %pdev, i32 noundef %state, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pcie_aspm_enabled(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %is_virtfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %2 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.pci_physfn.exit.i.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %if.end.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %6, %if.then.i.i.i ], [ %pdev, %if.end.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.cleanup_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.cleanup_crit_edge:            ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %pci_upstream_bridge.exit.i.cleanup_crit_edge, label %lor.lhs.false.i

pci_upstream_bridge.exit.i.cleanup_crit_edge:     ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %pci_upstream_bridge.exit.i
  %pcie_cap.i.i8.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %pcie_aspm_get_link.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pcie_aspm_get_link.exit:                          ; preds = %lor.lhs.false.i
  %link_state.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %pcie_aspm_get_link.exit.cleanup_crit_edge, label %if.end

pcie_aspm_get_link.exit.cleanup_crit_edge:        ; preds = %pcie_aspm_get_link.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pcie_aspm_get_link.exit
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_enabled = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %aspm_enabled to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load i32, ptr %aspm_enabled, align 4
  %18 = and i32 %bf.load, 33292288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1 = icmp ne i32 %18, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pcie_aspm_get_link.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %pci_upstream_bridge.exit.i.cleanup_crit_edge, %pci_physfn.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ false, %pcie_aspm_get_link.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.i.cleanup_crit_edge ], [ false, %pci_upstream_bridge.exit.i.cleanup_crit_edge ], [ false, %pci_physfn.exit.i.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @aspm_ctrl_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i = getelementptr i8, ptr %kobj, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kobj, i32 -136
  %is_virtfn.i.i.i = getelementptr i8, ptr %kobj, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.pci_physfn.exit.i.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %kobj, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %if.end.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %6, %if.then.i.i.i ], [ %add.ptr, %if.end.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.cleanup_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.cleanup_crit_edge:            ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %pci_upstream_bridge.exit.i.cleanup_crit_edge, label %lor.lhs.false.i

pci_upstream_bridge.exit.i.cleanup_crit_edge:     ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %pci_upstream_bridge.exit.i
  %pcie_cap.i.i8.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %pcie_aspm_get_link.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pcie_aspm_get_link.exit:                          ; preds = %lor.lhs.false.i
  %link_state.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i, align 8
  %.b = load i1, ptr @aspm_disabled, align 4
  %tobool2.not = icmp eq ptr %16, null
  %or.cond = select i1 %.b, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %pcie_aspm_get_link.exit.cleanup_crit_edge, label %if.end

pcie_aspm_get_link.exit.cleanup_crit_edge:        ; preds = %pcie_aspm_get_link.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pcie_aspm_get_link.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp = icmp eq i32 %n, 0
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %clkpm_capable = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %clkpm_capable to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %clkpm_capable, align 4
  %18 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool4.not = icmp eq i16 %18, 0
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.then3.cleanup.sink.split_crit_edge

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %aspm_capable = getelementptr inbounds %struct.pcie_link_state, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %aspm_capable to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load7 = load i32, ptr %aspm_capable, align 4
  %bf.lshr8 = lshr i32 %bf.load7, 11
  %bf.clear9 = and i32 %bf.lshr8, 127
  %sub = add i32 %n, -1
  %arrayidx = getelementptr [6 x i8], ptr @aspm_ctrl_attrs_are_visible.aspm_state_map, i32 0, i32 %sub
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %21 to i32
  %and = and i32 %bf.clear9, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.then3.cleanup.sink.split_crit_edge
  %mode13 = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %22 = ptrtoint ptr %mode13 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mode13, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %pcie_aspm_get_link.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %pci_upstream_bridge.exit.i.cleanup_crit_edge, %pci_physfn.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %pcie_aspm_get_link.exit.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %pci_upstream_bridge.exit.i.cleanup_crit_edge ], [ 0, %pci_physfn.exit.i.i.cleanup_crit_edge ], [ %23, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_aspm_disable(ptr nocapture noundef readonly %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.34) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @aspm_policy, align 4
  store i1 true, ptr @aspm_disabled, align 4
  store i1 true, ptr @aspm_support_enabled, align 1
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(6) @.str.37) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @aspm_force, align 4
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.then4, %if.then
  %.str.39.sink = phi ptr [ @.str.39, %if.then4 ], [ @.str.35, %if.then ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink) #15
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pcie_no_aspm() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @aspm_force, align 4
  br i1 %.b, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @aspm_policy, align 4
  store i1 true, ptr @aspm_disabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pcie_aspm_support_enabled() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @aspm_support_enabled, align 1
  %not..b = xor i1 %.b, true
  ret i1 %not..b
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_aspm_check_latency(ptr nocapture noundef readonly %endpoint) unnamed_addr #0 align 64 {
entry:
  %lnkcap_up = alloca i32, align 4
  %lnkcap_dw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnkcap_up) #12
  %0 = ptrtoint ptr %lnkcap_up to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lnkcap_up, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnkcap_dw) #12
  %1 = ptrtoint ptr %lnkcap_dw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lnkcap_dw, align 4, !annotation !127
  %current_state = getelementptr inbounds %struct.pci_dev, ptr %endpoint, i32 0, i32 30
  %2 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 5, label %entry.if.end_crit_edge128
  ]

entry.if.end_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge128
  %bus = getelementptr inbounds %struct.pci_dev, ptr %endpoint, i32 0, i32 1
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %self, align 4
  %link_state = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 37
  %devcap = getelementptr inbounds %struct.pci_dev, ptr %endpoint, i32 0, i32 18
  %9 = ptrtoint ptr %devcap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devcap, align 4
  %and = lshr i32 %10, 6
  %shr = and i32 %and, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp.i = icmp eq i32 %shr, 7
  %shl.i = shl nuw nsw i32 64, %shr
  %retval.0.i = select i1 %cmp.i, i32 -1, i32 %shl.i
  %and4 = lshr i32 %10, 9
  %shr5 = and i32 %and4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr5)
  %cmp.i101 = icmp eq i32 %shr5, 7
  %shl.i102 = shl nuw nsw i32 1000, %shr5
  %retval.0.i103 = select i1 %cmp.i101, i32 -1, i32 %shl.i102
  %11 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %link.0124 = load ptr, ptr %link_state, align 4
  %tobool.not125 = icmp eq ptr %link.0124, null
  br i1 %tobool.not125, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %if.end68.while.body_crit_edge, %if.end.while.body_crit_edge
  %link.0127 = phi ptr [ %link.0, %if.end68.while.body_crit_edge ], [ %link.0124, %if.end.while.body_crit_edge ]
  %l1_switch_latency.0126 = phi i32 [ %add69, %if.end68.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %12 = ptrtoint ptr %link.0127 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link.0127, align 4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %subordinate, align 4
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.body
  %child.0.in.i = phi ptr [ %devices.i, %while.body ], [ %child.0.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %child.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %child.0.i = load ptr, ptr %child.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %child.0.i, %devices.i
  br i1 %cmp.not.i, label %for.cond.i.pci_function_0.exit_crit_edge, label %for.body.i

for.cond.i.pci_function_0.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_function_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %child.0.i, i32 0, i32 6
  %17 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devfn.i, align 4
  %and.i = and i32 %18, 7
  %cmp2.i = icmp eq i32 %and.i, 0
  br i1 %cmp2.i, label %for.body.i.pci_function_0.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.body.i.pci_function_0.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_function_0.exit

pci_function_0.exit:                              ; preds = %for.body.i.pci_function_0.exit_crit_edge, %for.cond.i.pci_function_0.exit_crit_edge
  %retval.0.i104 = phi ptr [ %child.0.i, %for.body.i.pci_function_0.exit_crit_edge ], [ null, %for.cond.i.pci_function_0.exit_crit_edge ]
  %call9 = call i32 @pcie_capability_read_dword(ptr noundef %13, i32 noundef 12, ptr noundef nonnull %lnkcap_up) #12
  %call10 = call i32 @pcie_capability_read_dword(ptr noundef %retval.0.i104, i32 noundef 12, ptr noundef nonnull %lnkcap_dw) #12
  %19 = ptrtoint ptr %lnkcap_up to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lnkcap_up, align 4
  %and.i105 = lshr i32 %20, 12
  %shr.i = and i32 %and.i105, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i)
  %cmp.i106 = icmp eq i32 %shr.i, 7
  %shl.i107 = shl nuw nsw i32 64, %shr.i
  %retval.0.i108 = select i1 %cmp.i106, i32 5000, i32 %shl.i107
  %and.i109 = lshr i32 %20, 15
  %shr.i110 = and i32 %and.i109, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i110)
  %cmp.i111 = icmp eq i32 %shr.i110, 7
  %shl.i112 = shl nuw nsw i32 1000, %shr.i110
  %retval.0.i113 = select i1 %cmp.i111, i32 65000, i32 %shl.i112
  %21 = ptrtoint ptr %lnkcap_dw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lnkcap_dw, align 4
  %and.i114 = lshr i32 %22, 12
  %shr.i115 = and i32 %and.i114, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i115)
  %cmp.i116 = icmp eq i32 %shr.i115, 7
  %shl.i117 = shl nuw nsw i32 64, %shr.i115
  %retval.0.i118 = select i1 %cmp.i116, i32 5000, i32 %shl.i117
  %and.i119 = lshr i32 %22, 15
  %shr.i120 = and i32 %and.i119, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i120)
  %cmp.i121 = icmp eq i32 %shr.i120, 7
  %shl.i122 = shl nuw nsw i32 1000, %shr.i120
  %retval.0.i123 = select i1 %cmp.i121, i32 65000, i32 %shl.i122
  %aspm_capable = getelementptr inbounds %struct.pcie_link_state, ptr %link.0127, i32 0, i32 5
  %23 = ptrtoint ptr %aspm_capable to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load = load i32, ptr %aspm_capable, align 4
  %24 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool16.not = icmp ne i32 %24, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i108, i32 %retval.0.i)
  %cmp18 = icmp ugt i32 %retval.0.i108, %retval.0.i
  %or.cond = select i1 %tobool16.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.then19, label %pci_function_0.exit.if.end27_crit_edge

pci_function_0.exit.if.end27_crit_edge:           ; preds = %pci_function_0.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then19:                                        ; preds = %pci_function_0.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set = and i32 %bf.load, -2049
  %25 = ptrtoint ptr %aspm_capable to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %bf.set, ptr %aspm_capable, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %pci_function_0.exit.if.end27_crit_edge
  %26 = ptrtoint ptr %aspm_capable to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load29 = load i32, ptr %aspm_capable, align 4
  %27 = and i32 %bf.load29, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool33.not = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i118, i32 %retval.0.i)
  %cmp35 = icmp ugt i32 %retval.0.i118, %retval.0.i
  %or.cond99 = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %or.cond99, label %if.then36, label %if.end27.if.end47_crit_edge

if.end27.if.end47_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set46 = and i32 %bf.load29, -4097
  %28 = ptrtoint ptr %aspm_capable to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bf.set46, ptr %aspm_capable, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then36, %if.end27.if.end47_crit_edge
  %29 = call i32 @llvm.umax.i32(i32 %retval.0.i113, i32 %retval.0.i123)
  %30 = ptrtoint ptr %aspm_capable to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load50 = load i32, ptr %aspm_capable, align 4
  %31 = and i32 %bf.load50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool54.not = icmp ne i32 %31, 0
  %add = add i32 %29, %l1_switch_latency.0126
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %retval.0.i103)
  %cmp56 = icmp ugt i32 %add, %retval.0.i103
  %or.cond100 = select i1 %tobool54.not, i1 %cmp56, i1 false
  br i1 %or.cond100, label %if.then57, label %if.end47.if.end68_crit_edge

if.end47.if.end68_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set67 = and i32 %bf.load50, -8193
  %32 = ptrtoint ptr %aspm_capable to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bf.set67, ptr %aspm_capable, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then57, %if.end47.if.end68_crit_edge
  %add69 = add i32 %l1_switch_latency.0126, 1000
  %parent = getelementptr inbounds %struct.pcie_link_state, ptr %link.0127, i32 0, i32 3
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %33)
  %link.0 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %link.0, null
  br i1 %tobool.not, label %if.end68.cleanup_crit_edge, label %if.end68.while.body_crit_edge

if.end68.while.body_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end68.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnkcap_dw) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnkcap_up) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_update_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_aspm_set_policy(ptr noundef %val, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @aspm_disabled, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @__sysfs_match_string(ptr noundef nonnull @policy_str, i32 noundef 4, ptr noundef %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = load i32, ptr @aspm_policy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %0)
  %cmp3 = icmp eq i32 %call, %0
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @aspm_lock, i32 noundef 0) #12
  store i32 %call, ptr @aspm_policy, align 4
  %.pn29 = load ptr, ptr @link_list, align 4
  %cmp6.not30 = icmp eq ptr %.pn29, @link_list
  br i1 %cmp6.not30, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.bodythread-pre-split:                         ; preds = %pcie_set_clkpm.exit
  call void @__sanitizer_cov_trace_pc() #14
  %.pr = load i32, ptr @aspm_policy, align 4
  br label %for.body

for.body:                                         ; preds = %for.bodythread-pre-split, %if.end5.for.body_crit_edge
  %1 = phi i32 [ %.pr, %for.bodythread-pre-split ], [ %call, %if.end5.for.body_crit_edge ]
  %.pn31 = phi ptr [ %.pn, %for.bodythread-pre-split ], [ %.pn29, %if.end5.for.body_crit_edge ]
  %link.0 = getelementptr i8, ptr %.pn31, i32 -16
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %for.body.policy_to_aspm_state.exit_crit_edge [
    i32 0, label %sw.bb3.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

for.body.policy_to_aspm_state.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb2.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_default.i = getelementptr i8, ptr %.pn31, i32 8
  %3 = ptrtoint ptr %aspm_default.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %aspm_default.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 4
  %bf.clear.i = and i32 %bf.lshr.i, 127
  br label %policy_to_aspm_state.exit

policy_to_aspm_state.exit:                        ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %for.body.policy_to_aspm_state.exit_crit_edge
  %retval.0.i = phi i32 [ %bf.clear.i, %sw.bb3.i ], [ 127, %sw.bb2.i ], [ 7, %sw.bb1.i ], [ 0, %for.body.policy_to_aspm_state.exit_crit_edge ]
  tail call fastcc void @pcie_config_aspm_link(ptr noundef %link.0, i32 noundef %retval.0.i)
  %4 = load i32, ptr @aspm_policy, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %4, label %policy_to_aspm_state.exit.policy_to_clkpm_state.exit_crit_edge [
    i32 0, label %sw.bb2.i26
    i32 2, label %policy_to_aspm_state.exit.sw.bb1.i22_crit_edge
    i32 3, label %policy_to_aspm_state.exit.sw.bb1.i22_crit_edge32
  ]

policy_to_aspm_state.exit.sw.bb1.i22_crit_edge32: ; preds = %policy_to_aspm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i22

policy_to_aspm_state.exit.sw.bb1.i22_crit_edge:   ; preds = %policy_to_aspm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i22

policy_to_aspm_state.exit.policy_to_clkpm_state.exit_crit_edge: ; preds = %policy_to_aspm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_clkpm_state.exit

sw.bb1.i22:                                       ; preds = %policy_to_aspm_state.exit.sw.bb1.i22_crit_edge, %policy_to_aspm_state.exit.sw.bb1.i22_crit_edge32
  br label %policy_to_clkpm_state.exit

sw.bb2.i26:                                       ; preds = %policy_to_aspm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  %clkpm_default.i = getelementptr i8, ptr %.pn31, i32 12
  %6 = ptrtoint ptr %clkpm_default.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i23 = load i16, ptr %clkpm_default.i, align 4
  %bf.lshr.i24 = lshr i16 %bf.load.i23, 6
  %bf.clear.i25 = and i16 %bf.lshr.i24, 1
  %bf.cast.i = zext i16 %bf.clear.i25 to i32
  br label %policy_to_clkpm_state.exit

policy_to_clkpm_state.exit:                       ; preds = %sw.bb2.i26, %sw.bb1.i22, %policy_to_aspm_state.exit.policy_to_clkpm_state.exit_crit_edge
  %retval.0.i27 = phi i32 [ %bf.cast.i, %sw.bb2.i26 ], [ 1, %sw.bb1.i22 ], [ 0, %policy_to_aspm_state.exit.policy_to_clkpm_state.exit_crit_edge ]
  %clkpm_capable.i = getelementptr i8, ptr %.pn31, i32 12
  %7 = ptrtoint ptr %clkpm_capable.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i28 = load i16, ptr %clkpm_capable.i, align 4
  %8 = and i16 %bf.load.i28, 288
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %9 = icmp eq i16 %8, 256
  %enable.addr.0.i = select i1 %9, i32 %retval.0.i27, i32 0
  %bf.lshr7.i = lshr i16 %bf.load.i28, 7
  %bf.clear8.i = and i16 %bf.lshr7.i, 1
  %bf.cast9.i = zext i16 %bf.clear8.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %enable.addr.0.i, i32 %bf.cast9.i)
  %cmp.i = icmp eq i32 %enable.addr.0.i, %bf.cast9.i
  br i1 %cmp.i, label %policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge, label %if.end11.i

policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge: ; preds = %policy_to_clkpm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm.exit

if.end11.i:                                       ; preds = %policy_to_clkpm_state.exit
  %10 = ptrtoint ptr %link.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link.0, align 4
  %subordinate.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subordinate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable.addr.0.i)
  %tobool.not.i.i = icmp eq i32 %enable.addr.0.i, 0
  %devices.i.i = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %child.015.i.i = load ptr, ptr %devices.i.i, align 4
  %cmp.not16.i.i = icmp eq ptr %child.015.i.i, %devices.i.i
  br i1 %cmp.not16.i.i, label %if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end11.i
  %conv.i.i = select i1 %tobool.not.i.i, i16 0, i16 256
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child.017.i.i = phi ptr [ %child.015.i.i, %for.body.lr.ph.i.i ], [ %child.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %child.017.i.i, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %conv.i.i) #12
  %15 = ptrtoint ptr %child.017.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %child.0.i.i = load ptr, ptr %child.017.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %child.0.i.i, %devices.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit.i

pcie_set_clkpm_nocheck.exit.i:                    ; preds = %for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, %if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge
  %16 = ptrtoint ptr %clkpm_capable.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i = load i16, ptr %clkpm_capable.i, align 4
  %bf.shl.i.i = select i1 %tobool.not.i.i, i16 0, i16 128
  %bf.clear.i.i = and i16 %bf.load.i.i, -129
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %clkpm_capable.i, align 4
  br label %pcie_set_clkpm.exit

pcie_set_clkpm.exit:                              ; preds = %pcie_set_clkpm_nocheck.exit.i, %policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge
  %17 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp6.not = icmp eq ptr %.pn, @link_list
  br i1 %cmp6.not, label %pcie_set_clkpm.exit.for.end_crit_edge, label %for.bodythread-pre-split

pcie_set_clkpm.exit.for.end_crit_edge:            ; preds = %pcie_set_clkpm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %pcie_set_clkpm.exit.for.end_crit_edge, %if.end5.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #12
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie_aspm_get_policy(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @aspm_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %1 = load ptr, ptr @policy_str, align 4
  %.str.23..str.24 = select i1 %cmp1, ptr @.str.23, ptr @.str.24
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull %.str.23..str.24, ptr noundef %1)
  %2 = load i32, ptr @aspm_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1.1 = icmp eq i32 %2, 1
  %.str.23.sink24 = select i1 %cmp1.1, ptr @.str.23, ptr @.str.24
  %add.ptr.1 = getelementptr i8, ptr %buffer, i32 %call
  %3 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @policy_str, i32 0, i32 1), align 4
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull %.str.23.sink24, ptr noundef %3)
  %cnt.1.1 = add i32 %call.1, %call
  %4 = load i32, ptr @aspm_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1.2 = icmp eq i32 %4, 2
  %.str.23.sink25 = select i1 %cmp1.2, ptr @.str.23, ptr @.str.24
  %add.ptr.2 = getelementptr i8, ptr %buffer, i32 %cnt.1.1
  %5 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @policy_str, i32 0, i32 2), align 4
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull %.str.23.sink25, ptr noundef %5)
  %cnt.1.2 = add i32 %call.2, %cnt.1.1
  %6 = load i32, ptr @aspm_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp1.3 = icmp eq i32 %6, 3
  %.str.23.sink26 = select i1 %cmp1.3, ptr @.str.23, ptr @.str.24
  %add.ptr.3 = getelementptr i8, ptr %buffer, i32 %cnt.1.2
  %7 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @policy_str, i32 0, i32 3), align 4
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull %.str.23.sink26, ptr noundef %7)
  %cnt.1.3 = add i32 %call.3, %cnt.1.2
  %add.ptr6 = getelementptr i8, ptr %buffer, i32 %cnt.1.3
  %8 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %add.ptr6, align 1
  %add8 = add i32 %cnt.1.3, 1
  ret i32 %add8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkpm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i, label %entry.pcie_aspm_get_link.exit_crit_edge, label %if.end.i

entry.pcie_aspm_get_link.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

if.end.i:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %is_virtfn.i.i.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.pci_physfn.exit.i.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %if.end.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %6, %if.then.i.i.i ], [ %add.ptr, %if.end.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge: ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge, label %lor.lhs.false.i

pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

lor.lhs.false.i:                                  ; preds = %pci_upstream_bridge.exit.i
  %pcie_cap.i.i8.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i, label %lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %link_state.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i, align 8
  br label %pcie_aspm_get_link.exit

pcie_aspm_get_link.exit:                          ; preds = %if.end4.i, %lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge, %pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge, %pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge, %entry.pcie_aspm_get_link.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end4.i ], [ null, %entry.pcie_aspm_get_link.exit_crit_edge ], [ null, %lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge ], [ null, %pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge ], [ null, %pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge ]
  %clkpm_enabled = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i, i32 0, i32 6
  %17 = ptrtoint ptr %clkpm_enabled to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %clkpm_enabled, align 4
  %bf.lshr = lshr i16 %bf.load, 7
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %bf.cast) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkpm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %state_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i, label %entry.pcie_aspm_get_link.exit_crit_edge, label %if.end.i

entry.pcie_aspm_get_link.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

if.end.i:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %is_virtfn.i.i.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.pci_physfn.exit.i.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %if.end.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %6, %if.then.i.i.i ], [ %add.ptr, %if.end.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge: ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge, label %lor.lhs.false.i

pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

lor.lhs.false.i:                                  ; preds = %pci_upstream_bridge.exit.i
  %pcie_cap.i.i8.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i, label %lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %link_state.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i, align 8
  br label %pcie_aspm_get_link.exit

pcie_aspm_get_link.exit:                          ; preds = %if.end4.i, %lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge, %pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge, %pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge, %entry.pcie_aspm_get_link.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end4.i ], [ null, %entry.pcie_aspm_get_link.exit_crit_edge ], [ null, %lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge ], [ null, %pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge ], [ null, %pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state_enable) #12
  %17 = ptrtoint ptr %state_enable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %state_enable, align 1, !annotation !127
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %state_enable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %pcie_aspm_get_link.exit.cleanup_crit_edge, label %if.end

pcie_aspm_get_link.exit.cleanup_crit_edge:        ; preds = %pcie_aspm_get_link.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pcie_aspm_get_link.exit
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  call void @mutex_lock_nested(ptr noundef nonnull @aspm_lock, i32 noundef 0) #12
  %18 = ptrtoint ptr %state_enable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state_enable, align 1, !range !132
  %clkpm_disable = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i, i32 0, i32 6
  %20 = ptrtoint ptr %clkpm_disable to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %clkpm_disable, align 4
  %21 = shl nuw nsw i8 %19, 5
  %22 = xor i8 %21, 32
  %bf.shl = zext i8 %22 to i16
  %bf.clear = and i16 %bf.load, -33
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %clkpm_disable, align 4
  %23 = load i32, ptr @aspm_policy, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %23, label %if.end.policy_to_clkpm_state.exit_crit_edge [
    i32 0, label %sw.bb2.i
    i32 2, label %if.end.sw.bb1.i_crit_edge
    i32 3, label %if.end.sw.bb1.i_crit_edge9
  ]

if.end.sw.bb1.i_crit_edge9:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

if.end.policy_to_clkpm_state.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_clkpm_state.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge9
  br label %policy_to_clkpm_state.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr.i = lshr i16 %bf.load, 6
  %bf.clear.i = and i16 %bf.lshr.i, 1
  %bf.cast.i = zext i16 %bf.clear.i to i32
  br label %policy_to_clkpm_state.exit

policy_to_clkpm_state.exit:                       ; preds = %sw.bb2.i, %sw.bb1.i, %if.end.policy_to_clkpm_state.exit_crit_edge
  %retval.0.i7 = phi i32 [ %bf.cast.i, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.end.policy_to_clkpm_state.exit_crit_edge ]
  %25 = and i16 %bf.set, 288
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %25)
  %26 = icmp eq i16 %25, 256
  %enable.addr.0.i = select i1 %26, i32 %retval.0.i7, i32 0
  %bf.lshr7.i = lshr i16 %bf.load, 7
  %bf.clear8.i = and i16 %bf.lshr7.i, 1
  %bf.cast9.i = zext i16 %bf.clear8.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %enable.addr.0.i, i32 %bf.cast9.i)
  %cmp.i = icmp eq i32 %enable.addr.0.i, %bf.cast9.i
  br i1 %cmp.i, label %policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge, label %if.end11.i

policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge: ; preds = %policy_to_clkpm_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm.exit

if.end11.i:                                       ; preds = %policy_to_clkpm_state.exit
  %27 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %retval.0.i, align 4
  %subordinate.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %subordinate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable.addr.0.i)
  %tobool.not.i.i = icmp eq i32 %enable.addr.0.i, 0
  %devices.i.i = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %child.015.i.i = load ptr, ptr %devices.i.i, align 4
  %cmp.not16.i.i = icmp eq ptr %child.015.i.i, %devices.i.i
  br i1 %cmp.not16.i.i, label %if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end11.i
  %conv.i.i = select i1 %tobool.not.i.i, i16 0, i16 256
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child.017.i.i = phi ptr [ %child.015.i.i, %for.body.lr.ph.i.i ], [ %child.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %call.i.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %child.017.i.i, i32 noundef 16, i16 noundef zeroext 256, i16 noundef zeroext %conv.i.i) #12
  %32 = ptrtoint ptr %child.017.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %child.0.i.i = load ptr, ptr %child.017.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %child.0.i.i, %devices.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_set_clkpm_nocheck.exit.i

pcie_set_clkpm_nocheck.exit.i:                    ; preds = %for.body.i.i.pcie_set_clkpm_nocheck.exit.i_crit_edge, %if.end11.i.pcie_set_clkpm_nocheck.exit.i_crit_edge
  %33 = ptrtoint ptr %clkpm_disable to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i = load i16, ptr %clkpm_disable, align 4
  %bf.shl.i.i = select i1 %tobool.not.i.i, i16 0, i16 128
  %bf.clear.i.i = and i16 %bf.load.i.i, -129
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %clkpm_disable, align 4
  br label %pcie_set_clkpm.exit

pcie_set_clkpm.exit:                              ; preds = %pcie_set_clkpm_nocheck.exit.i, %policy_to_clkpm_state.exit.pcie_set_clkpm.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #12
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %pcie_set_clkpm.exit, %pcie_aspm_get_link.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %pcie_set_clkpm.exit ], [ -22, %pcie_aspm_get_link.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state_enable) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l0s_aspm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i.i, label %entry.aspm_attr_show_common.exit_crit_edge, label %if.end.i.i

entry.aspm_attr_show_common.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -136
  %is_virtfn.i.i.i.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i.i, 65536
  %tobool.not.i.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.pci_physfn.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i.i

pci_physfn.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i = phi ptr [ %6, %if.then.i.i.i.i ], [ %add.ptr.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge ]
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i.i, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i.i, align 8
  %tobool.not.i5.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i.i, label %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, label %pci_upstream_bridge.exit.i.i

pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

pci_upstream_bridge.exit.i.i:                     ; preds = %pci_physfn.exit.i.i.i
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, label %lor.lhs.false.i.i

pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

lor.lhs.false.i.i:                                ; preds = %pci_upstream_bridge.exit.i.i
  %pcie_cap.i.i8.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i.i, label %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, label %if.end4.i.i

lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end4.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %link_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i.i, align 8
  br label %aspm_attr_show_common.exit

aspm_attr_show_common.exit:                       ; preds = %if.end4.i.i, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, %entry.aspm_attr_show_common.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end4.i.i ], [ null, %entry.aspm_attr_show_common.exit_crit_edge ], [ null, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge ]
  %aspm_enabled.i = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %aspm_enabled.i, align 4
  %18 = and i32 %bf.load.i, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp ne i32 %18, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %cond.i) #12
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l0s_aspm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspm_attr_store_common(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  %state_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i, label %entry.pcie_aspm_get_link.exit_crit_edge, label %if.end.i

entry.pcie_aspm_get_link.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

if.end.i:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %is_virtfn.i.i.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.pci_physfn.exit.i.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %if.end.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %6, %if.then.i.i.i ], [ %add.ptr, %if.end.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge: ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge, label %lor.lhs.false.i

pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

lor.lhs.false.i:                                  ; preds = %pci_upstream_bridge.exit.i
  %pcie_cap.i.i8.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i, label %lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_aspm_get_link.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %link_state.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i, align 8
  br label %pcie_aspm_get_link.exit

pcie_aspm_get_link.exit:                          ; preds = %if.end4.i, %lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge, %pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge, %pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge, %entry.pcie_aspm_get_link.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end4.i ], [ null, %entry.pcie_aspm_get_link.exit_crit_edge ], [ null, %lor.lhs.false.i.pcie_aspm_get_link.exit_crit_edge ], [ null, %pci_upstream_bridge.exit.i.pcie_aspm_get_link.exit_crit_edge ], [ null, %pci_physfn.exit.i.i.pcie_aspm_get_link.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state_enable) #12
  %17 = ptrtoint ptr %state_enable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %state_enable, align 1, !annotation !127
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %state_enable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %pcie_aspm_get_link.exit.cleanup_crit_edge, label %if.end

pcie_aspm_get_link.exit.cleanup_crit_edge:        ; preds = %pcie_aspm_get_link.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pcie_aspm_get_link.exit
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #12
  call void @mutex_lock_nested(ptr noundef nonnull @aspm_lock, i32 noundef 0) #12
  %18 = ptrtoint ptr %state_enable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state_enable, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %aspm_disable21 = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i, i32 0, i32 6
  %20 = ptrtoint ptr %aspm_disable21 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load22 = load i16, ptr %aspm_disable21, align 4
  %conv20.masked = zext i8 %state to i16
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %21 = xor i16 %conv20.masked, -1
  %22 = shl i16 %21, 9
  %bf.lshr34 = or i16 %22, 511
  %bf.set = and i16 %bf.load22, %bf.lshr34
  %23 = ptrtoint ptr %aspm_disable21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %bf.set, ptr %aspm_disable21, align 4
  %24 = and i8 %state, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool6.not = icmp eq i8 %24, 0
  br i1 %tobool6.not, label %if.then2.if.end31_crit_edge, label %if.then7

if.then2.if.end31_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr10 = and i16 %22, -2560
  %25 = or i16 %bf.lshr10, 511
  %bf.set17 = and i16 %bf.load22, %25
  br label %if.end31.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bf.value261 = shl i16 %conv20.masked, 9
  %bf.load22.masked = and i16 %bf.load22, -512
  %bf.shl27 = or i16 %bf.load22.masked, %bf.value261
  %bf.clear28 = and i16 %bf.load22, 511
  %bf.set29 = or i16 %bf.shl27, %bf.clear28
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.else, %if.then7
  %bf.set17.sink = phi i16 [ %bf.set17, %if.then7 ], [ %bf.set29, %if.else ]
  %26 = ptrtoint ptr %aspm_disable21 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.set17.sink, ptr %aspm_disable21, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.then2.if.end31_crit_edge
  %27 = load i32, ptr @aspm_policy, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %27, label %if.end31.policy_to_aspm_state.exit_crit_edge [
    i32 0, label %sw.bb3.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

if.end31.policy_to_aspm_state.exit_crit_edge:     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb1.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb2.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_to_aspm_state.exit

sw.bb3.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %aspm_default.i = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i, i32 0, i32 5
  %29 = ptrtoint ptr %aspm_default.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i = load i32, ptr %aspm_default.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 4
  %bf.clear.i = and i32 %bf.lshr.i, 127
  br label %policy_to_aspm_state.exit

policy_to_aspm_state.exit:                        ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end31.policy_to_aspm_state.exit_crit_edge
  %retval.0.i5 = phi i32 [ %bf.clear.i, %sw.bb3.i ], [ 127, %sw.bb2.i ], [ 7, %sw.bb1.i ], [ 0, %if.end31.policy_to_aspm_state.exit_crit_edge ]
  call fastcc void @pcie_config_aspm_link(ptr noundef %retval.0.i, i32 noundef %retval.0.i5)
  call void @mutex_unlock(ptr noundef nonnull @aspm_lock) #12
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %policy_to_aspm_state.exit, %pcie_aspm_get_link.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %policy_to_aspm_state.exit ], [ -22, %pcie_aspm_get_link.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state_enable) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_aspm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i.i, label %entry.aspm_attr_show_common.exit_crit_edge, label %if.end.i.i

entry.aspm_attr_show_common.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -136
  %is_virtfn.i.i.i.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i.i, 65536
  %tobool.not.i.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.pci_physfn.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i.i

pci_physfn.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i = phi ptr [ %6, %if.then.i.i.i.i ], [ %add.ptr.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge ]
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i.i, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i.i, align 8
  %tobool.not.i5.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i.i, label %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, label %pci_upstream_bridge.exit.i.i

pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

pci_upstream_bridge.exit.i.i:                     ; preds = %pci_physfn.exit.i.i.i
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, label %lor.lhs.false.i.i

pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

lor.lhs.false.i.i:                                ; preds = %pci_upstream_bridge.exit.i.i
  %pcie_cap.i.i8.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i.i, label %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, label %if.end4.i.i

lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end4.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %link_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i.i, align 8
  br label %aspm_attr_show_common.exit

aspm_attr_show_common.exit:                       ; preds = %if.end4.i.i, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, %entry.aspm_attr_show_common.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end4.i.i ], [ null, %entry.aspm_attr_show_common.exit_crit_edge ], [ null, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge ]
  %aspm_enabled.i = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %aspm_enabled.i, align 4
  %18 = lshr i32 %bf.load.i, 20
  %.lobit = and i32 %18, 1
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %.lobit) #12
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_aspm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_1_aspm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i.i, label %entry.aspm_attr_show_common.exit_crit_edge, label %if.end.i.i

entry.aspm_attr_show_common.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -136
  %is_virtfn.i.i.i.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i.i, 65536
  %tobool.not.i.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.pci_physfn.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i.i

pci_physfn.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i = phi ptr [ %6, %if.then.i.i.i.i ], [ %add.ptr.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge ]
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i.i, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i.i, align 8
  %tobool.not.i5.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i.i, label %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, label %pci_upstream_bridge.exit.i.i

pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

pci_upstream_bridge.exit.i.i:                     ; preds = %pci_physfn.exit.i.i.i
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, label %lor.lhs.false.i.i

pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

lor.lhs.false.i.i:                                ; preds = %pci_upstream_bridge.exit.i.i
  %pcie_cap.i.i8.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i.i, label %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, label %if.end4.i.i

lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end4.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %link_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i.i, align 8
  br label %aspm_attr_show_common.exit

aspm_attr_show_common.exit:                       ; preds = %if.end4.i.i, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, %entry.aspm_attr_show_common.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end4.i.i ], [ null, %entry.aspm_attr_show_common.exit_crit_edge ], [ null, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge ]
  %aspm_enabled.i = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %aspm_enabled.i, align 4
  %18 = lshr i32 %bf.load.i, 21
  %.lobit = and i32 %18, 1
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %.lobit) #12
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_1_aspm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext 8)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_2_aspm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i.i, label %entry.aspm_attr_show_common.exit_crit_edge, label %if.end.i.i

entry.aspm_attr_show_common.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -136
  %is_virtfn.i.i.i.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i.i, 65536
  %tobool.not.i.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.pci_physfn.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i.i

pci_physfn.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i = phi ptr [ %6, %if.then.i.i.i.i ], [ %add.ptr.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge ]
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i.i, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i.i, align 8
  %tobool.not.i5.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i.i, label %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, label %pci_upstream_bridge.exit.i.i

pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

pci_upstream_bridge.exit.i.i:                     ; preds = %pci_physfn.exit.i.i.i
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, label %lor.lhs.false.i.i

pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

lor.lhs.false.i.i:                                ; preds = %pci_upstream_bridge.exit.i.i
  %pcie_cap.i.i8.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i.i, label %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, label %if.end4.i.i

lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end4.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %link_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i.i, align 8
  br label %aspm_attr_show_common.exit

aspm_attr_show_common.exit:                       ; preds = %if.end4.i.i, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, %entry.aspm_attr_show_common.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end4.i.i ], [ null, %entry.aspm_attr_show_common.exit_crit_edge ], [ null, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge ]
  %aspm_enabled.i = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %aspm_enabled.i, align 4
  %18 = lshr i32 %bf.load.i, 22
  %.lobit = and i32 %18, 1
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %.lobit) #12
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_2_aspm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_1_pcipm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i.i, label %entry.aspm_attr_show_common.exit_crit_edge, label %if.end.i.i

entry.aspm_attr_show_common.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -136
  %is_virtfn.i.i.i.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i.i, 65536
  %tobool.not.i.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.pci_physfn.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i.i

pci_physfn.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i = phi ptr [ %6, %if.then.i.i.i.i ], [ %add.ptr.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge ]
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i.i, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i.i, align 8
  %tobool.not.i5.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i.i, label %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, label %pci_upstream_bridge.exit.i.i

pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

pci_upstream_bridge.exit.i.i:                     ; preds = %pci_physfn.exit.i.i.i
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, label %lor.lhs.false.i.i

pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

lor.lhs.false.i.i:                                ; preds = %pci_upstream_bridge.exit.i.i
  %pcie_cap.i.i8.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i.i, label %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, label %if.end4.i.i

lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end4.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %link_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i.i, align 8
  br label %aspm_attr_show_common.exit

aspm_attr_show_common.exit:                       ; preds = %if.end4.i.i, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, %entry.aspm_attr_show_common.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end4.i.i ], [ null, %entry.aspm_attr_show_common.exit_crit_edge ], [ null, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge ]
  %aspm_enabled.i = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %aspm_enabled.i, align 4
  %18 = lshr i32 %bf.load.i, 23
  %.lobit = and i32 %18, 1
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %.lobit) #12
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_1_pcipm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext 32)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_2_pcipm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.i.not.i.i, label %entry.aspm_attr_show_common.exit_crit_edge, label %if.end.i.i

entry.aspm_attr_show_common.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -136
  %is_virtfn.i.i.i.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %3 = and i40 %bf.load.i.i.i.i, 65536
  %tobool.not.i.i.i.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.pci_physfn.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  br label %pci_physfn.exit.i.i.i

pci_physfn.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i = phi ptr [ %6, %if.then.i.i.i.i ], [ %add.ptr.i, %if.end.i.i.pci_physfn.exit.i.i.i_crit_edge ]
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i.i, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i.i, align 8
  %tobool.not.i5.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i5.i.i.i, label %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, label %pci_upstream_bridge.exit.i.i

pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

pci_upstream_bridge.exit.i.i:                     ; preds = %pci_physfn.exit.i.i.i
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %self.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, label %lor.lhs.false.i.i

pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

lor.lhs.false.i.i:                                ; preds = %pci_upstream_bridge.exit.i.i
  %pcie_cap.i.i8.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %pcie_cap.i.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcie_cap.i.i8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i9.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.i9.not.i.i, label %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, label %if.end4.i.i

lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aspm_attr_show_common.exit

if.end4.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %link_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37
  %15 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_state.i.i, align 8
  br label %aspm_attr_show_common.exit

aspm_attr_show_common.exit:                       ; preds = %if.end4.i.i, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge, %entry.aspm_attr_show_common.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end4.i.i ], [ null, %entry.aspm_attr_show_common.exit_crit_edge ], [ null, %lor.lhs.false.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_upstream_bridge.exit.i.i.aspm_attr_show_common.exit_crit_edge ], [ null, %pci_physfn.exit.i.i.i.aspm_attr_show_common.exit_crit_edge ]
  %aspm_enabled.i = getelementptr inbounds %struct.pcie_link_state, ptr %retval.0.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %aspm_enabled.i, align 4
  %18 = lshr i32 %bf.load.i, 24
  %.lobit = and i32 %18, 1
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %.lobit) #12
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_2_pcipm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aspm_attr_store_common(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext 64)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !109, !110, !111, !112, !114, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__ksymtab_pci_disable_link_state_locked, !1, !"__ksymtab_pci_disable_link_state_locked", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/aspm.c", i32 1118, i32 1}
!2 = !{ptr @__ksymtab_pci_disable_link_state, !3, !"__ksymtab_pci_disable_link_state", i1 false, i1 false}
!3 = !{!"../drivers/pci/pcie/aspm.c", i32 1133, i32 1}
!4 = !{ptr @__param_policy, !5, !"__param_policy", i1 false, i1 false}
!5 = !{!"../drivers/pci/pcie/aspm.c", i32 1173, i32 1}
!6 = !{ptr @__ksymtab_pcie_aspm_enabled, !7, !"__ksymtab_pcie_aspm_enabled", i1 false, i1 false}
!7 = !{!"../drivers/pci/pcie/aspm.c", i32 1194, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/pcie/aspm.c", i32 1330, i32 10}
!10 = !{ptr @aspm_ctrl_attr_group, !11, !"aspm_ctrl_attr_group", i1 false, i1 false}
!11 = !{!"../drivers/pci/pcie/aspm.c", i32 1329, i32 30}
!12 = !{ptr @__setup_pcie_aspm_disable, !13, !"__setup_pcie_aspm_disable", i1 false, i1 false}
!13 = !{!"../drivers/pci/pcie/aspm.c", i32 1349, i32 1}
!14 = !{ptr @__ksymtab_pcie_aspm_support_enabled, !15, !"__ksymtab_pcie_aspm_support_enabled", i1 false, i1 false}
!15 = !{!"../drivers/pci/pcie/aspm.c", i32 1369, i32 1}
!16 = distinct !{null, !17, !"aspm_disabled", i1 false, i1 false}
!17 = !{!"../drivers/pci/pcie/aspm.c", i32 65, i32 12}
!18 = distinct !{null, !19, !"aspm_force", i1 false, i1 false}
!19 = !{!"../drivers/pci/pcie/aspm.c", i32 65, i32 27}
!20 = !{ptr @aspm_policy, !21, !"aspm_policy", i1 false, i1 false}
!21 = !{!"../drivers/pci/pcie/aspm.c", i32 82, i32 12}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/pcie/aspm.c", i32 828, i32 4}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pcie_aspm_sanity_check._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @pcie_aspm_sanity_check._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"aspm_support_enabled", i1 false, i1 false}
!31 = !{!"../drivers/pci/pcie/aspm.c", i32 66, i32 13}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/pcie/aspm.c", i32 67, i32 8}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @aspm_lock, !33, !"aspm_lock", i1 false, i1 false}
!36 = !{ptr @link_list, !37, !"link_list", i1 false, i1 false}
!37 = !{!"../drivers/pci/pcie/aspm.c", i32 68, i32 8}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/pcie/aspm.c", i32 268, i32 3}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pcie_aspm_configure_common_clock._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @pcie_aspm_configure_common_clock._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/pcie/aspm.c", i32 295, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pcie_aspm_configure_common_clock._entry.10, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @pcie_aspm_configure_common_clock._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/pcie/aspm.c", i32 349, i32 2}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @calc_l1ss_pwron._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @calc_l1ss_pwron._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/pcie/aspm.c", i32 1082, i32 3}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__pci_disable_link_state._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @__pci_disable_link_state._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__param_str_policy, !5, !"__param_str_policy", i1 false, i1 false}
!60 = !{ptr @__param_ops_policy, !5, !"__param_ops_policy", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/pcie/aspm.c", i32 86, i32 21}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pci/pcie/aspm.c", i32 87, i32 25}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/pcie/aspm.c", i32 88, i32 23}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/pcie/aspm.c", i32 89, i32 29}
!69 = !{ptr @policy_str, !70, !"policy_str", i1 false, i1 false}
!70 = !{!"../drivers/pci/pcie/aspm.c", i32 85, i32 20}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pci/pcie/aspm.c", i32 1166, i32 33}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/pcie/aspm.c", i32 1168, i32 33}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/pcie/aspm.c", i32 1169, i32 31}
!77 = !{ptr @aspm_ctrl_attrs_are_visible.aspm_state_map, !78, !"aspm_state_map", i1 false, i1 false}
!78 = !{!"../drivers/pci/pcie/aspm.c", i32 1311, i32 18}
!79 = !{ptr @aspm_ctrl_attrs, !80, !"aspm_ctrl_attrs", i1 false, i1 false}
!80 = !{!"../drivers/pci/pcie/aspm.c", i32 1294, i32 26}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/pcie/aspm.c", i32 1286, i32 8}
!83 = !{ptr @dev_attr_clkpm, !82, !"dev_attr_clkpm", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/pcie/aspm.c", i32 1260, i32 25}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/pcie/aspm.c", i32 1287, i32 8}
!88 = !{ptr @dev_attr_l0s_aspm, !87, !"dev_attr_l0s_aspm", i1 false, i1 false}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pci/pcie/aspm.c", i32 1288, i32 8}
!91 = !{ptr @dev_attr_l1_aspm, !90, !"dev_attr_l1_aspm", i1 false, i1 false}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/pcie/aspm.c", i32 1289, i32 8}
!94 = !{ptr @dev_attr_l1_1_aspm, !93, !"dev_attr_l1_1_aspm", i1 false, i1 false}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pci/pcie/aspm.c", i32 1290, i32 8}
!97 = !{ptr @dev_attr_l1_2_aspm, !96, !"dev_attr_l1_2_aspm", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/pcie/aspm.c", i32 1291, i32 8}
!100 = !{ptr @dev_attr_l1_1_pcipm, !99, !"dev_attr_l1_1_pcipm", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/pcie/aspm.c", i32 1292, i32 8}
!103 = !{ptr @dev_attr_l1_2_pcipm, !102, !"dev_attr_l1_2_pcipm", i1 false, i1 false}
!104 = !{ptr @__setup_str_pcie_aspm_disable, !13, !"__setup_str_pcie_aspm_disable", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/pcie/aspm.c", i32 1337, i32 19}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pci/pcie/aspm.c", i32 1341, i32 3}
!109 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @pcie_aspm_disable._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @pcie_aspm_disable._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pci/pcie/aspm.c", i32 1342, i32 26}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/pcie/aspm.c", i32 1344, i32 3}
!116 = !{ptr @pcie_aspm_disable._entry.38, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @pcie_aspm_disable._entry_ptr.40, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i64 2154506718, i64 2154507206, i64 2154506755, i64 2154506811, i64 2154506845, i64 2154506869, i64 2154506910, i64 2154506931, i64 2154506959, i64 2154506993}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2154550837, i64 2154551325, i64 2154550874, i64 2154550930, i64 2154550964, i64 2154550988, i64 2154551029, i64 2154551050, i64 2154551078, i64 2154551112}
!132 = !{i8 0, i8 2}
