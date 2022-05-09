; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/smem.c_pt.bc'
source_filename = "../drivers/soc/qcom/smem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qcom_smem_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_smem_alloc\09\09\09\09"
module asm "\09.long\09__crc_qcom_smem_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_smem_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_smem_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_smem_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qcom_smem_get\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_smem_get\09\09\09\09"
module asm "\09.long\09__crc_qcom_smem_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_smem_get:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_smem_get\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_smem_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qcom_smem_get_free_space\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_smem_get_free_space\09\09\09\09"
module asm "\09.long\09__crc_qcom_smem_get_free_space\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_smem_get_free_space:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_smem_get_free_space\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_smem_get_free_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qcom_smem_virt_to_phys\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_smem_virt_to_phys\09\09\09\09"
module asm "\09.long\09__crc_qcom_smem_virt_to_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_smem_virt_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_smem_virt_to_phys\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_smem_virt_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.qcom_smem = type { ptr, ptr, ptr, i32, [15 x ptr], [15 x i32], i32, ptr, i32, [0 x %struct.smem_region] }
%struct.smem_region = type { i32, ptr, i32 }
%struct.smem_header = type { [4 x %struct.smem_proc_comm], [32 x i32], i32, i32, i32, i32, [512 x %struct.smem_global_entry] }
%struct.smem_proc_comm = type { i32, i32, [2 x i32] }
%struct.smem_global_entry = type { i32, i32, i32, i32 }
%struct.smem_partition_header = type { [4 x i8], i16, i16, i32, i32, i32, [3 x i32] }
%struct.smem_private_entry = type { i16, i16, i32, i16, i16, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.smem_ptable = type { [4 x i8], i32, i32, [5 x i32], [0 x %struct.smem_ptable_entry] }
%struct.smem_ptable_entry = type { i32, i32, i32, i16, i16, i32, [7 x i32] }
%struct.smem_info = type { [4 x i8], i32, i32, i32, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__smem = internal unnamed_addr global ptr null, align 4
@qcom_smem_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 454, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Rejecting allocation of static entry %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_smem_alloc\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/soc/qcom/smem.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_smem_alloc._entry_ptr = internal global ptr @qcom_smem_alloc._entry, section ".printk_index", align 4
@__kstrtab_qcom_smem_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_smem_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_smem_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_smem_alloc to i32), ptr @__kstrtab_qcom_smem_alloc, ptr @__kstrtabns_qcom_smem_alloc }, section "___ksymtab+qcom_smem_alloc", align 4
@__kstrtab_qcom_smem_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_smem_get = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_smem_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_smem_get to i32), ptr @__kstrtab_qcom_smem_get, ptr @__kstrtabns_qcom_smem_get }, section "___ksymtab+qcom_smem_get", align 4
@__kstrtab_qcom_smem_get_free_space = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_smem_get_free_space = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_smem_get_free_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_smem_get_free_space to i32), ptr @__kstrtab_qcom_smem_get_free_space, ptr @__kstrtabns_qcom_smem_get_free_space }, section "___ksymtab+qcom_smem_get_free_space", align 4
@__kstrtab_qcom_smem_virt_to_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_smem_virt_to_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_smem_virt_to_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_smem_virt_to_phys to i32), ptr @__kstrtab_qcom_smem_virt_to_phys, ptr @__kstrtabns_qcom_smem_virt_to_phys }, section "___ksymtab+qcom_smem_virt_to_phys", align 4
@__initcall__kmod_smem__185_1026_qcom_smem_init3 = internal global ptr @qcom_smem_init, section ".initcall3.init", align 4
@qcom_smem_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_smem_probe, ptr @qcom_smem_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @qcom_smem_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_smem_exit = internal global ptr @qcom_smem_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author186 = internal constant [61 x i8] c"smem.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [48 x i8] c"smem.description=Qualcomm Shared Memory Manager\00", section ".modinfo", align 1
@__UNIQUE_ID_file188 = internal constant [32 x i8] c"smem.file=drivers/soc/qcom/smem\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [20 x i8] c"smem.license=GPL v2\00", section ".modinfo", align 1
@qcom_smem_alloc_private._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_smem_alloc_private\00", [40 x i8] zeroinitializer }, align 32
@qcom_smem_alloc_private._entry_ptr = internal global ptr @qcom_smem_alloc_private._entry, section ".printk_index", align 4
@qcom_smem_alloc_private._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 396, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Found invalid canary in hosts %hu:%hu partition\0A\00", [47 x i8] zeroinitializer }, align 32
@qcom_smem_alloc_private._entry_ptr.9 = internal global ptr @qcom_smem_alloc_private._entry.7, section ".printk_index", align 4
@qcom_smem_get_private._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str.2, i32 563, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_smem_get_private\00", [42 x i8] zeroinitializer }, align 32
@qcom_smem_get_private._entry_ptr = internal global ptr @qcom_smem_get_private._entry, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom-smem\00", [22 x i8] zeroinitializer }, align 32
@qcom_smem_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,smem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,rpm-msg-ram\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@qcom_smem_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 941, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to remap %pa\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_smem_probe\00", [16 x i8] zeroinitializer }, align 32
@qcom_smem_probe._entry_ptr = internal global ptr @qcom_smem_probe._entry, section ".printk_index", align 4
@qcom_smem_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 949, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SMEM is not initialized by SBL\0A\00", [32 x i8] zeroinitializer }, align 32
@qcom_smem_probe._entry_ptr.18 = internal global ptr @qcom_smem_probe._entry.16, section ".printk_index", align 4
@qcom_smem_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 965, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported SMEM version 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_smem_probe._entry_ptr.21 = internal global ptr @qcom_smem_probe._entry.19, section ".printk_index", align 4
@qcom_smem_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 977, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to retrieve hwlock\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_smem_probe._entry_ptr.24 = internal global ptr @qcom_smem_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom-socinfo\00", [19 x i8] zeroinitializer }, align 32
@qcom_smem_probe.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.15, ptr @.str.2, ptr @.str.27, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smem\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register socinfo device\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_smem_resolve_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 877, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No %s specified\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_smem_resolve_mem\00", [42 x i8] zeroinitializer }, align 32
@qcom_smem_resolve_mem._entry_ptr = internal global ptr @qcom_smem_resolve_mem._entry, section ".printk_index", align 4
@qcom_smem_set_global_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 776, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Already found the global partition\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qcom_smem_set_global_partition\00", [33 x i8] zeroinitializer }, align 32
@qcom_smem_set_global_partition._entry_ptr = internal global ptr @qcom_smem_set_global_partition._entry, section ".printk_index", align 4
@qcom_smem_set_global_partition._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 801, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing entry for global partition\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_smem_set_global_partition._entry_ptr.34 = internal global ptr @qcom_smem_set_global_partition._entry.32, section ".printk_index", align 4
@SMEM_PTABLE_MAGIC = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"$TOC", [28 x i8] zeroinitializer }, align 32
@qcom_smem_get_ptable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 699, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unsupported partition header version %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_smem_get_ptable\00", [43 x i8] zeroinitializer }, align 32
@qcom_smem_get_ptable._entry_ptr = internal global ptr @qcom_smem_get_ptable._entry, section ".printk_index", align 4
@SMEM_PART_MAGIC = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"$PRT", [28 x i8] zeroinitializer }, align 32
@qcom_smem_partition_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 736, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bad partition magic %4ph\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom_smem_partition_header\00", [37 x i8] zeroinitializer }, align 32
@qcom_smem_partition_header._entry_ptr = internal global ptr @qcom_smem_partition_header._entry, section ".printk_index", align 4
@qcom_smem_partition_header._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 742, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad host0 (%hu != %hu)\0A\00", [40 x i8] zeroinitializer }, align 32
@qcom_smem_partition_header._entry_ptr.41 = internal global ptr @qcom_smem_partition_header._entry.39, section ".printk_index", align 4
@qcom_smem_partition_header._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 747, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad host1 (%hu != %hu)\0A\00", [40 x i8] zeroinitializer }, align 32
@qcom_smem_partition_header._entry_ptr.44 = internal global ptr @qcom_smem_partition_header._entry.42, section ".printk_index", align 4
@qcom_smem_partition_header._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 754, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad partition size (%u != %u)\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_smem_partition_header._entry_ptr.47 = internal global ptr @qcom_smem_partition_header._entry.45, section ".printk_index", align 4
@qcom_smem_partition_header._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.2, i32 760, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad partition free uncached (%u > %u)\0A\00", [57 x i8] zeroinitializer }, align 32
@qcom_smem_partition_header._entry_ptr.50 = internal global ptr @qcom_smem_partition_header._entry.48, section ".printk_index", align 4
@SMEM_INFO_MAGIC = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SIII", [28 x i8] zeroinitializer }, align 32
@qcom_smem_enumerate_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 847, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad host %hu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qcom_smem_enumerate_partitions\00", [33 x i8] zeroinitializer }, align 32
@qcom_smem_enumerate_partitions._entry_ptr = internal global ptr @qcom_smem_enumerate_partitions._entry, section ".printk_index", align 4
@qcom_smem_enumerate_partitions._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 852, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"duplicate host %hu\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_smem_enumerate_partitions._entry_ptr.55 = internal global ptr @qcom_smem_enumerate_partitions._entry.53, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 11, i64 12]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 453, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"qcom_smem_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1012, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 375, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 395, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 562, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1016, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"qcom_smem_of_match\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1006, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 905, i32 42 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 925, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 941, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 949, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 965, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 977, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 987, i32 60 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 991, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 877, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 776, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 801, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"SMEM_PTABLE_MAGIC\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 174, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 698, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"SMEM_PART_MAGIC\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 198, i32 17 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 736, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 741, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 746, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 753, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 759, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [16 x i8] c"SMEM_INFO_MAGIC\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 235, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 847, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [27 x i8] c"../drivers/soc/qcom/smem.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 852, i32 4 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_qcom_smem_exit, ptr @__initcall__kmod_smem__185_1026_qcom_smem_init3, ptr @__ksymtab_qcom_smem_alloc, ptr @__ksymtab_qcom_smem_get, ptr @__ksymtab_qcom_smem_get_free_space, ptr @__ksymtab_qcom_smem_virt_to_phys, ptr @qcom_smem_alloc._entry, ptr @qcom_smem_alloc._entry_ptr, ptr @qcom_smem_alloc_private._entry, ptr @qcom_smem_alloc_private._entry.7, ptr @qcom_smem_alloc_private._entry_ptr, ptr @qcom_smem_alloc_private._entry_ptr.9, ptr @qcom_smem_enumerate_partitions._entry, ptr @qcom_smem_enumerate_partitions._entry.53, ptr @qcom_smem_enumerate_partitions._entry_ptr, ptr @qcom_smem_enumerate_partitions._entry_ptr.55, ptr @qcom_smem_exit, ptr @qcom_smem_get_private._entry, ptr @qcom_smem_get_private._entry_ptr, ptr @qcom_smem_get_ptable._entry, ptr @qcom_smem_get_ptable._entry_ptr, ptr @qcom_smem_partition_header._entry, ptr @qcom_smem_partition_header._entry.39, ptr @qcom_smem_partition_header._entry.42, ptr @qcom_smem_partition_header._entry.45, ptr @qcom_smem_partition_header._entry.48, ptr @qcom_smem_partition_header._entry_ptr, ptr @qcom_smem_partition_header._entry_ptr.41, ptr @qcom_smem_partition_header._entry_ptr.44, ptr @qcom_smem_partition_header._entry_ptr.47, ptr @qcom_smem_partition_header._entry_ptr.50, ptr @qcom_smem_probe._entry, ptr @qcom_smem_probe._entry.16, ptr @qcom_smem_probe._entry.19, ptr @qcom_smem_probe._entry.22, ptr @qcom_smem_probe._entry_ptr, ptr @qcom_smem_probe._entry_ptr.18, ptr @qcom_smem_probe._entry_ptr.21, ptr @qcom_smem_probe._entry_ptr.24, ptr @qcom_smem_resolve_mem._entry, ptr @qcom_smem_resolve_mem._entry_ptr, ptr @qcom_smem_set_global_partition._entry, ptr @qcom_smem_set_global_partition._entry.32, ptr @qcom_smem_set_global_partition._entry_ptr, ptr @qcom_smem_set_global_partition._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @qcom_smem_driver, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @qcom_smem_of_match, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @SMEM_PTABLE_MAGIC, ptr @.str.35, ptr @.str.36, ptr @SMEM_PART_MAGIC, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @SMEM_INFO_MAGIC, ptr @.str.51, ptr @.str.52, ptr @.str.54], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_alloc_private._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_alloc_private._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_get_private._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_resolve_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_set_global_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_set_global_partition._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMEM_PTABLE_MAGIC to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_get_ptable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMEM_PART_MAGIC to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_partition_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_partition_header._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_partition_header._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_partition_header._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_partition_header._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMEM_INFO_MAGIC to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_enumerate_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smem_enumerate_partitions._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_smem_alloc(i32 noundef %host, i32 noundef %item, i32 noundef %size) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !139
  %1 = load ptr, ptr @__smem, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %item)
  %cmp = icmp ult i32 %item, 8
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %item) #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %item_count = getelementptr inbounds %struct.qcom_smem, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %item_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %item_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %item)
  %cmp3.not = icmp ugt i32 %5, %item
  br i1 %cmp3.not, label %if.end30, label %do.end15, !prof !140

do.end15:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 458, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end2
  %hwlock = getelementptr inbounds %struct.qcom_smem, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwlock, align 4
  %call.i = call i32 @__hwspin_lock_timeout(ptr noundef %7, i32 noundef 1000, i32 noundef 1, ptr noundef nonnull %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %host)
  %cmp34 = icmp ult i32 %host, 15
  br i1 %cmp34, label %land.lhs.true, label %if.end33.if.else_crit_edge

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end33
  %8 = load ptr, ptr @__smem, align 4
  %arrayidx = getelementptr %struct.qcom_smem, ptr %8, i32 0, i32 4, i32 %host
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool35.not = icmp eq ptr %10, null
  br i1 %tobool35.not, label %land.lhs.true.if.else_crit_edge, label %if.then36

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = call fastcc i32 @qcom_smem_alloc_private(ptr noundef %8, ptr noundef nonnull %10, i32 noundef %item, i32 noundef %size)
  br label %if.end47

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end33.if.else_crit_edge
  %11 = load ptr, ptr @__smem, align 4
  %global_partition = getelementptr inbounds %struct.qcom_smem, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %global_partition to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %global_partition, align 4
  %tobool40.not = icmp eq ptr %13, null
  br i1 %tobool40.not, label %if.else44, label %if.then41

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = call fastcc i32 @qcom_smem_alloc_private(ptr noundef %11, ptr noundef nonnull %13, i32 noundef %item, i32 noundef %size)
  br label %if.end47

if.else44:                                        ; preds = %if.else
  %virt_base.i = getelementptr inbounds %struct.qcom_smem, ptr %11, i32 1, i32 1
  %14 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_base.i, align 4
  %arrayidx2.i = getelementptr %struct.smem_header, ptr %15, i32 0, i32 6, i32 %item
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else44.if.end47_crit_edge

if.else44.if.end47_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end.i:                                         ; preds = %if.else44
  %add.i = add i32 %size, 7
  %and.i = and i32 %add.i, -8
  %available.i = getelementptr inbounds %struct.smem_header, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %available.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %available.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %20)
  %cmp.i = icmp ugt i32 %and.i, %20
  br i1 %cmp.i, label %do.end.i, label %if.end26.i, !prof !141

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 414, i32 noundef 9, ptr noundef null) #9
  br label %if.end47

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %free_offset.i = getelementptr inbounds %struct.smem_header, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %free_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %free_offset.i, align 4
  %offset.i = getelementptr %struct.smem_header, ptr %15, i32 0, i32 6, i32 %item, i32 1
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %offset.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %and.i) #9
  %size27.i = getelementptr %struct.smem_header, ptr %15, i32 0, i32 6, i32 %item, i32 2
  %25 = ptrtoint ptr %size27.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %size27.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16777216, ptr %arrayidx2.i, align 4
  %27 = ptrtoint ptr %free_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %free_offset.i, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #9
  %add.i.i = add i32 %29, %and.i
  %30 = call i32 @llvm.bswap.i32(i32 %add.i.i) #9
  %31 = ptrtoint ptr %free_offset.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %free_offset.i, align 4
  %32 = ptrtoint ptr %available.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %available.i, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #9
  %add.i47.i = sub i32 %34, %and.i
  %35 = call i32 @llvm.bswap.i32(i32 %add.i47.i) #9
  %36 = ptrtoint ptr %available.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %available.i, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end26.i, %do.end.i, %if.else44.if.end47_crit_edge, %if.then41, %if.then36
  %ret.0 = phi i32 [ %call39, %if.then36 ], [ %call43, %if.then41 ], [ -12, %do.end.i ], [ 0, %if.end26.i ], [ -17, %if.else44.if.end47_crit_edge ]
  %37 = load ptr, ptr @__smem, align 4
  %hwlock48 = getelementptr inbounds %struct.qcom_smem, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %hwlock48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hwlock48, align 4
  call void @__hwspin_unlock(ptr noundef %39, i32 noundef 1, ptr noundef nonnull %flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end30.cleanup_crit_edge, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ %ret.0, %if.end47 ], [ -517, %entry.cleanup_crit_edge ], [ %call.i, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_smem_alloc_private(ptr nocapture noundef readonly %smem, ptr noundef %phdr, i32 noundef %item, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %phdr, i32 32
  %offset_free_uncached.i = getelementptr inbounds %struct.smem_partition_header, ptr %phdr, i32 0, i32 4
  %0 = ptrtoint ptr %offset_free_uncached.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset_free_uncached.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  %add.ptr.i57 = getelementptr i8, ptr %phdr, i32 %2
  %offset_free_cached.i = getelementptr inbounds %struct.smem_partition_header, ptr %phdr, i32 0, i32 5
  %3 = ptrtoint ptr %offset_free_cached.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset_free_cached.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %add.ptr.i58 = getelementptr i8, ptr %phdr, i32 %5
  %cmp62 = icmp ult ptr %add.ptr.i, %add.ptr.i57
  br i1 %cmp62, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %entry.while.body_crit_edge
  %hdr.063 = phi ptr [ %add.ptr2.i, %if.end10.while.body_crit_edge ], [ %add.ptr.i, %entry.while.body_crit_edge ]
  %6 = ptrtoint ptr %hdr.063 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdr.063, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %7)
  %cmp3.not = icmp eq i16 %7, -23131
  br i1 %cmp3.not, label %if.end, label %do.end30

if.end:                                           ; preds = %while.body
  %item5 = getelementptr inbounds %struct.smem_private_entry, ptr %hdr.063, i32 0, i32 1
  %8 = ptrtoint ptr %item5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %item5, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv6 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %item)
  %cmp7 = icmp eq i32 %conv6, %item
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add.ptr.i59 = getelementptr i8, ptr %hdr.063, i32 16
  %padding_hdr.i = getelementptr inbounds %struct.smem_private_entry, ptr %hdr.063, i32 0, i32 4
  %11 = ptrtoint ptr %padding_hdr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %padding_hdr.i, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  %conv.i = zext i16 %13 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i59, i32 %conv.i
  %size.i = getelementptr inbounds %struct.smem_private_entry, ptr %hdr.063, i32 0, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %16
  %cmp = icmp ult ptr %add.ptr2.i, %add.ptr.i57
  br i1 %cmp, label %if.end10.while.body_crit_edge, label %if.end10.while.end_crit_edge

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %entry.while.end_crit_edge
  %hdr.0.lcssa = phi ptr [ %add.ptr.i, %entry.while.end_crit_edge ], [ %add.ptr2.i, %if.end10.while.end_crit_edge ]
  %add = add i32 %size, 7
  %and = and i32 %add, -8
  %add12 = add i32 %and, 16
  %add.ptr = getelementptr i8, ptr %hdr.0.lcssa, i32 %add12
  %cmp13 = icmp ugt ptr %add.ptr, %add.ptr.i58
  br i1 %cmp13, label %do.end, label %if.end16

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %smem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smem, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end16:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %hdr.0.lcssa to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -23131, ptr %hdr.0.lcssa, align 4
  %conv18 = trunc i32 %item to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %item19 = getelementptr inbounds %struct.smem_private_entry, ptr %hdr.0.lcssa, i32 0, i32 1
  %21 = ptrtoint ptr %item19 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %item19, align 2
  %22 = tail call i32 @llvm.bswap.i32(i32 %and)
  %size22 = getelementptr inbounds %struct.smem_private_entry, ptr %hdr.0.lcssa, i32 0, i32 2
  %23 = ptrtoint ptr %size22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %size22, align 4
  %sub = sub i32 %and, %size
  %conv24 = trunc i32 %sub to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv24)
  %padding_data = getelementptr inbounds %struct.smem_private_entry, ptr %hdr.0.lcssa, i32 0, i32 3
  %25 = ptrtoint ptr %padding_data to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %padding_data, align 4
  %padding_hdr = getelementptr inbounds %struct.smem_private_entry, ptr %hdr.0.lcssa, i32 0, i32 4
  %26 = ptrtoint ptr %padding_hdr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %padding_hdr, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %offset_free_uncached.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset_free_uncached.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %add.i = add i32 %29, %add12
  %30 = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  %31 = ptrtoint ptr %offset_free_uncached.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %offset_free_uncached.i, align 4
  br label %cleanup

do.end30:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %smem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smem, align 4
  %host0 = getelementptr inbounds %struct.smem_partition_header, ptr %phdr, i32 0, i32 1
  %34 = ptrtoint ptr %host0 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %host0, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %conv32 = zext i16 %36 to i32
  %host1 = getelementptr inbounds %struct.smem_partition_header, ptr %phdr, i32 0, i32 2
  %37 = ptrtoint ptr %host1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %host1, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv33 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.8, i32 noundef %conv32, i32 noundef %conv33) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end16, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end30 ], [ -28, %do.end ], [ 0, %if.end16 ], [ -17, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qcom_smem_get(i32 noundef %host, i32 noundef %item, ptr noundef %size) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !139
  %1 = load ptr, ptr @__smem, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %item_count = getelementptr inbounds %struct.qcom_smem, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %item_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %item_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %item)
  %cmp.not = icmp ugt i32 %3, %item
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !140

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 588, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %hwlock = getelementptr inbounds %struct.qcom_smem, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwlock, align 4
  %call.i = call i32 @__hwspin_lock_timeout(ptr noundef %5, i32 noundef 1000, i32 noundef 1, ptr noundef nonnull %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %6 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %host)
  %cmp31 = icmp ult i32 %host, 15
  br i1 %cmp31, label %land.lhs.true, label %if.end30.if.else_crit_edge

if.end30.if.else_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end30
  %7 = load ptr, ptr @__smem, align 4
  %arrayidx = getelementptr %struct.qcom_smem, ptr %7, i32 0, i32 4, i32 %host
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool32.not = icmp eq ptr %9, null
  br i1 %tobool32.not, label %land.lhs.true.if.else_crit_edge, label %if.then33

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36 = getelementptr %struct.qcom_smem, ptr %7, i32 0, i32 5, i32 %host
  %10 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx36, align 4
  %call37 = call fastcc ptr @qcom_smem_get_private(ptr noundef %7, ptr noundef nonnull %9, i32 noundef %11, i32 noundef %item, ptr noundef %size)
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end30.if.else_crit_edge
  %12 = load ptr, ptr @__smem, align 4
  %global_partition = getelementptr inbounds %struct.qcom_smem, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %global_partition to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %global_partition, align 4
  %tobool38.not = icmp eq ptr %14, null
  br i1 %tobool38.not, label %if.else42, label %if.then39

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %global_cacheline = getelementptr inbounds %struct.qcom_smem, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %global_cacheline to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global_cacheline, align 4
  %call41 = call fastcc ptr @qcom_smem_get_private(ptr noundef %12, ptr noundef nonnull %14, i32 noundef %16, i32 noundef %item, ptr noundef %size)
  br label %if.end45

if.else42:                                        ; preds = %if.else
  %virt_base.i = getelementptr inbounds %struct.qcom_smem, ptr %12, i32 1, i32 1
  %17 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_base.i, align 4
  %arrayidx2.i = getelementptr %struct.smem_header, ptr %18, i32 0, i32 6, i32 %item
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.else42.if.end45_crit_edge, label %if.end.i

if.else42.if.end45_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end.i:                                         ; preds = %if.else42
  %aux_base3.i = getelementptr %struct.smem_header, ptr %18, i32 0, i32 6, i32 %item, i32 3
  %21 = ptrtoint ptr %aux_base3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aux_base3.i, align 4
  %23 = and i32 %22, -50331649
  %24 = call i32 @llvm.bswap.i32(i32 %23) #9
  %num_regions.i = getelementptr inbounds %struct.qcom_smem, ptr %12, i32 0, i32 8
  %25 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_regions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp32.not.i = icmp eq i32 %26, 0
  br i1 %cmp32.not.i, label %if.end.i.if.end45_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end45_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

for.body.lr.ph.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.i = icmp eq i32 %23, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.qcom_smem, ptr %12, i32 0, i32 9, i32 %i.033.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp7.i = icmp eq i32 %28, %24
  %or.cond.i = select i1 %cmp7.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %if.then9.i, label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i
  %cmp10.not.i = icmp eq ptr %size, null
  br i1 %cmp10.not.i, label %if.then9.i.if.end13.i_crit_edge, label %if.then11.i

if.then9.i.if.end13.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %size12.i = getelementptr %struct.smem_header, ptr %18, i32 0, i32 6, i32 %item, i32 2
  %29 = ptrtoint ptr %size12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size12.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %size, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.then9.i.if.end13.i_crit_edge
  %virt_base14.i = getelementptr %struct.qcom_smem, ptr %12, i32 0, i32 9, i32 %i.033.i, i32 1
  %33 = ptrtoint ptr %virt_base14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %virt_base14.i, align 4
  %offset.i = getelementptr %struct.smem_header, ptr %18, i32 0, i32 6, i32 %item, i32 1
  %35 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #9
  %add.ptr.i = getelementptr i8, ptr %34, i32 %37
  br label %if.end45

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.inc.i.if.end45_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end45_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %for.inc.i.if.end45_crit_edge, %if.end13.i, %if.end.i.if.end45_crit_edge, %if.else42.if.end45_crit_edge, %if.then39, %if.then33
  %ptr.0 = phi ptr [ %call37, %if.then33 ], [ %call41, %if.then39 ], [ %add.ptr.i, %if.end13.i ], [ inttoptr (i32 -6 to ptr), %if.else42.if.end45_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.i.if.end45_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.if.end45_crit_edge ]
  %38 = load ptr, ptr @__smem, align 4
  %hwlock46 = getelementptr inbounds %struct.qcom_smem, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %hwlock46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwlock46, align 4
  call void @__hwspin_unlock(ptr noundef %40, i32 noundef 1, ptr noundef nonnull %flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then28, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %6, %if.then28 ], [ %ptr.0, %if.end45 ], [ inttoptr (i32 -517 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qcom_smem_get_private(ptr nocapture noundef readonly %smem, ptr noundef readonly %phdr, i32 noundef %cacheline, i32 noundef %item, ptr noundef writeonly %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %phdr, i32 32
  %offset_free_uncached.i = getelementptr inbounds %struct.smem_partition_header, ptr %phdr, i32 0, i32 4
  %0 = ptrtoint ptr %offset_free_uncached.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset_free_uncached.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  %add.ptr.i76 = getelementptr i8, ptr %phdr, i32 %2
  %cmp101 = icmp ult ptr %add.ptr.i, %add.ptr.i76
  br i1 %cmp101, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %entry.while.body_crit_edge
  %e.0102 = phi ptr [ %add.ptr2.i, %if.end16.while.body_crit_edge ], [ %add.ptr.i, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %e.0102 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %e.0102, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %4)
  %cmp2.not = icmp eq i16 %4, -23131
  br i1 %cmp2.not, label %if.end, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %while.body
  %item4 = getelementptr inbounds %struct.smem_private_entry, ptr %e.0102, i32 0, i32 1
  %5 = ptrtoint ptr %item4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %item4, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv5 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %item)
  %cmp6 = icmp eq i32 %conv5, %item
  br i1 %cmp6, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end
  %cmp9.not = icmp eq ptr %size, null
  br i1 %cmp9.not, label %if.then8.if.end14_crit_edge, label %if.then11

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %size12 = getelementptr inbounds %struct.smem_private_entry, ptr %e.0102, i32 0, i32 2
  %8 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size12, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %padding_data = getelementptr inbounds %struct.smem_private_entry, ptr %e.0102, i32 0, i32 3
  %11 = ptrtoint ptr %padding_data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %padding_data, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv13 = zext i16 %13 to i32
  %sub = sub i32 %10, %conv13
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %size, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then8.if.end14_crit_edge
  %add.ptr.i77 = getelementptr i8, ptr %e.0102, i32 16
  %padding_hdr.i = getelementptr inbounds %struct.smem_private_entry, ptr %e.0102, i32 0, i32 4
  %15 = ptrtoint ptr %padding_hdr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %padding_hdr.i, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %conv.i = zext i16 %17 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i77, i32 %conv.i
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %add.ptr.i78 = getelementptr i8, ptr %e.0102, i32 16
  %padding_hdr.i79 = getelementptr inbounds %struct.smem_private_entry, ptr %e.0102, i32 0, i32 4
  %18 = ptrtoint ptr %padding_hdr.i79 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %padding_hdr.i79, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  %conv.i80 = zext i16 %20 to i32
  %add.ptr1.i81 = getelementptr i8, ptr %add.ptr.i78, i32 %conv.i80
  %size.i = getelementptr inbounds %struct.smem_private_entry, ptr %e.0102, i32 0, i32 2
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i81, i32 %23
  %cmp = icmp ult ptr %add.ptr2.i, %add.ptr.i76
  br i1 %cmp, label %if.end16.while.body_crit_edge, label %if.end16.while.end_crit_edge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %entry.while.end_crit_edge
  %size.i82 = getelementptr inbounds %struct.smem_partition_header, ptr %phdr, i32 0, i32 3
  %24 = ptrtoint ptr %size.i82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i82, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %add.ptr.i83 = getelementptr i8, ptr %phdr, i32 %26
  %add.i = add i32 %cacheline, 15
  %neg.i = sub i32 0, %cacheline
  %and.i = and i32 %add.i, %neg.i
  %idx.neg.i = sub i32 0, %and.i
  %offset_free_cached.i = getelementptr inbounds %struct.smem_partition_header, ptr %phdr, i32 0, i32 5
  %27 = ptrtoint ptr %offset_free_cached.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset_free_cached.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %add.ptr.i85 = getelementptr i8, ptr %phdr, i32 %29
  %e.1103 = getelementptr i8, ptr %add.ptr.i83, i32 %idx.neg.i
  %cmp21104 = icmp ugt ptr %e.1103, %add.ptr.i85
  br i1 %cmp21104, label %while.end.while.body23_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end.while.body23_crit_edge:                 ; preds = %while.end
  br label %while.body23

while.body23:                                     ; preds = %if.end44.while.body23_crit_edge, %while.end.while.body23_crit_edge
  %e.1105 = phi ptr [ %e.1, %if.end44.while.body23_crit_edge ], [ %e.1103, %while.end.while.body23_crit_edge ]
  %30 = ptrtoint ptr %e.1105 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %e.1105, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %31)
  %cmp26.not = icmp eq i16 %31, -23131
  br i1 %cmp26.not, label %if.end29, label %while.body23.do.end_crit_edge

while.body23.do.end_crit_edge:                    ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end29:                                         ; preds = %while.body23
  %item30 = getelementptr inbounds %struct.smem_private_entry, ptr %e.1105, i32 0, i32 1
  %32 = ptrtoint ptr %item30 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %item30, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv31 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31, i32 %item)
  %cmp32 = icmp eq i32 %conv31, %item
  br i1 %cmp32, label %if.then34, label %if.end44

if.then34:                                        ; preds = %if.end29
  %cmp35.not = icmp eq ptr %size, null
  br i1 %cmp35.not, label %if.then34.if.end42_crit_edge, label %if.then37

if.then34.if.end42_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %size38 = getelementptr inbounds %struct.smem_private_entry, ptr %e.1105, i32 0, i32 2
  %35 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size38, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %padding_data39 = getelementptr inbounds %struct.smem_private_entry, ptr %e.1105, i32 0, i32 3
  %38 = ptrtoint ptr %padding_data39 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %padding_data39, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv40 = zext i16 %40 to i32
  %sub41 = sub i32 %37, %conv40
  %41 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub41, ptr %size, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.then34.if.end42_crit_edge
  %size.i86 = getelementptr inbounds %struct.smem_private_entry, ptr %e.1105, i32 0, i32 2
  %42 = ptrtoint ptr %size.i86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i86, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %idx.neg.i87 = sub i32 0, %44
  %add.ptr.i88 = getelementptr i8, ptr %e.1105, i32 %idx.neg.i87
  br label %cleanup

if.end44:                                         ; preds = %if.end29
  %size.i89 = getelementptr inbounds %struct.smem_private_entry, ptr %e.1105, i32 0, i32 2
  %45 = ptrtoint ptr %size.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i89, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %idx.neg.i90 = sub i32 0, %47
  %add.ptr.i91 = getelementptr i8, ptr %e.1105, i32 %idx.neg.i
  %e.1 = getelementptr i8, ptr %add.ptr.i91, i32 %idx.neg.i90
  %cmp21 = icmp ugt ptr %e.1, %add.ptr.i85
  br i1 %cmp21, label %if.end44.while.body23_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.while.body23_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body23

do.end:                                           ; preds = %while.body23.do.end_crit_edge, %while.body.do.end_crit_edge
  %48 = ptrtoint ptr %smem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %smem, align 4
  %host0 = getelementptr inbounds %struct.smem_partition_header, ptr %phdr, i32 0, i32 1
  %50 = ptrtoint ptr %host0 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %host0, align 4
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %conv48 = zext i16 %52 to i32
  %host1 = getelementptr inbounds %struct.smem_partition_header, ptr %phdr, i32 0, i32 2
  %53 = ptrtoint ptr %host1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %host1, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %conv49 = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.8, i32 noundef %conv48, i32 noundef %conv49) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end44.cleanup_crit_edge, %if.end42, %while.end.cleanup_crit_edge, %if.end14
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %add.ptr1.i, %if.end14 ], [ %add.ptr.i88, %if.end42 ], [ inttoptr (i32 -2 to ptr), %while.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qcom_smem_get_free_space(i32 noundef %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__smem, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %host)
  %cmp = icmp ult i32 %host, 15
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr %struct.qcom_smem, ptr %0, i32 0, i32 4, i32 %host
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %offset_free_cached = getelementptr inbounds %struct.smem_partition_header, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %offset_free_cached to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset_free_cached, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %offset_free_uncached = getelementptr inbounds %struct.smem_partition_header, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %offset_free_uncached to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset_free_uncached, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sub = sub i32 %5, %8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %global_partition = getelementptr inbounds %struct.qcom_smem, ptr %0, i32 0, i32 2
  %9 = ptrtoint ptr %global_partition to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %global_partition, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.else11, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %offset_free_cached8 = getelementptr inbounds %struct.smem_partition_header, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %offset_free_cached8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset_free_cached8, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %offset_free_uncached9 = getelementptr inbounds %struct.smem_partition_header, ptr %10, i32 0, i32 4
  %14 = ptrtoint ptr %offset_free_uncached9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset_free_uncached9, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %sub10 = sub i32 %13, %16
  br label %cleanup

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %virt_base = getelementptr inbounds %struct.qcom_smem, ptr %0, i32 1, i32 1
  %17 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_base, align 4
  %available = getelementptr inbounds %struct.smem_header, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %available, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %if.then6, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %entry.cleanup_crit_edge ], [ %sub, %if.then2 ], [ %sub10, %if.then6 ], [ %21, %if.else11 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_smem_virt_to_phys(ptr noundef %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__smem, align 4
  %num_regions = getelementptr inbounds %struct.qcom_smem, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %num_regions to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_regions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp22.not = icmp eq i32 %2, 0
  br i1 %cmp22.not, label %entry.cleanup9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup9

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %virt_base = getelementptr %struct.qcom_smem, ptr %0, i32 0, i32 9, i32 %i.023, i32 1
  %3 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt_base, align 4
  %cmp1 = icmp ugt ptr %4, %p
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %size = getelementptr %struct.qcom_smem, ptr %0, i32 0, i32 9, i32 %i.023, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %6
  %cmp3 = icmp ugt ptr %add.ptr, %p
  br i1 %cmp3, label %cleanup, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.le = getelementptr %struct.qcom_smem, ptr %0, i32 0, i32 9, i32 %i.023
  %sub.ptr.lhs.cast = ptrtoint ptr %p to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.le, align 4
  %add = add i32 %sub.ptr.sub, %8
  br label %cleanup9

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.cleanup9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup9

cleanup9:                                         ; preds = %for.inc.cleanup9_crit_edge, %cleanup, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ %add, %cleanup ], [ 0, %entry.cleanup9_crit_edge ], [ 0, %for.inc.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smem_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_smem_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smem_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_smem_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwspin_lock_timeout(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hwspin_unlock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smem_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  %mul = mul nuw nsw i32 %spec.select, 12
  %add = add nuw nsw i32 %mul, 148
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %num_regions8 = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %num_regions8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %num_regions8, align 4
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call11 = tail call ptr @of_reserved_mem_lookup(ptr noundef %5) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.reserved_mem, ptr %call11, i32 0, i32 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %regions = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %regions to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %regions, align 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %call11, i32 0, i32 5
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %size16 = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 1, i32 2
  %11 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %size16, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end5
  %regions17 = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 0, i32 9
  %call19 = tail call fastcc i32 @qcom_smem_resolve_mem(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.13, ptr noundef %regions17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else.if.end23_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.then13
  br i1 %tobool.not, label %if.end23.for.body.preheader_crit_edge, label %if.then24

if.end23.for.body.preheader_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then24:                                        ; preds = %if.end23
  %arrayidx26 = getelementptr %struct.qcom_smem, ptr %call.i, i32 1, i32 3
  %call27 = tail call fastcc i32 @qcom_smem_resolve_mem(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.12, ptr noundef %arrayidx26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then24.for.body.preheader_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24.for.body.preheader_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then24.for.body.preheader_crit_edge, %if.end23.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc53 = add nuw nsw i32 %i.0245, 1
  %exitcond.not = icmp eq i32 %inc53, %spec.select
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0245 = phi i32 [ %inc53, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx35 = getelementptr %struct.qcom_smem, ptr %call.i, i32 0, i32 9, i32 %i.0245
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx35, align 4
  %size39 = getelementptr %struct.qcom_smem, ptr %call.i, i32 0, i32 9, i32 %i.0245, i32 2
  %14 = ptrtoint ptr %size39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size39, align 4
  %call40 = tail call ptr @devm_ioremap_wc(ptr noundef %dev, i32 noundef %13, i32 noundef %15) #9
  %virt_base = getelementptr %struct.qcom_smem, ptr %call.i, i32 0, i32 9, i32 %i.0245, i32 1
  %16 = ptrtoint ptr %virt_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %virt_base, align 4
  %tobool46.not = icmp eq ptr %call40, null
  br i1 %tobool46.not, label %do.end, label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %arrayidx35) #12
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %virt_base56 = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 1, i32 1
  %17 = ptrtoint ptr %virt_base56 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_base56, align 4
  %initialized = getelementptr inbounds %struct.smem_header, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp57.not = icmp eq i32 %20, 16777216
  br i1 %cmp57.not, label %lor.lhs.false, label %for.end.do.end62_crit_edge

for.end.do.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

lor.lhs.false:                                    ; preds = %for.end
  %reserved = getelementptr inbounds %struct.smem_header, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool58.not = icmp eq i32 %22, 0
  br i1 %tobool58.not, label %if.end64, label %lor.lhs.false.do.end62_crit_edge

lor.lhs.false.do.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

do.end62:                                         ; preds = %lor.lhs.false.do.end62_crit_edge, %for.end.do.end62_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end64:                                         ; preds = %lor.lhs.false
  %arrayidx1.i = getelementptr %struct.smem_header, ptr %18, i32 0, i32 1, i32 7
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %shr = lshr i32 %25, 16
  %trunc = trunc i32 %shr to i16
  %26 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end75 [
    i16 12, label %sw.bb
    i16 11, label %if.end64.do.end79_crit_edge
  ]

if.end64.do.end79_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

sw.bb:                                            ; preds = %if.end64
  %global_partition.i = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %global_partition.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %global_partition.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %size.i.i = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 1, i32 2
  %31 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %32
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4096
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr3.i.i, ptr noundef nonnull dereferenceable(4) @SMEM_PTABLE_MAGIC, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.qcom_smem_set_global_partition.exit.thread_crit_edge

if.end.i.qcom_smem_set_global_partition.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_smem_set_global_partition.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %version5.i.i = getelementptr inbounds %struct.smem_ptable, ptr %add.ptr3.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %version5.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %version5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %34)
  %cmp.not.i.i = icmp eq i32 %34, 16777216
  br i1 %cmp.not.i.i, label %qcom_smem_get_ptable.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.35, i32 noundef %35) #12
  br label %qcom_smem_set_global_partition.exit.thread

qcom_smem_get_ptable.exit.i:                      ; preds = %if.end.i.i
  %cmp.i.i = icmp ugt ptr %add.ptr3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %qcom_smem_set_global_partition.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %qcom_smem_get_ptable.exit.i
  %num_entries.i = getelementptr inbounds %struct.smem_ptable, ptr %add.ptr3.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp60.not.i = icmp eq i32 %39, 0
  br i1 %cmp60.not.i, label %for.cond.preheader.i.do.end26.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.do.end26.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %umax.i = tail call i32 @llvm.umax.i32(i32 %40, i32 1) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.061.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i, i32 0, i32 4, i32 %i.061.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool7.not.i = icmp eq i32 %42, 0
  br i1 %tobool7.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %size.i = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i, i32 0, i32 4, i32 %i.061.i, i32 1
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool10.not.i = icmp eq i32 %44, 0
  br i1 %tobool10.not.i, label %if.end9.i.for.inc.i_crit_edge, label %if.end12.i

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.end9.i
  %host0.i = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i, i32 0, i32 4, i32 %i.061.i, i32 3
  %45 = ptrtoint ptr %host0.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %host0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %46)
  %cmp13.not.i = icmp eq i16 %46, -257
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end12.i.for.inc.i_crit_edge

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end16.i:                                       ; preds = %if.end12.i
  %host1.i = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i, i32 0, i32 4, i32 %i.061.i, i32 4
  %47 = ptrtoint ptr %host1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %host1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %48)
  %cmp18.i = icmp eq i16 %48, -257
  br i1 %cmp18.i, label %if.end28.i, label %if.end16.i.for.inc.i_crit_edge

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i.for.inc.i_crit_edge, %if.end12.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end26.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end26.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26.i

do.end26.i:                                       ; preds = %for.inc.i.do.end26.i_crit_edge, %for.cond.preheader.i.do.end26.i_crit_edge
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end28.i:                                       ; preds = %if.end16.i
  %call29.i = tail call fastcc ptr @qcom_smem_partition_header(ptr noundef %call.i, ptr noundef %arrayidx.i, i16 noundef zeroext -2, i16 noundef zeroext -2) #9
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.end28.i.cleanup_crit_edge, label %qcom_smem_set_global_partition.exit.thread234

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

qcom_smem_set_global_partition.exit.thread234:    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %global_partition.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call29.i, ptr %global_partition.i, align 4
  %cacheline.i = getelementptr inbounds %struct.smem_ptable_entry, ptr %arrayidx.i, i32 0, i32 5
  %52 = ptrtoint ptr %cacheline.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cacheline.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %global_cacheline.i = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 0, i32 3
  %55 = ptrtoint ptr %global_cacheline.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %global_cacheline.i, align 4
  br label %if.end69

qcom_smem_set_global_partition.exit.thread:       ; preds = %do.end.i.i, %if.end.i.qcom_smem_set_global_partition.exit.thread_crit_edge
  %retval.0.i57.i.ph = phi ptr [ inttoptr (i32 -22 to ptr), %do.end.i.i ], [ inttoptr (i32 -2 to ptr), %if.end.i.qcom_smem_set_global_partition.exit.thread_crit_edge ]
  %56 = ptrtoint ptr %retval.0.i57.i.ph to i32
  br label %cleanup

qcom_smem_set_global_partition.exit:              ; preds = %qcom_smem_get_ptable.exit.i
  %57 = ptrtoint ptr %add.ptr3.i.i to i32
  %cmp67 = icmp slt ptr %add.ptr3.i.i, null
  br i1 %cmp67, label %qcom_smem_set_global_partition.exit.cleanup_crit_edge, label %qcom_smem_set_global_partition.exit.if.end69_crit_edge

qcom_smem_set_global_partition.exit.if.end69_crit_edge: ; preds = %qcom_smem_set_global_partition.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

qcom_smem_set_global_partition.exit.cleanup_crit_edge: ; preds = %qcom_smem_set_global_partition.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %qcom_smem_set_global_partition.exit.if.end69_crit_edge, %qcom_smem_set_global_partition.exit.thread234
  %58 = ptrtoint ptr %virt_base56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %virt_base56, align 4
  %60 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i.i, align 4
  %add.ptr.i.i191 = getelementptr i8, ptr %59, i32 %61
  %add.ptr3.i.i192 = getelementptr i8, ptr %add.ptr.i.i191, i32 -4096
  %bcmp.i.i193 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr3.i.i192, ptr noundef nonnull dereferenceable(4) @SMEM_PTABLE_MAGIC, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i193)
  %tobool.not.i.i194 = icmp eq i32 %bcmp.i.i193, 0
  br i1 %tobool.not.i.i194, label %if.end.i.i197, label %if.end69.do.end79_crit_edge

if.end69.do.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

if.end.i.i197:                                    ; preds = %if.end69
  %version5.i.i195 = getelementptr inbounds %struct.smem_ptable, ptr %add.ptr3.i.i192, i32 0, i32 1
  %62 = ptrtoint ptr %version5.i.i195 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %version5.i.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %63)
  %cmp.not.i.i196 = icmp eq i32 %63, 16777216
  br i1 %cmp.not.i.i196, label %qcom_smem_get_ptable.exit.i200, label %do.end.i.i198

do.end.i.i198:                                    ; preds = %if.end.i.i197
  call void @__sanitizer_cov_trace_pc() #11
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.35, i32 noundef %64) #12
  br label %do.end79

qcom_smem_get_ptable.exit.i200:                   ; preds = %if.end.i.i197
  %tobool.not.i10.i = icmp eq ptr %add.ptr3.i.i192, null
  %cmp.i.i199 = icmp ugt ptr %add.ptr3.i.i192, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i10.i, %cmp.i.i199
  br i1 %spec.select.i.i, label %qcom_smem_get_ptable.exit.i200.do.end79_crit_edge, label %if.end.i204

qcom_smem_get_ptable.exit.i200.do.end79_crit_edge: ; preds = %qcom_smem_get_ptable.exit.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

if.end.i204:                                      ; preds = %qcom_smem_get_ptable.exit.i200
  %num_entries.i201 = getelementptr inbounds %struct.smem_ptable, ptr %add.ptr3.i.i192, i32 0, i32 2
  %67 = ptrtoint ptr %num_entries.i201 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_entries.i201, align 4
  %arrayidx.i202 = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i192, i32 0, i32 4, i32 %68
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx.i202, ptr noundef nonnull dereferenceable(4) @SMEM_INFO_MAGIC, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i203 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i203, label %if.end5.i, label %if.end.i204.do.end79_crit_edge

if.end.i204.do.end79_crit_edge:                   ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

if.end5.i:                                        ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #11
  %num_items.i = getelementptr inbounds %struct.smem_info, ptr %arrayidx.i202, i32 0, i32 4
  %69 = ptrtoint ptr %num_items.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %num_items.i, align 4
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #9
  %conv.i = zext i16 %71 to i32
  br label %do.end79

do.end75:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %25) #12
  br label %cleanup

do.end79:                                         ; preds = %if.end5.i, %if.end.i204.do.end79_crit_edge, %qcom_smem_get_ptable.exit.i200.do.end79_crit_edge, %do.end.i.i198, %if.end69.do.end79_crit_edge, %if.end64.do.end79_crit_edge
  %retval.0.i205.sink = phi i32 [ %conv.i, %if.end5.i ], [ 512, %qcom_smem_get_ptable.exit.i200.do.end79_crit_edge ], [ 512, %if.end.i204.do.end79_crit_edge ], [ 512, %do.end.i.i198 ], [ 512, %if.end69.do.end79_crit_edge ], [ 512, %if.end64.do.end79_crit_edge ]
  %item_count = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 0, i32 6
  %72 = ptrtoint ptr %item_count to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i205.sink, ptr %item_count, align 4
  %73 = ptrtoint ptr %virt_base56 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %virt_base56, align 4
  %size.i.i207 = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 1, i32 2
  %75 = ptrtoint ptr %size.i.i207 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.i.i207, align 4
  %add.ptr.i.i208 = getelementptr i8, ptr %74, i32 %76
  %add.ptr3.i.i209 = getelementptr i8, ptr %add.ptr.i.i208, i32 -4096
  %bcmp.i.i210 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr3.i.i209, ptr noundef nonnull dereferenceable(4) @SMEM_PTABLE_MAGIC, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i210)
  %tobool.not.i.i211 = icmp eq i32 %bcmp.i.i210, 0
  br i1 %tobool.not.i.i211, label %if.end.i.i214, label %do.end79.if.then.i_crit_edge

do.end79.if.then.i_crit_edge:                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i214:                                    ; preds = %do.end79
  %version5.i.i212 = getelementptr inbounds %struct.smem_ptable, ptr %add.ptr3.i.i209, i32 0, i32 1
  %77 = ptrtoint ptr %version5.i.i212 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %version5.i.i212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %78)
  %cmp.not.i.i213 = icmp eq i32 %78, 16777216
  br i1 %cmp.not.i.i213, label %qcom_smem_get_ptable.exit.i217, label %do.end.i.i215

do.end.i.i215:                                    ; preds = %if.end.i.i214
  call void @__sanitizer_cov_trace_pc() #11
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.35, i32 noundef %79) #12
  br label %if.then.i

qcom_smem_get_ptable.exit.i217:                   ; preds = %if.end.i.i214
  %cmp.i.i216 = icmp ugt ptr %add.ptr3.i.i209, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i216, label %qcom_smem_get_ptable.exit.i217.if.then.i_crit_edge, label %for.cond.preheader.i219

qcom_smem_get_ptable.exit.i217.if.then.i_crit_edge: ; preds = %qcom_smem_get_ptable.exit.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.cond.preheader.i219:                          ; preds = %qcom_smem_get_ptable.exit.i217
  %num_entries.i218 = getelementptr inbounds %struct.smem_ptable, ptr %add.ptr3.i.i209, i32 0, i32 2
  %82 = ptrtoint ptr %num_entries.i218 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_entries.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp5.not.i = icmp eq i32 %83, 0
  br i1 %cmp5.not.i, label %for.cond.preheader.i219.if.end84_crit_edge, label %for.cond.preheader.i219.for.body.i222_crit_edge

for.cond.preheader.i219.for.body.i222_crit_edge:  ; preds = %for.cond.preheader.i219
  br label %for.body.i222

for.cond.preheader.i219.if.end84_crit_edge:       ; preds = %for.cond.preheader.i219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then.i:                                        ; preds = %qcom_smem_get_ptable.exit.i217.if.then.i_crit_edge, %do.end.i.i215, %do.end79.if.then.i_crit_edge
  %retval.0.i3.i = phi ptr [ %add.ptr3.i.i209, %qcom_smem_get_ptable.exit.i217.if.then.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %do.end79.if.then.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i.i215 ]
  %84 = ptrtoint ptr %retval.0.i3.i to i32
  br label %qcom_smem_enumerate_partitions.exit

for.body.i222:                                    ; preds = %for.inc.i229.for.body.i222_crit_edge, %for.cond.preheader.i219.for.body.i222_crit_edge
  %i.06.i = phi i32 [ %inc.i228, %for.inc.i229.for.body.i222_crit_edge ], [ 0, %for.cond.preheader.i219.for.body.i222_crit_edge ]
  %arrayidx.i220 = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i209, i32 0, i32 4, i32 %i.06.i
  %85 = ptrtoint ptr %arrayidx.i220 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i221 = icmp eq i32 %86, 0
  br i1 %tobool.not.i221, label %for.body.i222.for.inc.i229_crit_edge, label %if.end6.i

for.body.i222.for.inc.i229_crit_edge:             ; preds = %for.body.i222
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i229

if.end6.i:                                        ; preds = %for.body.i222
  %size.i223 = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i209, i32 0, i32 4, i32 %i.06.i, i32 1
  %87 = ptrtoint ptr %size.i223 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool7.not.i224 = icmp eq i32 %88, 0
  br i1 %tobool7.not.i224, label %if.end6.i.for.inc.i229_crit_edge, label %if.end9.i225

if.end6.i.for.inc.i229_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i229

if.end9.i225:                                     ; preds = %if.end6.i
  %host010.i = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i209, i32 0, i32 4, i32 %i.06.i, i32 3
  %89 = ptrtoint ptr %host010.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %host010.i, align 4
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #9
  %host111.i = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i209, i32 0, i32 4, i32 %i.06.i, i32 4
  %92 = ptrtoint ptr %host111.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %host111.i, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp13.i = icmp eq i16 %90, 0
  br i1 %cmp13.i, label %if.end9.i225.if.end25.i_crit_edge, label %if.else.i

if.end9.i225.if.end25.i_crit_edge:                ; preds = %if.end9.i225
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end9.i225
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %cmp19.i = icmp eq i16 %93, 0
  br i1 %cmp19.i, label %if.else.i.if.end25.i_crit_edge, label %if.else.i.for.inc.i229_crit_edge

if.else.i.for.inc.i229_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i229

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i.if.end25.i_crit_edge, %if.end9.i225.if.end25.i_crit_edge
  %remote_host.0.in.i = phi i16 [ %94, %if.end9.i225.if.end25.i_crit_edge ], [ %91, %if.else.i.if.end25.i_crit_edge ]
  %remote_host.0.i = zext i16 %remote_host.0.in.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %remote_host.0.in.i)
  %cmp26.i = icmp ugt i16 %remote_host.0.in.i, 14
  br i1 %cmp26.i, label %do.end.i226, label %if.end29.i

do.end.i226:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.51, i32 noundef %remote_host.0.i) #12
  br label %qcom_smem_enumerate_partitions.exit

if.end29.i:                                       ; preds = %if.end25.i
  %arrayidx30.i = getelementptr %struct.qcom_smem, ptr %call.i, i32 0, i32 4, i32 %remote_host.0.i
  %97 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx30.i, align 4
  %tobool31.not.i = icmp eq ptr %98, null
  br i1 %tobool31.not.i, label %if.end37.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.54, i32 noundef %remote_host.0.i) #12
  br label %qcom_smem_enumerate_partitions.exit

if.end37.i:                                       ; preds = %if.end29.i
  %call38.i = tail call fastcc ptr @qcom_smem_partition_header(ptr noundef %call.i, ptr noundef %arrayidx.i220, i16 noundef zeroext %91, i16 noundef zeroext %94) #9
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %if.end37.i.qcom_smem_enumerate_partitions.exit_crit_edge, label %if.end41.i

if.end37.i.qcom_smem_enumerate_partitions.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_smem_enumerate_partitions.exit

if.end41.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call38.i, ptr %arrayidx30.i, align 4
  %cacheline.i227 = getelementptr %struct.smem_ptable, ptr %add.ptr3.i.i209, i32 0, i32 4, i32 %i.06.i, i32 5
  %102 = ptrtoint ptr %cacheline.i227 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cacheline.i227, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #9
  %arrayidx45.i = getelementptr %struct.qcom_smem, ptr %call.i, i32 0, i32 5, i32 %remote_host.0.i
  %105 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx45.i, align 4
  br label %for.inc.i229

for.inc.i229:                                     ; preds = %if.end41.i, %if.else.i.for.inc.i229_crit_edge, %if.end6.i.for.inc.i229_crit_edge, %for.body.i222.for.inc.i229_crit_edge
  %inc.i228 = add nuw i32 %i.06.i, 1
  %106 = ptrtoint ptr %num_entries.i218 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_entries.i218, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #9
  %cmp.i = icmp ult i32 %inc.i228, %108
  br i1 %cmp.i, label %for.inc.i229.for.body.i222_crit_edge, label %for.inc.i229.if.end84_crit_edge

for.inc.i229.if.end84_crit_edge:                  ; preds = %for.inc.i229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

for.inc.i229.for.body.i222_crit_edge:             ; preds = %for.inc.i229
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i222

qcom_smem_enumerate_partitions.exit:              ; preds = %if.end37.i.qcom_smem_enumerate_partitions.exit_crit_edge, %do.end35.i, %do.end.i226, %if.then.i
  %retval.0.i230 = phi i32 [ %84, %if.then.i ], [ -22, %do.end.i226 ], [ -22, %do.end35.i ], [ -22, %if.end37.i.qcom_smem_enumerate_partitions.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i230)
  %cmp81 = icmp sgt i32 %retval.0.i230, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %retval.0.i230)
  %cmp82.not = icmp eq i32 %retval.0.i230, -2
  %or.cond = or i1 %cmp81, %cmp82.not
  br i1 %or.cond, label %qcom_smem_enumerate_partitions.exit.if.end84_crit_edge, label %qcom_smem_enumerate_partitions.exit.cleanup_crit_edge

qcom_smem_enumerate_partitions.exit.cleanup_crit_edge: ; preds = %qcom_smem_enumerate_partitions.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

qcom_smem_enumerate_partitions.exit.if.end84_crit_edge: ; preds = %qcom_smem_enumerate_partitions.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.end84:                                         ; preds = %qcom_smem_enumerate_partitions.exit.if.end84_crit_edge, %for.inc.i229.if.end84_crit_edge, %for.cond.preheader.i219.if.end84_crit_edge
  %109 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %of_node, align 8
  %call87 = tail call i32 @of_hwspin_lock_get_id(ptr noundef %110, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then89, label %if.end97

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call87)
  %cmp90.not = icmp eq i32 %call87, -517
  br i1 %cmp90.not, label %if.then89.cleanup_crit_edge, label %do.end94

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end94:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end97:                                         ; preds = %if.end84
  %call98 = tail call ptr @hwspin_lock_request_specific(i32 noundef %call87) #9
  %hwlock = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 0, i32 1
  %111 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call98, ptr %hwlock, align 4
  %tobool100.not = icmp eq ptr %call98, null
  br i1 %tobool100.not, label %if.end97.cleanup_crit_edge, label %if.end102

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end102:                                        ; preds = %if.end97
  store ptr %call.i, ptr @__smem, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %112 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %113 = call ptr @memset(ptr %112, i32 255, i32 48)
  %114 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %dev, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %fwnode.i.i, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %112, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.25, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %118 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %119 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %properties.i.i, align 8
  %120 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %socinfo = getelementptr inbounds %struct.qcom_smem, ptr %call.i, i32 0, i32 7
  %121 = ptrtoint ptr %socinfo to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i, ptr %socinfo, align 4
  %cmp.i231 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %do.body108, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_smem_probe.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_smem_probe, %if.then113)) #9
          to label %cleanup [label %if.then113], !srcloc !144

if.then113:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_smem_probe.__UNIQUE_ID_ddebug184, ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %do.body108, %if.end102.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %do.end94, %if.then89.cleanup_crit_edge, %qcom_smem_enumerate_partitions.exit.cleanup_crit_edge, %do.end75, %qcom_smem_set_global_partition.exit.cleanup_crit_edge, %qcom_smem_set_global_partition.exit.thread, %if.end28.i.cleanup_crit_edge, %do.end26.i, %do.end.i, %do.end62, %do.end, %if.then24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -22, %do.end62 ], [ -22, %do.end75 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.else.cleanup_crit_edge ], [ %call27, %if.then24.cleanup_crit_edge ], [ %57, %qcom_smem_set_global_partition.exit.cleanup_crit_edge ], [ %retval.0.i230, %qcom_smem_enumerate_partitions.exit.cleanup_crit_edge ], [ %call87, %do.end94 ], [ -517, %if.then89.cleanup_crit_edge ], [ -6, %if.end97.cleanup_crit_edge ], [ 0, %if.then113 ], [ 0, %if.end102.cleanup_crit_edge ], [ 0, %do.body108 ], [ -22, %do.end.i ], [ -22, %do.end26.i ], [ -22, %if.end28.i.cleanup_crit_edge ], [ %56, %qcom_smem_set_global_partition.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smem_remove(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__smem, align 4
  %socinfo = getelementptr inbounds %struct.qcom_smem, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %socinfo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socinfo, align 4
  tail call void @platform_device_unregister(ptr noundef %2) #9
  %3 = load ptr, ptr @__smem, align 4
  %hwlock = getelementptr inbounds %struct.qcom_smem, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwlock, align 4
  %call = tail call i32 @hwspin_lock_free(ptr noundef %5) #9
  store ptr null, ptr @__smem, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reserved_mem_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_smem_resolve_mem(ptr nocapture noundef readonly %smem, ptr noundef %name, ptr nocapture noundef writeonly %region) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %r = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smem, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #9
  %2 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %3 = call ptr @memset(ptr %r, i32 255, i32 32)
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef %name, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call2 = call i32 @of_address_to_resource(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %r) #9
  call void @of_node_put(ptr noundef nonnull %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r, align 4
  %11 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %region, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %13
  %size = getelementptr inbounds %struct.smem_region, ptr %region, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_hwspin_lock_get_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwspin_lock_request_specific(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qcom_smem_partition_header(ptr nocapture noundef readonly %smem, ptr nocapture noundef readonly %entry1, i16 noundef zeroext %host0, i16 noundef zeroext %host1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_base = getelementptr inbounds %struct.qcom_smem, ptr %smem, i32 1, i32 1
  %0 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_base, align 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add.ptr = getelementptr i8, ptr %1, i32 %4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @SMEM_PART_MAGIC, i32 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %smem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smem, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.37, ptr noundef %add.ptr) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %host04 = getelementptr inbounds %struct.smem_partition_header, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %host04 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %host04, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %host0)
  %cmp.not = icmp eq i16 %9, %host0
  br i1 %cmp.not, label %if.end15, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv5 = zext i16 %9 to i32
  %conv = zext i16 %host0 to i32
  %10 = ptrtoint ptr %smem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smem, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %conv5) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %host117 = getelementptr inbounds %struct.smem_partition_header, ptr %add.ptr, i32 0, i32 2
  %12 = ptrtoint ptr %host117 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %host117, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %host1)
  %cmp19.not = icmp eq i16 %14, %host1
  br i1 %cmp19.not, label %if.end29, label %do.end24

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %conv18 = zext i16 %14 to i32
  %conv16 = zext i16 %host1 to i32
  %15 = ptrtoint ptr %smem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smem, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.43, i32 noundef %conv16, i32 noundef %conv18) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  %size30 = getelementptr inbounds %struct.smem_partition_header, ptr %add.ptr, i32 0, i32 3
  %17 = ptrtoint ptr %size30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size30, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %size31 = getelementptr inbounds %struct.smem_ptable_entry, ptr %entry1, i32 0, i32 1
  %20 = ptrtoint ptr %size31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %21)
  %cmp32.not = icmp eq i32 %18, %21
  br i1 %cmp32.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %smem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smem, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.46, i32 noundef %19, i32 noundef %22) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  %offset_free_uncached = getelementptr inbounds %struct.smem_partition_header, ptr %add.ptr, i32 0, i32 4
  %25 = ptrtoint ptr %offset_free_uncached to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset_free_uncached, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %19)
  %cmp41 = icmp ugt i32 %27, %19
  br i1 %cmp41, label %do.end46, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %smem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smem, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.49, i32 noundef %27, i32 noundef %19) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.end40.cleanup_crit_edge, %do.end37, %do.end24, %do.end10, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end10 ], [ null, %do.end24 ], [ null, %do.end37 ], [ null, %do.end46 ], [ %add.ptr, %if.end40.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwspin_lock_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !121, !122, !123, !124, !126, !127, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/smem.c", i32 453, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qcom_smem_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qcom_smem_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_qcom_smem_alloc, !9, !"__ksymtab_qcom_smem_alloc", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/smem.c", i32 481, i32 1}
!10 = !{ptr @__ksymtab_qcom_smem_get, !11, !"__ksymtab_qcom_smem_get", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/smem.c", i32 614, i32 1}
!12 = !{ptr @__ksymtab_qcom_smem_get_free_space, !13, !"__ksymtab_qcom_smem_get_free_space", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/smem.c", i32 647, i32 1}
!14 = !{ptr @__ksymtab_qcom_smem_virt_to_phys, !15, !"__ksymtab_qcom_smem_virt_to_phys", i1 false, i1 false}
!15 = !{!"../drivers/soc/qcom/smem.c", i32 674, i32 1}
!16 = !{ptr @__initcall__kmod_smem__185_1026_qcom_smem_init3, !17, !"__initcall__kmod_smem__185_1026_qcom_smem_init3", i1 false, i1 false}
!17 = !{!"../drivers/soc/qcom/smem.c", i32 1026, i32 1}
!18 = !{ptr @__exitcall_qcom_smem_exit, !19, !"__exitcall_qcom_smem_exit", i1 false, i1 false}
!19 = !{!"../drivers/soc/qcom/smem.c", i32 1032, i32 1}
!20 = !{ptr @__UNIQUE_ID_author186, !21, !"__UNIQUE_ID_author186", i1 false, i1 false}
!21 = !{!"../drivers/soc/qcom/smem.c", i32 1034, i32 1}
!22 = !{ptr @__UNIQUE_ID_description187, !23, !"__UNIQUE_ID_description187", i1 false, i1 false}
!23 = !{!"../drivers/soc/qcom/smem.c", i32 1035, i32 1}
!24 = !{ptr @__UNIQUE_ID_file188, !25, !"__UNIQUE_ID_file188", i1 false, i1 false}
!25 = !{!"../drivers/soc/qcom/smem.c", i32 1036, i32 1}
!26 = !{ptr @__UNIQUE_ID_license189, !25, !"__UNIQUE_ID_license189", i1 false, i1 false}
!27 = !{ptr @__smem, !28, !"__smem", i1 false, i1 false}
!28 = !{!"../drivers/soc/qcom/smem.c", i32 345, i32 26}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/qcom/smem.c", i32 375, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @qcom_smem_alloc_private._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @qcom_smem_alloc_private._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/qcom/smem.c", i32 395, i32 2}
!36 = !{ptr @qcom_smem_alloc_private._entry.7, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @qcom_smem_alloc_private._entry_ptr.9, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/qcom/smem.c", i32 562, i32 2}
!40 = !{ptr @qcom_smem_get_private._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qcom_smem_get_private._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/qcom/smem.c", i32 1016, i32 11}
!44 = !{ptr @qcom_smem_driver, !45, !"qcom_smem_driver", i1 false, i1 false}
!45 = !{!"../drivers/soc/qcom/smem.c", i32 1012, i32 31}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/qcom/smem.c", i32 905, i32 42}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/qcom/smem.c", i32 925, i32 37}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/qcom/smem.c", i32 941, i32 4}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @qcom_smem_probe._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @qcom_smem_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/qcom/smem.c", i32 949, i32 3}
!57 = !{ptr @qcom_smem_probe._entry.16, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @qcom_smem_probe._entry_ptr.18, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/qcom/smem.c", i32 965, i32 3}
!61 = !{ptr @qcom_smem_probe._entry.19, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @qcom_smem_probe._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/qcom/smem.c", i32 977, i32 4}
!65 = !{ptr @qcom_smem_probe._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @qcom_smem_probe._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/qcom/smem.c", i32 987, i32 60}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/qcom/smem.c", i32 991, i32 3}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @qcom_smem_probe.__UNIQUE_ID_ddebug184, !70, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/qcom/smem.c", i32 877, i32 3}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @qcom_smem_resolve_mem._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @qcom_smem_resolve_mem._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/soc/qcom/smem.c", i32 776, i32 3}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @qcom_smem_set_global_partition._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @qcom_smem_set_global_partition._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/qcom/smem.c", i32 801, i32 3}
!85 = !{ptr @qcom_smem_set_global_partition._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @qcom_smem_set_global_partition._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/qcom/smem.c", i32 698, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @qcom_smem_get_ptable._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @qcom_smem_get_ptable._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @SMEM_PTABLE_MAGIC, !93, !"SMEM_PTABLE_MAGIC", i1 false, i1 false}
!93 = !{!"../drivers/soc/qcom/smem.c", i32 174, i32 17}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/qcom/smem.c", i32 736, i32 3}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @qcom_smem_partition_header._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @qcom_smem_partition_header._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/soc/qcom/smem.c", i32 741, i32 3}
!101 = !{ptr @qcom_smem_partition_header._entry.39, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qcom_smem_partition_header._entry_ptr.41, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/qcom/smem.c", i32 746, i32 3}
!105 = !{ptr @qcom_smem_partition_header._entry.42, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @qcom_smem_partition_header._entry_ptr.44, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/soc/qcom/smem.c", i32 753, i32 3}
!109 = !{ptr @qcom_smem_partition_header._entry.45, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qcom_smem_partition_header._entry_ptr.47, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/soc/qcom/smem.c", i32 759, i32 3}
!113 = !{ptr @qcom_smem_partition_header._entry.48, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @qcom_smem_partition_header._entry_ptr.50, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @SMEM_PART_MAGIC, !116, !"SMEM_PART_MAGIC", i1 false, i1 false}
!116 = !{!"../drivers/soc/qcom/smem.c", i32 198, i32 17}
!117 = !{ptr @SMEM_INFO_MAGIC, !118, !"SMEM_INFO_MAGIC", i1 false, i1 false}
!118 = !{!"../drivers/soc/qcom/smem.c", i32 235, i32 17}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/soc/qcom/smem.c", i32 847, i32 4}
!121 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @qcom_smem_enumerate_partitions._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @qcom_smem_enumerate_partitions._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/soc/qcom/smem.c", i32 852, i32 4}
!126 = !{ptr @qcom_smem_enumerate_partitions._entry.53, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @qcom_smem_enumerate_partitions._entry_ptr.55, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @qcom_smem_of_match, !129, !"qcom_smem_of_match", i1 false, i1 false}
!129 = !{!"../drivers/soc/qcom/smem.c", i32 1006, i32 34}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i64 2152901016}
!143 = !{i64 2152897639}
!144 = !{i64 2148284663, i64 2148284668, i64 2148284681, i64 2148284725, i64 2148284759, i64 2148284780}
