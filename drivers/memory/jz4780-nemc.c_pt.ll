; ModuleID = '/llk/IR_all_yes/drivers/memory/jz4780-nemc.c_pt.bc'
source_filename = "../drivers/memory/jz4780-nemc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+jz4780_nemc_num_banks\22, \22a\22\09"
module asm "\09.weak\09__crc_jz4780_nemc_num_banks\09\09\09\09"
module asm "\09.long\09__crc_jz4780_nemc_num_banks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jz4780_nemc_num_banks:\09\09\09\09\09"
module asm "\09.asciz \09\22jz4780_nemc_num_banks\22\09\09\09\09\09"
module asm "__kstrtabns_jz4780_nemc_num_banks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jz4780_nemc_set_type\22, \22a\22\09"
module asm "\09.weak\09__crc_jz4780_nemc_set_type\09\09\09\09"
module asm "\09.long\09__crc_jz4780_nemc_set_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jz4780_nemc_set_type:\09\09\09\09\09"
module asm "\09.asciz \09\22jz4780_nemc_set_type\22\09\09\09\09\09"
module asm "__kstrtabns_jz4780_nemc_set_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jz4780_nemc_assert\22, \22a\22\09"
module asm "\09.weak\09__crc_jz4780_nemc_assert\09\09\09\09"
module asm "\09.long\09__crc_jz4780_nemc_assert\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jz4780_nemc_assert:\09\09\09\09\09"
module asm "\09.asciz \09\22jz4780_nemc_assert\22\09\09\09\09\09"
module asm "__kstrtabns_jz4780_nemc_assert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jz_soc_info = type { i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.jz4780_nemc = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_jz4780_nemc_num_banks = external dso_local constant [0 x i8], align 1
@__kstrtabns_jz4780_nemc_num_banks = external dso_local constant [0 x i8], align 1
@__ksymtab_jz4780_nemc_num_banks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jz4780_nemc_num_banks to i32), ptr @__kstrtab_jz4780_nemc_num_banks, ptr @__kstrtabns_jz4780_nemc_num_banks }, section "___ksymtab+jz4780_nemc_num_banks", align 4
@__kstrtab_jz4780_nemc_set_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_jz4780_nemc_set_type = external dso_local constant [0 x i8], align 1
@__ksymtab_jz4780_nemc_set_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jz4780_nemc_set_type to i32), ptr @__kstrtab_jz4780_nemc_set_type, ptr @__kstrtabns_jz4780_nemc_set_type }, section "___ksymtab+jz4780_nemc_set_type", align 4
@__kstrtab_jz4780_nemc_assert = external dso_local constant [0 x i8], align 1
@__kstrtabns_jz4780_nemc_assert = external dso_local constant [0 x i8], align 1
@__ksymtab_jz4780_nemc_assert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jz4780_nemc_assert to i32), ptr @__kstrtab_jz4780_nemc_assert, ptr @__kstrtabns_jz4780_nemc_assert }, section "___ksymtab+jz4780_nemc_assert", align 4
@__initcall__kmod_jz4780_nemc__183_423_jz4780_nemc_init4 = internal global ptr @jz4780_nemc_init, section ".initcall4.init", align 4
@jz4780_nemc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @jz4780_nemc_probe, ptr @jz4780_nemc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jz4780_nemc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jz4780-nemc\00", [20 x i8] zeroinitializer }, align 32
@jz4780_nemc_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-nemc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-nemc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4780_soc_info }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&nemc->lock\00", [20 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@jz4780_nemc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 304, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to request I/O memory region\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jz4780_nemc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/memory/jz4780-nemc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe._entry_ptr = internal global ptr @jz4780_nemc_probe._entry, section ".printk_index", align 4
@jz4780_nemc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe._entry_ptr.9 = internal global ptr @jz4780_nemc_probe._entry.7, section ".printk_index", align 4
@jz4780_nemc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe._entry_ptr.12 = internal global ptr @jz4780_nemc_probe._entry.10, section ".printk_index", align 4
@jz4780_nemc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe._entry_ptr.15 = internal global ptr @jz4780_nemc_probe._entry.13, section ".printk_index", align 4
@jz4780_nemc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 330, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to calculate clock period\0A\00", [62 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe._entry_ptr.18 = internal global ptr @jz4780_nemc_probe._entry.16, section ".printk_index", align 4
@jz4780_nemc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%pOF requests invalid bank %u\0A\00", [33 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe._entry_ptr.21 = internal global ptr @jz4780_nemc_probe._entry.19, section ".printk_index", align 4
@jz4780_nemc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 361, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%pOF has no addresses\0A\00", [41 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe._entry_ptr.24 = internal global ptr @jz4780_nemc_probe._entry.22, section ".printk_index", align 4
@jz4780_nemc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%pOF conflicts with another node\0A\00", [62 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe._entry_ptr.27 = internal global ptr @jz4780_nemc_probe._entry.25, section ".printk_index", align 4
@jz4780_nemc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 384, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"JZ4780 NEMC initialised\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@jz4780_nemc_probe._entry_ptr.31 = internal global ptr @jz4780_nemc_probe._entry.28, section ".printk_index", align 4
@jz4780_nemc_configure_bank.convert_tBP_tAW = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0B\0C\0C\0C\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ingenic,nemc-bus-width\00", [41 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 202, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported bus width: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"jz4780_nemc_configure_bank\00", [37 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry_ptr = internal global ptr @jz4780_nemc_configure_bank._entry, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ingenic,nemc-tAS\00", [47 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.4, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tAS %u is too high (%u cycles)\0A\00", [32 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry_ptr.38 = internal global ptr @jz4780_nemc_configure_bank._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ingenic,nemc-tAH\00", [47 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tAH %u is too high (%u cycles)\0A\00", [32 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry_ptr.42 = internal global ptr @jz4780_nemc_configure_bank._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ingenic,nemc-tBP\00", [47 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.4, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tBP %u is too high (%u cycles)\0A\00", [32 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry_ptr.46 = internal global ptr @jz4780_nemc_configure_bank._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ingenic,nemc-tAW\00", [47 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.34, ptr @.str.4, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tAW %u is too high (%u cycles)\0A\00", [32 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry_ptr.50 = internal global ptr @jz4780_nemc_configure_bank._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ingenic,nemc-tSTRV\00", [45 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.34, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tSTRV %u is too high (%u cycles)\0A\00", [62 x i8] zeroinitializer }, align 32
@jz4780_nemc_configure_bank._entry_ptr.54 = internal global ptr @jz4780_nemc_configure_bank._entry.52, section ".printk_index", align 4
@jz4740_soc_info = internal constant { %struct.jz_soc_info, [31 x i8] } { %struct.jz_soc_info { i8 7 }, [31 x i8] zeroinitializer }, align 32
@jz4780_soc_info = internal constant { %struct.jz_soc_info, [31 x i8] } { %struct.jz_soc_info { i8 15 }, [31 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"jz4780_nemc_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 410, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 414, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"jz4780_nemc_dt_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 404, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 290, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 304, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 310, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 318, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 324, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 330, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 347, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 360, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 364, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 384, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"convert_tBP_tAW\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 169, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 191, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 202, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 207, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 211, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 219, i32 33 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 223, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 231, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 235, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 243, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 247, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 255, i32 33 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 259, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"jz4740_soc_info\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 396, i32 33 }
@___asan_gen_.202 = private unnamed_addr constant [16 x i8] c"jz4780_soc_info\00", align 1
@___asan_gen_.203 = private constant [32 x i8] c"../drivers/memory/jz4780-nemc.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 400, i32 33 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__initcall__kmod_jz4780_nemc__183_423_jz4780_nemc_init4, ptr @__ksymtab_jz4780_nemc_assert, ptr @__ksymtab_jz4780_nemc_num_banks, ptr @__ksymtab_jz4780_nemc_set_type, ptr @jz4780_nemc_configure_bank._entry, ptr @jz4780_nemc_configure_bank._entry.36, ptr @jz4780_nemc_configure_bank._entry.40, ptr @jz4780_nemc_configure_bank._entry.44, ptr @jz4780_nemc_configure_bank._entry.48, ptr @jz4780_nemc_configure_bank._entry.52, ptr @jz4780_nemc_configure_bank._entry_ptr, ptr @jz4780_nemc_configure_bank._entry_ptr.38, ptr @jz4780_nemc_configure_bank._entry_ptr.42, ptr @jz4780_nemc_configure_bank._entry_ptr.46, ptr @jz4780_nemc_configure_bank._entry_ptr.50, ptr @jz4780_nemc_configure_bank._entry_ptr.54, ptr @jz4780_nemc_probe._entry, ptr @jz4780_nemc_probe._entry.10, ptr @jz4780_nemc_probe._entry.13, ptr @jz4780_nemc_probe._entry.16, ptr @jz4780_nemc_probe._entry.19, ptr @jz4780_nemc_probe._entry.22, ptr @jz4780_nemc_probe._entry.25, ptr @jz4780_nemc_probe._entry.28, ptr @jz4780_nemc_probe._entry.7, ptr @jz4780_nemc_probe._entry_ptr, ptr @jz4780_nemc_probe._entry_ptr.12, ptr @jz4780_nemc_probe._entry_ptr.15, ptr @jz4780_nemc_probe._entry_ptr.18, ptr @jz4780_nemc_probe._entry_ptr.21, ptr @jz4780_nemc_probe._entry_ptr.24, ptr @jz4780_nemc_probe._entry_ptr.27, ptr @jz4780_nemc_probe._entry_ptr.31, ptr @jz4780_nemc_probe._entry_ptr.9, ptr @jz4780_nemc_driver, ptr @.str, ptr @jz4780_nemc_dt_match, ptr @jz4780_nemc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @jz4780_nemc_configure_bank.convert_tBP_tAW, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @jz4740_soc_info, ptr @jz4780_soc_info], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_configure_bank.convert_tBP_tAW to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_configure_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_configure_bank._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_configure_bank._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_configure_bank._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_configure_bank._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_nemc_configure_bank._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_soc_info to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_soc_info to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jz4780_nemc_num_banks(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i8 = tail call ptr @__of_get_address(ptr noundef %1, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %tobool.not9 = icmp eq ptr %call.i8, null
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call.i13 = phi ptr [ %call.i, %while.body.while.body_crit_edge ], [ %call.i8, %entry.while.body_crit_edge ]
  %i.012 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %referenced.011 = phi i32 [ %referenced.1, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %count.010 = phi i32 [ %count.1, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %inc = add i32 %i.012, 1
  %2 = ptrtoint ptr %call.i13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i13, align 4
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, %referenced.011
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %inc4 = zext i1 %tobool2.not to i32
  %count.1 = add i32 %count.010, %inc4
  %or = select i1 %tobool2.not, i32 %shl, i32 0
  %referenced.1 = or i32 %or, %referenced.011
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__of_get_address(ptr noundef %5, i32 noundef %inc, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %count.1, %while.body.while.end_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jz4780_nemc_set_type(ptr nocapture noundef readonly %dev, i32 noundef %bank, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.jz4780_nemc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %bank, 15
  %shl = shl nuw i32 1, %sub
  %sub3 = shl i32 %bank, 1
  %shl4 = add i32 %sub3, -2
  %shl5 = shl nuw i32 1, %shl4
  %or = or i32 %shl5, %shl
  %neg = xor i32 %or, -1
  %and = and i32 %7, %neg
  br label %do.body

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub8 = add i32 %bank, 15
  %shl9 = shl nuw i32 1, %sub8
  %neg10 = xor i32 %shl9, -1
  %and11 = and i32 %7, %neg10
  %sub12 = shl i32 %bank, 1
  %shl13 = add i32 %sub12, -2
  %shl14 = shl nuw i32 1, %shl13
  %or15 = or i32 %and11, %shl14
  br label %do.body

do.body:                                          ; preds = %sw.bb6, %sw.bb, %entry.do.body_crit_edge
  %nfcsr.0 = phi i32 [ %7, %entry.do.body_crit_edge ], [ %or15, %sw.bb6 ], [ %and, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %nfcsr.0)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %9) #7, !srcloc !113
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jz4780_nemc_assert(ptr nocapture noundef readonly %dev, i32 noundef %bank, i1 noundef zeroext %assert) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.jz4780_nemc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %sub = shl i32 %bank, 1
  %add = add i32 %sub, -1
  %shl3 = shl nuw i32 1, %add
  %or = or i32 %7, %shl3
  %neg = xor i32 %shl3, -1
  %and = and i32 %7, %neg
  %nfcsr.0 = select i1 %assert, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %nfcsr.0)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %8) #7, !srcloc !113
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_nemc_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jz4780_nemc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_nemc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %referenced = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %referenced) #7
  %0 = ptrtoint ptr %referenced to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %referenced, align 4, !annotation !116
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev1) #7
  %soc_info = getelementptr inbounds %struct.jz4780_nemc, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %soc_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %soc_info, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @jz4780_nemc_probe.__key, i16 noundef signext 3) #7
  %dev8 = getelementptr inbounds %struct.jz4780_nemc, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev8, align 4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.body.cleanup_crit_edge, label %if.end12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %3 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call9, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.dev_name.exit_crit_edge

if.end12.dev_name.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end12.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end12.dev_name.exit_crit_edge ]
  %call14 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @iomem_resource, i32 noundef %4, i32 noundef 84, ptr noundef %retval.0.i) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end20:                                         ; preds = %dev_name.exit
  %9 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call9, align 4
  %call22 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %10, i32 noundef 84) #7
  %base = getelementptr inbounds %struct.jz4780_nemc, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %base, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %do.end28, label %do.body30

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

do.body30:                                        ; preds = %if.end20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !113
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.jz4780_nemc, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call34, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %if.end43

do.end40:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end43:                                         ; preds = %do.body30
  %call45 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call45) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %call.i181 = tail call i32 @clk_get_rate(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool.not.i182 = icmp eq i32 %call.i181, 0
  br i1 %tobool.not.i182, label %jz4780_nemc_clk_period.exit.thread, label %if.else174.i.i.i

jz4780_nemc_clk_period.exit.thread:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %clk_period192 = getelementptr inbounds %struct.jz4780_nemc, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %clk_period192 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %clk_period192, align 4
  br label %do.end58

if.else174.i.i.i:                                 ; preds = %if.end51
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i181, i64 1000000000000) #11, !srcloc !118
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %21, 1
  %extract.t231 = trunc i64 %asmresult1.i.i.i.i to i32
  %clk_period = getelementptr inbounds %struct.jz4780_nemc, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %clk_period to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %extract.t231, ptr %clk_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t231)
  %tobool54.not = icmp eq i32 %extract.t231, 0
  br i1 %tobool54.not, label %if.else174.i.i.i.do.end58_crit_edge, label %if.end60

if.else174.i.i.i.do.end58_crit_edge:              ; preds = %if.else174.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.end58:                                         ; preds = %if.else174.i.i.i.do.end58_crit_edge, %jz4780_nemc_clk_period.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #7
  tail call void @clk_unprepare(ptr noundef %24) #7
  br label %cleanup

if.end60:                                         ; preds = %if.else174.i.i.i
  %25 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev8, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call62 = tail call ptr @of_get_next_child(ptr noundef %28, ptr noundef null) #7
  %cmp.not210 = icmp eq ptr %call62, null
  br i1 %cmp.not210, label %if.end60.for.end113_crit_edge, label %while.cond.preheader.lr.ph

if.end60.for.end113_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113

while.cond.preheader.lr.ph:                       ; preds = %if.end60
  %banks_present = getelementptr inbounds %struct.jz4780_nemc, ptr %call.i, i32 0, i32 6
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc109.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %child.0211 = phi ptr [ %call62, %while.cond.preheader.lr.ph ], [ %call112, %for.inc109.while.cond.preheader_crit_edge ]
  %29 = ptrtoint ptr %referenced to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %referenced, align 4
  %call.i185204 = call ptr @__of_get_address(ptr noundef nonnull %child.0211, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %tobool64.not205 = icmp eq ptr %call.i185204, null
  br i1 %tobool64.not205, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end75.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call.i185207 = phi ptr [ %call.i185, %if.end75.while.body_crit_edge ], [ %call.i185204, %while.cond.preheader.while.body_crit_edge ]
  %inc206 = phi i32 [ %inc, %if.end75.while.body_crit_edge ], [ 1, %while.cond.preheader.while.body_crit_edge ]
  %30 = ptrtoint ptr %call.i185207 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call.i185207, align 4
  %32 = add i32 %31, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %32)
  %33 = icmp ult i32 %32, -6
  br i1 %33, label %while.end.thread, label %if.end75

while.end.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.20, ptr noundef nonnull %child.0211, i32 noundef %31) #10
  %36 = ptrtoint ptr %referenced to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %referenced, align 4
  br label %do.end80

if.end75:                                         ; preds = %while.body
  %shl = shl nuw nsw i32 1, %31
  %37 = ptrtoint ptr %referenced to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %referenced, align 4
  %or = or i32 %38, %shl
  store i32 %or, ptr %referenced, align 4
  %inc = add i32 %inc206, 1
  %call.i185 = call ptr @__of_get_address(ptr noundef nonnull %child.0211, i32 noundef %inc206, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %tobool64.not = icmp eq ptr %call.i185, null
  br i1 %tobool64.not, label %if.end75.while.end_crit_edge, label %if.end75.while.body_crit_edge

if.end75.while.body_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end75.while.end_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end75.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %39 = ptrtoint ptr %referenced to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %referenced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool76.not = icmp eq i32 %.pr, 0
  br i1 %tobool76.not, label %while.end.do.end80_crit_edge, label %if.else

while.end.do.end80_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

do.end80:                                         ; preds = %while.end.do.end80_crit_edge, %while.end.thread
  %40 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.23, ptr noundef nonnull %child.0211) #10
  br label %for.inc109

if.else:                                          ; preds = %while.end
  %42 = ptrtoint ptr %banks_present to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %banks_present, align 4
  %and = and i32 %43, %.pr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool82.not = icmp eq i32 %and, 0
  br i1 %tobool82.not, label %if.end89, label %do.end86

do.end86:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.26, ptr noundef nonnull %child.0211) #10
  br label %for.inc109

if.end89:                                         ; preds = %if.else
  %call90 = call i32 @_find_next_bit_be(ptr noundef nonnull %referenced, i32 noundef 7, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call90)
  %cmp92208 = icmp ult i32 %call90, 7
  br i1 %cmp92208, label %if.end89.for.body94_crit_edge, label %if.end89.for.end_crit_edge

if.end89.for.end_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end89.for.body94_crit_edge:                    ; preds = %if.end89
  br label %for.body94

for.body94:                                       ; preds = %for.inc.for.body94_crit_edge, %if.end89.for.body94_crit_edge
  %bank.0209 = phi i32 [ %call98, %for.inc.for.body94_crit_edge ], [ %call90, %if.end89.for.body94_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %val.i, align 4, !annotation !116
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %sub.i = shl nuw nsw i32 %bank.0209, 2
  %add.i = add nuw nsw i32 %sub.i, 16
  %add.ptr.i = getelementptr i8, ptr %48, i32 %add.i
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %50 = and i32 %49, -16777217
  %51 = call i32 @llvm.bswap.i32(i32 %50) #7
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0211, ptr noundef nonnull @.str.32, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i186 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i186, label %if.then.i, label %for.body94.if.end.i188_crit_edge

for.body94.if.end.i188_crit_edge:                 ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i188

if.then.i:                                        ; preds = %for.body94
  %52 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %53)
  %cond.i = icmp eq i32 %53, 8
  br i1 %cond.i, label %sw.bb.i, label %do.end.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %51, -194
  br label %if.end.i188

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.33, i32 noundef %53) #10
  br label %for.end.thread

if.end.i188:                                      ; preds = %sw.bb.i, %for.body94.if.end.i188_crit_edge
  %smcr.0.i = phi i32 [ %51, %for.body94.if.end.i188_crit_edge ], [ %and3.i, %sw.bb.i ]
  %call.i.i149.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0211, ptr noundef nonnull @.str.35, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i149.i)
  %cmp.i187 = icmp sgt i32 %call.i.i149.i, -1
  br i1 %cmp.i187, label %if.then5.i, label %if.end.i188.if.end17.i_crit_edge

if.end.i188.if.end17.i_crit_edge:                 ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then5.i:                                       ; preds = %if.end.i188
  %56 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i, align 4
  %mul.i.i = mul i32 %57, 1000
  %58 = ptrtoint ptr %clk_period to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clk_period, align 4
  %add.i.i = add i32 %mul.i.i, -1
  %sub.i.i = add i32 %add.i.i, %59
  %div.i.i = udiv i32 %sub.i.i, %59
  %60 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %soc_info, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv.i189 = zext i8 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %conv.i189)
  %cmp8.i = icmp ugt i32 %div.i.i, %conv.i189
  br i1 %cmp8.i, label %do.end13.i, label %if.end15.i

do.end13.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.37, i32 noundef %57, i32 noundef %div.i.i) #10
  br label %for.end.thread

if.end15.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i = and i32 %smcr.0.i, -3841
  %shl.i = shl i32 %div.i.i, 8
  %or16.i = or i32 %shl.i, %and6.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end15.i, %if.end.i188.if.end17.i_crit_edge
  %smcr.1.i = phi i32 [ %or16.i, %if.end15.i ], [ %smcr.0.i, %if.end.i188.if.end17.i_crit_edge ]
  %call.i.i150.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0211, ptr noundef nonnull @.str.39, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i150.i)
  %cmp19.i = icmp sgt i32 %call.i.i150.i, -1
  br i1 %cmp19.i, label %if.then21.i, label %if.end17.i.if.end37.i_crit_edge

if.end17.i.if.end37.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then21.i:                                      ; preds = %if.end17.i
  %66 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val.i, align 4
  %mul.i151.i = mul i32 %67, 1000
  %68 = ptrtoint ptr %clk_period to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %clk_period, align 4
  %add.i153.i = add i32 %mul.i151.i, -1
  %sub.i154.i = add i32 %add.i153.i, %69
  %div.i155.i = udiv i32 %sub.i154.i, %69
  %70 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %soc_info, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  %conv26.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i155.i, i32 %conv26.i)
  %cmp27.i = icmp ugt i32 %div.i155.i, %conv26.i
  br i1 %cmp27.i, label %do.end32.i, label %if.end34.i

do.end32.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.41, i32 noundef %67, i32 noundef %div.i155.i) #10
  br label %for.end.thread

if.end34.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %and22.i = and i32 %smcr.1.i, -61441
  %shl35.i = shl i32 %div.i155.i, 12
  %or36.i = or i32 %shl35.i, %and22.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end34.i, %if.end17.i.if.end37.i_crit_edge
  %smcr.2.i = phi i32 [ %or36.i, %if.end34.i ], [ %smcr.1.i, %if.end17.i.if.end37.i_crit_edge ]
  %call.i.i156.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0211, ptr noundef nonnull @.str.43, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i156.i)
  %cmp39.i = icmp sgt i32 %call.i.i156.i, -1
  br i1 %cmp39.i, label %if.then41.i, label %if.end37.i.if.end55.i_crit_edge

if.end37.i.if.end55.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then41.i:                                      ; preds = %if.end37.i
  %76 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val.i, align 4
  %mul.i157.i = mul i32 %77, 1000
  %78 = ptrtoint ptr %clk_period to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %clk_period, align 4
  %add.i159.i = add i32 %mul.i157.i, -1
  %sub.i160.i = add i32 %add.i159.i, %79
  %div.i161.i = udiv i32 %sub.i160.i, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %div.i161.i)
  %cmp44.i = icmp ugt i32 %div.i161.i, 31
  br i1 %cmp44.i, label %do.end49.i, label %if.end51.i

do.end49.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.45, i32 noundef %77, i32 noundef %div.i161.i) #10
  br label %for.end.thread

if.end51.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  %and42.i = and i32 %smcr.2.i, -983041
  %arrayidx.i = getelementptr [32 x i8], ptr @jz4780_nemc_configure_bank.convert_tBP_tAW, i32 0, i32 %div.i161.i
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i, align 1
  %conv52.i = zext i8 %83 to i32
  %shl53.i = shl nuw nsw i32 %conv52.i, 16
  %or54.i = or i32 %shl53.i, %and42.i
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end51.i, %if.end37.i.if.end55.i_crit_edge
  %smcr.3.i = phi i32 [ %or54.i, %if.end51.i ], [ %smcr.2.i, %if.end37.i.if.end55.i_crit_edge ]
  %call.i.i162.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0211, ptr noundef nonnull @.str.47, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i162.i)
  %cmp57.i = icmp sgt i32 %call.i.i162.i, -1
  br i1 %cmp57.i, label %if.then59.i, label %if.end55.i.if.end74.i_crit_edge

if.end55.i.if.end74.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.then59.i:                                      ; preds = %if.end55.i
  %84 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val.i, align 4
  %mul.i163.i = mul i32 %85, 1000
  %86 = ptrtoint ptr %clk_period to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %clk_period, align 4
  %add.i165.i = add i32 %mul.i163.i, -1
  %sub.i166.i = add i32 %add.i165.i, %87
  %div.i167.i = udiv i32 %sub.i166.i, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %div.i167.i)
  %cmp62.i = icmp ugt i32 %div.i167.i, 31
  br i1 %cmp62.i, label %do.end67.i, label %if.end69.i

do.end67.i:                                       ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.49, i32 noundef %85, i32 noundef %div.i167.i) #10
  br label %for.end.thread

if.end69.i:                                       ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  %and60.i = and i32 %smcr.3.i, -15728641
  %arrayidx70.i = getelementptr [32 x i8], ptr @jz4780_nemc_configure_bank.convert_tBP_tAW, i32 0, i32 %div.i167.i
  %90 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = zext i8 %91 to i32
  %shl72.i = shl nuw nsw i32 %conv71.i, 20
  %or73.i = or i32 %shl72.i, %and60.i
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end69.i, %if.end55.i.if.end74.i_crit_edge
  %smcr.4.i = phi i32 [ %or73.i, %if.end69.i ], [ %smcr.3.i, %if.end55.i.if.end74.i_crit_edge ]
  %call.i.i168.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0211, ptr noundef nonnull @.str.51, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i168.i)
  %cmp76.i = icmp sgt i32 %call.i.i168.i, -1
  br i1 %cmp76.i, label %if.then78.i, label %if.end74.i.for.inc_crit_edge

if.end74.i.for.inc_crit_edge:                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then78.i:                                      ; preds = %if.end74.i
  %92 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val.i, align 4
  %mul.i169.i = mul i32 %93, 1000
  %94 = ptrtoint ptr %clk_period to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %clk_period, align 4
  %add.i171.i = add i32 %mul.i169.i, -1
  %sub.i172.i = add i32 %add.i171.i, %95
  %div.i173.i = udiv i32 %sub.i172.i, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %div.i173.i)
  %cmp81.i = icmp ugt i32 %div.i173.i, 63
  br i1 %cmp81.i, label %do.end86.i, label %if.end88.i

do.end86.i:                                       ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.53, i32 noundef %93, i32 noundef %div.i173.i) #10
  br label %for.end.thread

if.end88.i:                                       ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  %and79.i = and i32 %smcr.4.i, -1056964609
  %shl89.i = shl nuw nsw i32 %div.i173.i, 24
  %or90.i = or i32 %shl89.i, %and79.i
  br label %for.inc

for.end.thread:                                   ; preds = %do.end86.i, %do.end67.i, %do.end49.i, %do.end32.i, %do.end13.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %98 = ptrtoint ptr %referenced to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %referenced, align 4
  br label %for.inc109

for.inc:                                          ; preds = %if.end88.i, %if.end74.i.for.inc_crit_edge
  %smcr.5.i = phi i32 [ %or90.i, %if.end88.i ], [ %smcr.4.i, %if.end74.i.for.inc_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @arm_heavy_mb() #7
  %99 = call i32 @llvm.bswap.i32(i32 %smcr.5.i) #7
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr99.i = getelementptr i8, ptr %101, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 %99) #7, !srcloc !113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %add = add nuw nsw i32 %bank.0209, 1
  %call98 = call i32 @_find_next_bit_be(ptr noundef nonnull %referenced, i32 noundef 7, i32 noundef %add) #7
  %cmp92 = icmp ult i32 %call98, 7
  br i1 %cmp92, label %for.inc.for.body94_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body94_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body94

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end89.for.end_crit_edge
  %102 = ptrtoint ptr %referenced to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr196 = load i32, ptr %referenced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr196)
  %tobool99.not = icmp eq i32 %.pr196, 0
  br i1 %tobool99.not, label %for.end.for.inc109_crit_edge, label %if.then100

for.end.for.inc109_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc109

if.then100:                                       ; preds = %for.end
  %103 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev8, align 4
  %call102 = call ptr @of_platform_device_create(ptr noundef nonnull %child.0211, ptr noundef null, ptr noundef %104) #7
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.then100.for.inc109_crit_edge, label %if.then104

if.then100.for.inc109_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc109

if.then104:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %referenced to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %referenced, align 4
  %107 = ptrtoint ptr %banks_present to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %banks_present, align 4
  %or106 = or i32 %108, %106
  store i32 %or106, ptr %banks_present, align 4
  br label %for.inc109

for.inc109:                                       ; preds = %if.then104, %if.then100.for.inc109_crit_edge, %for.end.for.inc109_crit_edge, %for.end.thread, %do.end86, %do.end80
  %109 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev8, align 4
  %of_node111 = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 27
  %111 = ptrtoint ptr %of_node111 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %of_node111, align 8
  %call112 = call ptr @of_get_next_child(ptr noundef %112, ptr noundef nonnull %child.0211) #7
  %cmp.not = icmp eq ptr %call112, null
  br i1 %cmp.not, label %for.inc109.for.end113_crit_edge, label %for.inc109.while.cond.preheader_crit_edge

for.inc109.while.cond.preheader_crit_edge:        ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.inc109.for.end113_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113

for.end113:                                       ; preds = %for.inc109.for.end113_crit_edge, %if.end60.for.end113_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %113 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end113, %do.end58, %do.end50, %do.end40, %do.end28, %do.end19, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %do.end40 ], [ %call45, %do.end50 ], [ 0, %for.end113 ], [ -22, %do.end58 ], [ -12, %do.end28 ], [ -16, %do.end19 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %referenced) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_nemc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.jz4780_nemc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !75, !76, !77, !79, !81, !82, !83, !85, !87, !88, !89, !91, !93, !94, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__ksymtab_jz4780_nemc_num_banks, !1, !"__ksymtab_jz4780_nemc_num_banks", i1 false, i1 false}
!1 = !{!"../drivers/memory/jz4780-nemc.c", i32 86, i32 1}
!2 = !{ptr @__ksymtab_jz4780_nemc_set_type, !3, !"__ksymtab_jz4780_nemc_set_type", i1 false, i1 false}
!3 = !{!"../drivers/memory/jz4780-nemc.c", i32 115, i32 1}
!4 = !{ptr @__ksymtab_jz4780_nemc_assert, !5, !"__ksymtab_jz4780_nemc_assert", i1 false, i1 false}
!5 = !{!"../drivers/memory/jz4780-nemc.c", i32 140, i32 1}
!6 = !{ptr @__initcall__kmod_jz4780_nemc__183_423_jz4780_nemc_init4, !7, !"__initcall__kmod_jz4780_nemc__183_423_jz4780_nemc_init4", i1 false, i1 false}
!7 = !{!"../drivers/memory/jz4780-nemc.c", i32 423, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/memory/jz4780-nemc.c", i32 414, i32 11}
!10 = !{ptr @jz4780_nemc_driver, !11, !"jz4780_nemc_driver", i1 false, i1 false}
!11 = !{!"../drivers/memory/jz4780-nemc.c", i32 410, i32 31}
!12 = !{ptr @jz4780_nemc_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/memory/jz4780-nemc.c", i32 290, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/memory/jz4780-nemc.c", i32 304, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @jz4780_nemc_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @jz4780_nemc_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/memory/jz4780-nemc.c", i32 310, i32 3}
!25 = !{ptr @jz4780_nemc_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @jz4780_nemc_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/memory/jz4780-nemc.c", i32 318, i32 3}
!29 = !{ptr @jz4780_nemc_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @jz4780_nemc_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/memory/jz4780-nemc.c", i32 324, i32 3}
!33 = !{ptr @jz4780_nemc_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @jz4780_nemc_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/memory/jz4780-nemc.c", i32 330, i32 3}
!37 = !{ptr @jz4780_nemc_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @jz4780_nemc_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/memory/jz4780-nemc.c", i32 347, i32 5}
!41 = !{ptr @jz4780_nemc_probe._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @jz4780_nemc_probe._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/jz4780-nemc.c", i32 360, i32 4}
!45 = !{ptr @jz4780_nemc_probe._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @jz4780_nemc_probe._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/memory/jz4780-nemc.c", i32 364, i32 4}
!49 = !{ptr @jz4780_nemc_probe._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @jz4780_nemc_probe._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/memory/jz4780-nemc.c", i32 384, i32 2}
!53 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @jz4780_nemc_probe._entry.28, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @jz4780_nemc_probe._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @jz4780_nemc_configure_bank.convert_tBP_tAW, !57, !"convert_tBP_tAW", i1 false, i1 false}
!57 = !{!"../drivers/memory/jz4780-nemc.c", i32 169, i32 18}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/jz4780-nemc.c", i32 191, i32 34}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/jz4780-nemc.c", i32 202, i32 4}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @jz4780_nemc_configure_bank._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @jz4780_nemc_configure_bank._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/memory/jz4780-nemc.c", i32 207, i32 33}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memory/jz4780-nemc.c", i32 211, i32 4}
!69 = !{ptr @jz4780_nemc_configure_bank._entry.36, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @jz4780_nemc_configure_bank._entry_ptr.38, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/memory/jz4780-nemc.c", i32 219, i32 33}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/memory/jz4780-nemc.c", i32 223, i32 4}
!75 = !{ptr @jz4780_nemc_configure_bank._entry.40, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @jz4780_nemc_configure_bank._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/memory/jz4780-nemc.c", i32 231, i32 33}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/memory/jz4780-nemc.c", i32 235, i32 4}
!81 = !{ptr @jz4780_nemc_configure_bank._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @jz4780_nemc_configure_bank._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/memory/jz4780-nemc.c", i32 243, i32 33}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/memory/jz4780-nemc.c", i32 247, i32 4}
!87 = !{ptr @jz4780_nemc_configure_bank._entry.48, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @jz4780_nemc_configure_bank._entry_ptr.50, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/memory/jz4780-nemc.c", i32 255, i32 33}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/memory/jz4780-nemc.c", i32 259, i32 4}
!93 = !{ptr @jz4780_nemc_configure_bank._entry.52, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @jz4780_nemc_configure_bank._entry_ptr.54, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @jz4780_nemc_dt_match, !96, !"jz4780_nemc_dt_match", i1 false, i1 false}
!96 = !{!"../drivers/memory/jz4780-nemc.c", i32 404, i32 34}
!97 = !{ptr @jz4740_soc_info, !98, !"jz4740_soc_info", i1 false, i1 false}
!98 = !{!"../drivers/memory/jz4780-nemc.c", i32 396, i32 33}
!99 = !{ptr @jz4780_soc_info, !100, !"jz4780_soc_info", i1 false, i1 false}
!100 = !{!"../drivers/memory/jz4780-nemc.c", i32 400, i32 33}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 2038189}
!111 = !{i64 2152935525}
!112 = !{i64 2152936210}
!113 = !{i64 2037771}
!114 = !{i64 2152938424}
!115 = !{i64 2152938905}
!116 = !{!"auto-init"}
!117 = !{i64 2152960189}
!118 = !{i64 2148639400, i64 2148639680, i64 2148640014, i64 2148640348}
!119 = !{i64 2152941234}
!120 = !{i64 2152955959}
