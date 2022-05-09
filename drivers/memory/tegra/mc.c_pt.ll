; ModuleID = '/llk/IR_all_yes/drivers/memory/tegra/mc.c_pt.bc'
source_filename = "../drivers/memory/tegra/mc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_tegra_memory_controller_get\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_tegra_memory_controller_get\09\09\09\09"
module asm "\09.long\09__crc_devm_tegra_memory_controller_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_tegra_memory_controller_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_tegra_memory_controller_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_tegra_memory_controller_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra_mc_probe_device\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_mc_probe_device\09\09\09\09"
module asm "\09.long\09__crc_tegra_mc_probe_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mc_probe_device:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mc_probe_device\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mc_probe_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra_mc_write_emem_configuration\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_mc_write_emem_configuration\09\09\09\09"
module asm "\09.long\09__crc_tegra_mc_write_emem_configuration\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mc_write_emem_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mc_write_emem_configuration\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mc_write_emem_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra_mc_get_emem_device_count\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_mc_get_emem_device_count\09\09\09\09"
module asm "\09.long\09__crc_tegra_mc_get_emem_device_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mc_get_emem_device_count:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mc_get_emem_device_count\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mc_get_emem_device_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tegra_mc_reset_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_mc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.72 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.anon.72 = type { ptr }
%struct.tegra_mc_reset = type { ptr, i32, i32, i32, i32, i32 }
%struct.tegra_mc_timing = type { i32, ptr }
%struct.tegra_mc_client = type { i32, ptr, %union.anon.67, i32, %struct.anon.68 }
%union.anon.67 = type { i32 }
%struct.anon.68 = type { %struct.anon.69, %struct.anon.70, %struct.anon.71 }
%struct.anon.69 = type { i32, i32 }
%struct.anon.70 = type { i32, i32, i32, i32 }
%struct.anon.71 = type { i32, i32 }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,memory-controller\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_devm_tegra_memory_controller_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_tegra_memory_controller_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_tegra_memory_controller_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_tegra_memory_controller_get to i32), ptr @__kstrtab_devm_tegra_memory_controller_get, ptr @__kstrtabns_devm_tegra_memory_controller_get }, section "___ksymtab_gpl+devm_tegra_memory_controller_get", align 4
@__kstrtab_tegra_mc_probe_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mc_probe_device = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mc_probe_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mc_probe_device to i32), ptr @__kstrtab_tegra_mc_probe_device, ptr @__kstrtabns_tegra_mc_probe_device }, section "___ksymtab_gpl+tegra_mc_probe_device", align 4
@tegra_mc_reset_ops_common = dso_local constant { %struct.tegra_mc_reset_ops, [40 x i8] } { %struct.tegra_mc_reset_ops { ptr null, ptr null, ptr @tegra_mc_block_dma_common, ptr @tegra_mc_dma_idling_common, ptr @tegra_mc_unblock_dma_common, ptr @tegra_mc_reset_status_common }, [40 x i8] zeroinitializer }, align 32
@tegra_mc_write_emem_configuration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"no memory timing registered for rate %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tegra_mc_write_emem_configuration\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/memory/tegra/mc.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_mc_write_emem_configuration._entry_ptr = internal global ptr @tegra_mc_write_emem_configuration._entry, section ".printk_index", align 4
@__kstrtab_tegra_mc_write_emem_configuration = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mc_write_emem_configuration = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mc_write_emem_configuration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mc_write_emem_configuration to i32), ptr @__kstrtab_tegra_mc_write_emem_configuration, ptr @__kstrtabns_tegra_mc_write_emem_configuration }, section "___ksymtab_gpl+tegra_mc_write_emem_configuration", align 4
@__kstrtab_tegra_mc_get_emem_device_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mc_get_emem_device_count = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mc_get_emem_device_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mc_get_emem_device_count to i32), ptr @__kstrtab_tegra_mc_get_emem_device_count, ptr @__kstrtabns_tegra_mc_get_emem_device_count }, section "___ksymtab_gpl+tegra_mc_get_emem_device_count", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@tegra30_mc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get MC clock: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra30_mc_probe\00", [47 x i8] zeroinitializer }, align 32
@tegra30_mc_probe._entry_ptr = internal global ptr @tegra30_mc_probe._entry, section ".printk_index", align 4
@tegra30_mc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to setup latency allowance: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra30_mc_probe._entry_ptr.11 = internal global ptr @tegra30_mc_probe._entry.9, section ".printk_index", align 4
@tegra30_mc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to setup timings: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra30_mc_probe._entry_ptr.14 = internal global ptr @tegra30_mc_probe._entry.12, section ".printk_index", align 4
@tegra30_mc_ops = dso_local constant { %struct.tegra_mc_ops, [40 x i8] } { %struct.tegra_mc_ops { ptr @tegra30_mc_probe, ptr null, ptr null, ptr null, ptr @tegra30_mc_handle_irq, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"External interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EMEM address decode error\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GART page fault\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Security violation\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EMEM arbitration error\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Page fault\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid APB ASID update\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VPR violation\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Secure carveout violation\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MTS carveout violation\00", [41 x i8] zeroinitializer }, align 32
@tegra_mc_status_names = dso_local constant { <{ [17 x ptr], [15 x ptr] }>, [32 x i8] } { <{ [17 x ptr], [15 x ptr] }> <{ [17 x ptr] [ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null, ptr null, ptr @.str.24], [15 x ptr] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EMEM decode error\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TrustZone violation\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Carveout violation\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SMMU translation error\00", [41 x i8] zeroinitializer }, align 32
@tegra_mc_error_names = dso_local constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr null, ptr null, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null, ptr @.str.28, ptr null], [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_tegra_mc__236_856_tegra_mc_init3 = internal global ptr @tegra_mc_init, section ".initcall3.init", align 4
@__UNIQUE_ID_author237 = internal constant [52 x i8] c"tegra_mc.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [59 x i8] c"tegra_mc.description=NVIDIA Tegra Memory Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [44 x i8] c"tegra_mc.file=drivers/memory/tegra/tegra-mc\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"tegra_mc.license=GPL v2\00", section ".modinfo", align 1
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,ram-code\00", [16 x i8] zeroinitializer }, align 32
@tegra_mc_setup_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 475, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no memory timings for RAM code %u registered\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_mc_setup_timings\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_mc_setup_timings._entry_ptr = internal global ptr @tegra_mc_setup_timings._entry, section ".printk_index", align 4
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@load_one_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timing %pOFn: failed to read rate\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"load_one_timing\00", [16 x i8] zeroinitializer }, align 32
@load_one_timing._entry_ptr = internal global ptr @load_one_timing._entry, section ".printk_index", align 4
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia,emem-configuration\00", [38 x i8] zeroinitializer }, align 32
@load_one_timing._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timing %pOFn: failed to read EMEM configuration\0A\00", [47 x i8] zeroinitializer }, align 32
@load_one_timing._entry_ptr.39 = internal global ptr @load_one_timing._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"secure \00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tegra30_mc_handle_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tegra30_mc_handle_irq = private unnamed_addr constant [22 x i8] c"tegra30_mc_handle_irq\00", align 1
@tegra30_mc_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.tegra30_mc_handle_irq, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: %s%s @%pa: %s (%s%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra30_mc_handle_irq._entry_ptr = internal global ptr @tegra30_mc_handle_irq._entry, section ".printk_index", align 4
@tegra_mc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_mc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.47, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_mc_of_match, ptr null, ptr null, ptr @tegra_mc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_mc_pm_ops, ptr null, ptr null }, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tegra-mc\00", [23 x i8] zeroinitializer }, align 32
@tegra_mc_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-mc-gart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_mc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-mc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_mc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-mc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_mc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-mc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_mc_soc }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_mc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_mc_suspend, ptr @tegra_mc_resume, ptr @tegra_mc_suspend, ptr @tegra_mc_resume, ptr @tegra_mc_suspend, ptr @tegra_mc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_mc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mc->lock\00", [22 x i8] zeroinitializer }, align 32
@tegra_mc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 737, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set DMA mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_mc_probe\00", [17 x i8] zeroinitializer }, align 32
@tegra_mc_probe._entry_ptr = internal global ptr @tegra_mc_probe._entry, section ".printk_index", align 4
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"missing client ID mask for this SoC\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_mc_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.3, i32 770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request IRQ#%u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_mc_probe._entry_ptr.54 = internal global ptr @tegra_mc_probe._entry.52, section ".printk_index", align 4
@tegra_mc_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.3, i32 778, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register reset controller: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_mc_probe._entry_ptr.57 = internal global ptr @tegra_mc_probe._entry.55, section ".printk_index", align 4
@tegra_mc_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.50, ptr @.str.3, i32 784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize interconnect: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_mc_probe._entry_ptr.60 = internal global ptr @tegra_mc_probe._entry.58, section ".printk_index", align 4
@tegra_mc_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.50, ptr @.str.3, i32 790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to probe SMMU: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_mc_probe._entry_ptr.63 = internal global ptr @tegra_mc_probe._entry.61, section ".printk_index", align 4
@tegra_mc_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.50, ptr @.str.3, i32 799, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to probe GART: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_mc_probe._entry_ptr.66 = internal global ptr @tegra_mc_probe._entry.64, section ".printk_index", align 4
@tegra_mc_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @tegra_mc_hotreset_assert, ptr @tegra_mc_hotreset_deassert, ptr @tegra_mc_hotreset_status }, [16 x i8] zeroinitializer }, align 32
@tegra_mc_hotreset_assert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to block %s DMA: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_mc_hotreset_assert\00", [39 x i8] zeroinitializer }, align 32
@tegra_mc_hotreset_assert._entry_ptr = internal global ptr @tegra_mc_hotreset_assert._entry, section ".printk_index", align 4
@tegra_mc_hotreset_assert._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to flush %s DMA\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_mc_hotreset_assert._entry_ptr.71 = internal global ptr @tegra_mc_hotreset_assert._entry.69, section ".printk_index", align 4
@tegra_mc_hotreset_assert._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to hot reset %s: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_mc_hotreset_assert._entry_ptr.74 = internal global ptr @tegra_mc_hotreset_assert._entry.72, section ".printk_index", align 4
@tegra_mc_hotreset_deassert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to deassert hot reset %s: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_mc_hotreset_deassert\00", [37 x i8] zeroinitializer }, align 32
@tegra_mc_hotreset_deassert._entry_ptr = internal global ptr @tegra_mc_hotreset_deassert._entry, section ".printk_index", align 4
@tegra_mc_hotreset_deassert._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to unblock %s DMA : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_mc_hotreset_deassert._entry_ptr.79 = internal global ptr @tegra_mc_hotreset_deassert._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#interconnect-cells\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Memory Controller\00", [46 x i8] zeroinitializer }, align 32
@tegra20_mc_soc = external dso_local constant %struct.tegra_mc_soc, align 4
@tegra30_mc_soc = external dso_local constant %struct.tegra_mc_soc, align 4
@tegra114_mc_soc = external dso_local constant %struct.tegra_mc_soc, align 4
@tegra124_mc_soc = external dso_local constant %struct.tegra_mc_soc, align 4
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 75, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"tegra_mc_reset_ops_common\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 151, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 328, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 484, i32 43 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 486, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 495, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 501, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"tegra30_mc_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 605, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 612, i32 9 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 613, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 614, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 615, i32 9 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 616, i32 9 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 617, i32 9 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 618, i32 9 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 619, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 620, i32 9 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 621, i32 9 }
@___asan_gen_.163 = private unnamed_addr constant [22 x i8] c"tegra_mc_status_names\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 611, i32 19 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 625, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 626, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 627, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 628, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"tegra_mc_error_names\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 624, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 460, i32 36 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 473, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 396, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 398, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 409, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 413, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 520, i32 53 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 540, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 542, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 545, i32 13 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 547, i32 13 }
@___asan_gen_.232 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 594, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [16 x i8] c"tegra_mc_driver\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 840, i32 31 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 842, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"tegra_mc_of_match\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 23, i32 34 }
@___asan_gen_.253 = private unnamed_addr constant [16 x i8] c"tegra_mc_pm_ops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 836, i32 32 }
@___asan_gen_.256 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 729, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 737, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 762, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 769, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 778, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 783, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 789, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 798, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant [19 x i8] c"tegra_mc_reset_ops\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 292, i32 39 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 203, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 213, i32 5 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 226, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 255, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 265, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 661, i32 40 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [29 x i8] c"../drivers/memory/tegra/mc.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 682, i32 15 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__initcall__kmod_tegra_mc__236_856_tegra_mc_init3, ptr @__ksymtab_devm_tegra_memory_controller_get, ptr @__ksymtab_tegra_mc_get_emem_device_count, ptr @__ksymtab_tegra_mc_probe_device, ptr @__ksymtab_tegra_mc_write_emem_configuration, ptr @load_one_timing._entry, ptr @load_one_timing._entry.37, ptr @load_one_timing._entry_ptr, ptr @load_one_timing._entry_ptr.39, ptr @tegra30_mc_handle_irq._entry, ptr @tegra30_mc_handle_irq._entry_ptr, ptr @tegra30_mc_probe._entry, ptr @tegra30_mc_probe._entry.12, ptr @tegra30_mc_probe._entry.9, ptr @tegra30_mc_probe._entry_ptr, ptr @tegra30_mc_probe._entry_ptr.11, ptr @tegra30_mc_probe._entry_ptr.14, ptr @tegra_mc_hotreset_assert._entry, ptr @tegra_mc_hotreset_assert._entry.69, ptr @tegra_mc_hotreset_assert._entry.72, ptr @tegra_mc_hotreset_assert._entry_ptr, ptr @tegra_mc_hotreset_assert._entry_ptr.71, ptr @tegra_mc_hotreset_assert._entry_ptr.74, ptr @tegra_mc_hotreset_deassert._entry, ptr @tegra_mc_hotreset_deassert._entry.77, ptr @tegra_mc_hotreset_deassert._entry_ptr, ptr @tegra_mc_hotreset_deassert._entry_ptr.79, ptr @tegra_mc_probe._entry, ptr @tegra_mc_probe._entry.52, ptr @tegra_mc_probe._entry.55, ptr @tegra_mc_probe._entry.58, ptr @tegra_mc_probe._entry.61, ptr @tegra_mc_probe._entry.64, ptr @tegra_mc_probe._entry_ptr, ptr @tegra_mc_probe._entry_ptr.54, ptr @tegra_mc_probe._entry_ptr.57, ptr @tegra_mc_probe._entry_ptr.60, ptr @tegra_mc_probe._entry_ptr.63, ptr @tegra_mc_probe._entry_ptr.66, ptr @tegra_mc_setup_timings._entry, ptr @tegra_mc_setup_timings._entry_ptr, ptr @tegra_mc_write_emem_configuration._entry, ptr @tegra_mc_write_emem_configuration._entry_ptr, ptr @.str, ptr @tegra_mc_reset_ops_common, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @tegra30_mc_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @tegra_mc_status_names, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @tegra_mc_error_names, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @tegra30_mc_handle_irq._rs, ptr @.str.45, ptr @.str.46, ptr @tegra_mc_driver, ptr @.str.47, ptr @tegra_mc_of_match, ptr @tegra_mc_pm_ops, ptr @tegra_mc_probe.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @tegra_mc_reset_ops, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_reset_ops_common to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_write_emem_configuration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_status_names to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_error_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_setup_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_handle_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_hotreset_assert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_hotreset_assert._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_hotreset_assert._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_hotreset_deassert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_mc_hotreset_deassert._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_tegra_memory_controller_get(ptr noundef %dev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call2 = call ptr @of_find_device_by_node(ptr noundef nonnull %4) #5
  call void @of_node_put(ptr noundef nonnull %4) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call2, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %call2, i32 0, i32 3
  call void @put_device(ptr noundef %dev10) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call.i29 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tegra_mc_devm_action_put_device, ptr noundef nonnull %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i30, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @put_device(ptr noundef %8) #5
  %9 = inttoptr i32 %call.i29 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi ptr [ %9, %if.then15 ], [ inttoptr (i32 -517 to ptr), %if.then9 ], [ inttoptr (i32 -2 to ptr), %of_parse_phandle.exit.thread ], [ inttoptr (i32 -2 to ptr), %of_parse_phandle.exit.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ], [ %6, %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_mc_devm_action_put_device(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @put_device(ptr noundef %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_mc_probe_device(ptr noundef %mc, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 6
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %entry
  %probe_device = getelementptr inbounds %struct.tegra_mc_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %probe_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %probe_device, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %5(ptr noundef %mc, ptr noundef %dev) #5
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_block_dma_common(ptr noundef %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %control = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 2
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !191
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %bit = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 5
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %5
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %10) #5, !srcloc !192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tegra_mc_dma_idling_common(ptr nocapture noundef readonly %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 3
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !191
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %bit = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 5
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_unblock_dma_common(ptr noundef %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %control = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 2
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !191
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %bit = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 5
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %10) #5, !srcloc !192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_reset_status_common(ptr nocapture noundef readonly %mc, ptr nocapture noundef readonly %rst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %control = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 2
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !191
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %bit = getelementptr inbounds %struct.tegra_mc_reset, ptr %rst, i32 0, i32 5
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %8 = lshr i32 %5, %7
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_mc_write_emem_configuration(ptr nocapture noundef readonly %mc, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_timings = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 9
  %0 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %timings = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 8
  %2 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tegra_mc_timing, ptr %3, i32 %i.036
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp2 = icmp eq i32 %5, %rate
  br i1 %cmp2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %for.cond7.preheader

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond7.preheader:                              ; preds = %for.end
  %soc = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 6
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %num_emem_regs37 = getelementptr inbounds %struct.tegra_mc_soc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %num_emem_regs37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_emem_regs37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp838.not = icmp eq i32 %9, 0
  br i1 %cmp838.not, label %for.cond7.preheader.cleanup_crit_edge, label %for.body9.lr.ph

for.cond7.preheader.cleanup_crit_edge:            ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %emem_data = getelementptr %struct.tegra_mc_timing, ptr %3, i32 %i.036, i32 1
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  br label %for.body9

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %rate) #8
  br label %cleanup

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %12 = phi ptr [ %7, %for.body9.lr.ph ], [ %25, %for.body9.for.body9_crit_edge ]
  %i.139 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc14, %for.body9.for.body9_crit_edge ]
  %13 = ptrtoint ptr %emem_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %emem_data, align 4
  %arrayidx10 = getelementptr i32, ptr %14, i32 %i.139
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10, align 4
  %emem_regs = getelementptr inbounds %struct.tegra_mc_soc, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %emem_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %emem_regs, align 4
  %arrayidx12 = getelementptr i32, ptr %18, i32 %i.139
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #5, !srcloc !192
  %inc14 = add nuw i32 %i.139, 1
  %24 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc, align 4
  %num_emem_regs = getelementptr inbounds %struct.tegra_mc_soc, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %num_emem_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_emem_regs, align 4
  %cmp8 = icmp ult i32 %inc14, %27
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.cleanup_crit_edge

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %do.end, %for.cond7.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond7.preheader.cleanup_crit_edge ], [ 0, %for.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_mc_get_emem_device_count(ptr nocapture noundef readonly %mc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !191
  %3 = lshr i32 %2, 24
  %conv2 = and i32 %3, 1
  %inc = add nuw nsw i32 %conv2, 1
  ret i32 %inc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra30_mc_probe(ptr nocapture noundef %mc) #0 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  %node_ram_code.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc, align 4
  %call = tail call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef nonnull @.str.6) #5
  %clk = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc, align 4
  %5 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %5) #8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !192
  %tick1.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 7
  %11 = ptrtoint ptr %tick1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tick1.i, align 4
  %conv.i = zext i32 %12 to i64
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %14) #5
  %conv2.i = zext i32 %call.i to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i32 0) #9, !srcloc !193
  %asmresult.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #9, !srcloc !194
  %asmresult10.i.i = extractvalue { i64, i32 } %16, 0
  %div1641.i = lshr i64 %asmresult10.i.i, 29
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 144
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !191
  %20 = and i32 %19, 16711679
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %22 = trunc i64 %div1641.i to i32
  %23 = and i32 %22, 511
  %conv191.i = or i32 %23, %21
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv191.i) #5
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %26, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %24) #5, !srcloc !192
  %soc.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 6
  %27 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc.i, align 4
  %num_clients10.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %num_clients10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_clients10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp19211.not.i = icmp eq i32 %30, 0
  br i1 %cmp19211.not.i, label %if.end.tegra_mc_setup_latency_allowance.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.tegra_mc_setup_latency_allowance.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra_mc_setup_latency_allowance.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %31 = phi ptr [ %52, %for.body.i.for.body.i_crit_edge ], [ %28, %if.end.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %la.i = getelementptr %struct.tegra_mc_client, ptr %33, i32 %i.012.i, i32 4, i32 1
  %34 = ptrtoint ptr %la.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %la.i, align 4
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %37, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #5, !srcloc !191
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %mask.i = getelementptr %struct.tegra_mc_client, ptr %33, i32 %i.012.i, i32 4, i32 1, i32 2
  %40 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr %struct.tegra_mc_client, ptr %33, i32 %i.012.i, i32 4, i32 1, i32 1
  %42 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %shift.i, align 4
  %shl201.i = shl i32 %41, %43
  %neg202.i = xor i32 %shl201.i, -1
  %and203.i = and i32 %39, %neg202.i
  %def.i = getelementptr %struct.tegra_mc_client, ptr %33, i32 %i.012.i, i32 4, i32 1, i32 3
  %44 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %def.i, align 4
  %and209.i = and i32 %45, %41
  %shl213.i = shl i32 %and209.i, %43
  %or214.i = or i32 %shl213.i, %and203.i
  %46 = ptrtoint ptr %la.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %la.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %or214.i) #5
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %50, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %48) #5, !srcloc !192
  %inc.i = add nuw i32 %i.012.i, 1
  %51 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %soc.i, align 4
  %num_clients.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %num_clients.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_clients.i, align 4
  %cmp192.i = icmp ult i32 %inc.i, %54
  br i1 %cmp192.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.tegra_mc_setup_latency_allowance.exit_crit_edge

for.body.i.tegra_mc_setup_latency_allowance.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra_mc_setup_latency_allowance.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

tegra_mc_setup_latency_allowance.exit:            ; preds = %for.body.i.tegra_mc_setup_latency_allowance.exit_crit_edge, %if.end.tegra_mc_setup_latency_allowance.exit_crit_edge
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %56, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 16777216) #5, !srcloc !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node_ram_code.i) #5
  %57 = ptrtoint ptr %node_ram_code.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %node_ram_code.i, align 4, !annotation !195
  %call.i38 = tail call i32 @tegra_read_ram_code() #5
  %num_timings.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 9
  %58 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %num_timings.i, align 4
  %59 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mc, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 27
  %61 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %of_node.i, align 8
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %62, ptr noundef null) #5
  %cmp.not54.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not54.i, label %tegra_mc_setup_latency_allowance.exit.for.end.i_crit_edge, label %tegra_mc_setup_latency_allowance.exit.for.body.i39_crit_edge

tegra_mc_setup_latency_allowance.exit.for.body.i39_crit_edge: ; preds = %tegra_mc_setup_latency_allowance.exit
  br label %for.body.i39

tegra_mc_setup_latency_allowance.exit.for.end.i_crit_edge: ; preds = %tegra_mc_setup_latency_allowance.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i39:                                     ; preds = %for.inc.i.for.body.i39_crit_edge, %tegra_mc_setup_latency_allowance.exit.for.body.i39_crit_edge
  %node.055.i = phi ptr [ %call10.i, %for.inc.i.for.body.i39_crit_edge ], [ %call1.i, %tegra_mc_setup_latency_allowance.exit.for.body.i39_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.055.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %node_ram_code.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i39.for.inc.i_crit_edge

for.body.i39.for.inc.i_crit_edge:                 ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i39
  %63 = ptrtoint ptr %node_ram_code.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %node_ram_code.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %call.i38)
  %cmp3.not.i = icmp eq i32 %64, %call.i38
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i.i31.i = call ptr @of_get_next_child(ptr noundef nonnull %node.055.i, ptr noundef null) #5
  %cmp.not5.i.i.i = icmp eq ptr %call.i.i31.i, null
  br i1 %cmp.not5.i.i.i, label %if.end.i.of_get_child_count.exit.i.i_crit_edge, label %if.end.i.for.body.i.i.i_crit_edge

if.end.i.for.body.i.i.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i.i.i

if.end.i.of_get_child_count.exit.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_get_child_count.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.for.body.i.i.i_crit_edge
  %num.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i.i_crit_edge ]
  %child.06.i.i.i = phi ptr [ %call1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i31.i, %if.end.i.for.body.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %num.07.i.i.i, 1
  %call1.i.i.i = call ptr @of_get_next_child(ptr noundef nonnull %node.055.i, ptr noundef nonnull %child.06.i.i.i) #5
  %cmp.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_get_child_count.exit.i.i

of_get_child_count.exit.i.i:                      ; preds = %for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge, %if.end.i.of_get_child_count.exit.i.i_crit_edge
  %num.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.of_get_child_count.exit.i.i_crit_edge ], [ %inc.i.i.i, %for.body.i.i.i.of_get_child_count.exit.i.i_crit_edge ]
  %65 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i.i.i, i32 8) #5
  %66 = extractvalue { i32, i1 } %65, 1
  br i1 %66, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !196

devm_kcalloc.exit.thread.i.i:                     ; preds = %of_get_child_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %timings27.i.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 8
  %67 = ptrtoint ptr %timings27.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %timings27.i.i, align 4
  br label %do.end20

devm_kcalloc.exit.i.i:                            ; preds = %of_get_child_count.exit.i.i
  %68 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mc, align 4
  %70 = extractvalue { i32, i1 } %65, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %69, i32 noundef %70, i32 noundef 3520) #5
  %timings.i.i = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 8
  %71 = ptrtoint ptr %timings.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call5.i.i.i.i, ptr %timings.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %devm_kcalloc.exit.i.i.do.end20_crit_edge, label %if.end.i.i

devm_kcalloc.exit.i.i.do.end20_crit_edge:         ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

if.end.i.i:                                       ; preds = %devm_kcalloc.exit.i.i
  %72 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %num.0.lcssa.i.i.i, ptr %num_timings.i, align 4
  %call3.i.i = call ptr @of_get_next_child(ptr noundef nonnull %node.055.i, ptr noundef null) #5
  %cmp.not47.i.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.not47.i.i, label %if.end.i.i.load_timings.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.load_timings.exit.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %load_timings.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.049.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %child.048.i.i = phi ptr [ %call9.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call3.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %73 = ptrtoint ptr %timings.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %timings.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #5
  %75 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !195
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.048.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull %tmp.i.i.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i = icmp sgt i32 %call.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.34, ptr noundef nonnull %child.048.i.i) #8
  br label %if.then7.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.tegra_mc_timing, ptr %74, i32 %i.049.i.i
  %78 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tmp.i.i.i, align 4
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx.i.i, align 4
  %81 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %soc.i, align 4
  %num_emem_regs.i.i.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %num_emem_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_emem_regs.i.i.i, align 4
  %85 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %84, i32 4) #5
  %86 = extractvalue { i32, i1 } %85, 1
  br i1 %86, label %devm_kcalloc.exit.thread.i.i.i, label %devm_kcalloc.exit.i.i.i, !prof !196

devm_kcalloc.exit.thread.i.i.i:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %emem_data33.i.i.i = getelementptr %struct.tegra_mc_timing, ptr %74, i32 %i.049.i.i, i32 1
  %87 = ptrtoint ptr %emem_data33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %emem_data33.i.i.i, align 4
  br label %if.then7.i.i

devm_kcalloc.exit.i.i.i:                          ; preds = %if.end.i.i.i
  %88 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mc, align 4
  %90 = extractvalue { i32, i1 } %85, 0
  %call5.i.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %89, i32 noundef %90, i32 noundef 3520) #5
  %emem_data.i.i.i = getelementptr %struct.tegra_mc_timing, ptr %74, i32 %i.049.i.i, i32 1
  %91 = ptrtoint ptr %emem_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call5.i.i.i.i.i, ptr %emem_data.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %call5.i.i.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %devm_kcalloc.exit.i.i.i.if.then7.i.i_crit_edge, label %if.end6.i.i.i

devm_kcalloc.exit.i.i.i.if.then7.i.i_crit_edge:   ; preds = %devm_kcalloc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i.i

if.end6.i.i.i:                                    ; preds = %devm_kcalloc.exit.i.i.i
  %92 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %soc.i, align 4
  %num_emem_regs9.i.i.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %num_emem_regs9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_emem_regs9.i.i.i, align 4
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.048.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull %call5.i.i.i.i.i, i32 noundef %95, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool11.not.i.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool11.not.i.i.i, label %for.inc.i.i, label %do.end15.i.i.i

do.end15.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.38, ptr noundef nonnull %child.048.i.i) #8
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %do.end15.i.i.i, %devm_kcalloc.exit.i.i.i.if.then7.i.i_crit_edge, %devm_kcalloc.exit.thread.i.i.i, %do.end.i.i.i
  %retval.0.i.ph.i.i = phi i32 [ -12, %devm_kcalloc.exit.thread.i.i.i ], [ %call.i.i.i.i, %do.end15.i.i.i ], [ %call.i.i.i.i.i, %do.end.i.i.i ], [ -12, %devm_kcalloc.exit.i.i.i.if.then7.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #5
  call void @of_node_put(ptr noundef nonnull %child.048.i.i) #5
  br label %do.end20

for.inc.i.i:                                      ; preds = %if.end6.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #5
  %inc.i.i = add i32 %i.049.i.i, 1
  %call9.i.i = call ptr @of_get_next_child(ptr noundef nonnull %node.055.i, ptr noundef nonnull %child.048.i.i) #5
  %cmp.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.load_timings.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.load_timings.exit.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %load_timings.exit.i

load_timings.exit.i:                              ; preds = %for.inc.i.i.load_timings.exit.i_crit_edge, %if.end.i.i.load_timings.exit.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %node.055.i) #5
  br label %for.end.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i39.for.inc.i_crit_edge
  %98 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mc, align 4
  %of_node9.i = getelementptr inbounds %struct.device, ptr %99, i32 0, i32 27
  %100 = ptrtoint ptr %of_node9.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %of_node9.i, align 8
  %call10.i = call ptr @of_get_next_child(ptr noundef %101, ptr noundef nonnull %node.055.i) #5
  %cmp.not.i = icmp eq ptr %call10.i, null
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i39_crit_edge

for.inc.i.for.body.i39_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i39

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %load_timings.exit.i, %tegra_mc_setup_latency_allowance.exit.for.end.i_crit_edge
  %102 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_timings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp12.i = icmp eq i32 %103, 0
  br i1 %cmp12.i, label %do.end.i, label %for.end.i.tegra_mc_setup_timings.exit.thread_crit_edge

for.end.i.tegra_mc_setup_timings.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra_mc_setup_timings.exit.thread

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mc, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %105, ptr noundef nonnull @.str.30, i32 noundef %call.i38) #8
  br label %tegra_mc_setup_timings.exit.thread

tegra_mc_setup_timings.exit.thread:               ; preds = %do.end.i, %for.end.i.tegra_mc_setup_timings.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node_ram_code.i) #5
  br label %cleanup

do.end20:                                         ; preds = %if.then7.i.i, %devm_kcalloc.exit.i.i.do.end20_crit_edge, %devm_kcalloc.exit.thread.i.i
  %retval.0.i.ph.i = phi i32 [ -12, %devm_kcalloc.exit.thread.i.i ], [ -12, %devm_kcalloc.exit.i.i.do.end20_crit_edge ], [ %retval.0.i.ph.i.i, %if.then7.i.i ]
  call void @of_node_put(ptr noundef nonnull %node.055.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node_ram_code.i) #5
  %106 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.ph.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %tegra_mc_setup_timings.exit.thread, %do.end
  %retval.0 = phi i32 [ %8, %do.end ], [ %retval.0.i.ph.i, %do.end20 ], [ 0, %tegra_mc_setup_timings.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_mc_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %status = alloca i32, align 4
  %addr = alloca i32, align 4
  %perm = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !191
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %soc = getelementptr inbounds %struct.tegra_mc, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %intmask = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %intmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intmask, align 4
  %and = and i32 %7, %3
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1)
  %cmp107 = icmp ult i32 %call1, 32
  br i1 %cmp107, label %for.body.lr.ph, label %if.end.for.end72_crit_edge

if.end.for.end72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end72

for.body.lr.ph:                                   ; preds = %if.end
  %9 = getelementptr inbounds [7 x i8], ptr %perm, i32 0, i32 1
  %10 = getelementptr inbounds [7 x i8], ptr %perm, i32 0, i32 2
  %11 = getelementptr inbounds [7 x i8], ptr %perm, i32 0, i32 3
  %12 = getelementptr inbounds [7 x i8], ptr %perm, i32 0, i32 4
  %13 = getelementptr inbounds [7 x i8], ptr %perm, i32 0, i32 5
  %14 = getelementptr inbounds [7 x i8], ptr %perm, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %do.end69.for.body_crit_edge, %for.body.lr.ph
  %bit.0108 = phi i32 [ %call1, %for.body.lr.ph ], [ %call71, %do.end69.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @tegra_mc_status_names, i32 0, i32 %bit.0108
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %16, null
  %..str.40 = select i1 %tobool2.not, ptr @.str.40, ptr %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #5
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %perm) #5
  %18 = call ptr @memset(ptr %perm, i32 255, i32 7)
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 8
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !191
  %22 = call i32 @llvm.bswap.i32(i32 %21) #5
  %and4 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %.str.42..str.41 = select i1 %tobool5.not, ptr @.str.42, ptr @.str.41
  %and8 = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %secure.0 = select i1 %tobool9.not, ptr @.str.44, ptr @.str.43
  %23 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc, align 4
  %num_clients = getelementptr inbounds %struct.tegra_mc_soc, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %num_clients to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_clients, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp18105.not = icmp eq i32 %26, 0
  br i1 %cmp18105.not, label %for.body.for.end_crit_edge, label %for.body20.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body20.lr.ph:                                 ; preds = %for.body
  %client_id_mask = getelementptr inbounds %struct.tegra_mc_soc, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %client_id_mask to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %client_id_mask, align 4
  %29 = trunc i32 %22 to i8
  %conv15 = and i8 %28, %29
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %24, align 4
  %conv24 = zext i8 %conv15 to i32
  br label %for.body20

for.body20:                                       ; preds = %for.inc.for.body20_crit_edge, %for.body20.lr.ph
  %i.0106 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc, %for.inc.for.body20_crit_edge ]
  %arrayidx22 = getelementptr %struct.tegra_mc_client, ptr %31, i32 %i.0106
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv24)
  %cmp25 = icmp eq i32 %33, %conv24
  br i1 %cmp25, label %if.then27, label %for.inc

if.then27:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr %struct.tegra_mc_client, ptr %31, i32 %i.0106, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body20
  %inc = add nuw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body20_crit_edge

for.inc.for.body20_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then27, %for.body.for.end_crit_edge
  %client.0 = phi ptr [ %35, %if.then27 ], [ @.str.40, %for.body.for.end_crit_edge ], [ @.str.40, %for.inc.for.end_crit_edge ]
  %and32 = and i32 %22, 1879048192
  %shr = lshr exact i32 %and32, 28
  %arrayidx34 = getelementptr [8 x ptr], ptr @tegra_mc_error_names, i32 0, i32 %shr
  %36 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and32)
  %cond75 = icmp eq i32 %and32, 1610612736
  br i1 %cond75, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %perm to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 32, ptr %perm, align 1
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 91, ptr %9, align 1
  %and38 = and i32 %22, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %. = select i1 %tobool39.not, i8 45, i8 82
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %., ptr %10, align 1
  %and45 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %storemerge98 = select i1 %tobool46.not, i8 45, i8 87
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %storemerge98, ptr %11, align 1
  %and52 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %storemerge99 = select i1 %tobool53.not, i8 83, i8 45
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %storemerge99, ptr %12, align 1
  %43 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 93, ptr %13, align 1
  %44 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %14, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %perm to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %perm, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %47, i32 12
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #5, !srcloc !191
  %49 = call i32 @llvm.bswap.i32(i32 %48) #5
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr, align 4
  %or = or i32 %51, %49
  store i32 %or, ptr %addr, align 4
  %call63 = call i32 @___ratelimit(ptr noundef nonnull @tegra30_mc_handle_irq._rs, ptr noundef nonnull @__func__.tegra30_mc_handle_irq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %sw.epilog.do.end69_crit_edge, label %do.end

sw.epilog.do.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end69

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.46, ptr noundef %client.0, ptr noundef nonnull %secure.0, ptr noundef nonnull %.str.42..str.41, ptr noundef nonnull %addr, ptr noundef %..str.40, ptr noundef %37, ptr noundef nonnull %perm) #8
  br label %do.end69

do.end69:                                         ; preds = %do.end, %sw.epilog.do.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %perm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #5
  %add = add i32 %bit.0108, 1
  %call71 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef %add) #5
  %cmp = icmp ult i32 %call71, 32
  br i1 %cmp, label %do.end69.for.body_crit_edge, label %do.end69.for.end72_crit_edge

do.end69.for.end72_crit_edge:                     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end72

do.end69.for.body_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end72:                                        ; preds = %do.end69.for.end72_crit_edge, %if.end.for.end72_crit_edge
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #5
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #5, !srcloc !192
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end72 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_mc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 188, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.48, ptr noundef nonnull @tegra_mc_probe.__key, i16 noundef signext 3) #5
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %soc = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %soc, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %num_address_bits = getelementptr inbounds %struct.tegra_mc_soc, ptr %call3, i32 0, i32 4
  %3 = ptrtoint ptr %num_address_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_address_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp eq i32 %4, 64
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sh_prom = zext i32 %4 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.end.cond.end_crit_edge ]
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %5 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %dma_coerce_mask_and_coherent.exit

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %cond) #5
  br label %if.end17

dma_coerce_mask_and_coherent.exit:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp11 = icmp slt i32 %call.i.i, 0
  br i1 %cmp11, label %do.end15, label %dma_coerce_mask_and_coherent.exit.if.end17_crit_edge

dma_coerce_mask_and_coherent.exit.if.end17_crit_edge: ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end15:                                         ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %call.i.i) #8
  br label %cleanup

if.end17:                                         ; preds = %dma_coerce_mask_and_coherent.exit.if.end17_crit_edge, %dma_coerce_mask_and_coherent.exit.thread
  %tick = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %tick to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 30, ptr %tick, align 4
  %call18 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call20 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call18) #5
  %regs = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call20, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %call27 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.6, ptr noundef null) #5
  %debugfs = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %debugfs, align 4
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %tobool29.not = icmp eq ptr %13, null
  br i1 %tobool29.not, label %if.end26.if.end41_crit_edge, label %land.lhs.true

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end26
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool32.not = icmp eq ptr %15, null
  br i1 %tobool32.not, label %land.lhs.true.if.end41_crit_edge, label %if.then33

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then33:                                        ; preds = %land.lhs.true
  %call37 = tail call i32 %15(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then33.cleanup_crit_edge, label %if.then33.if.end41_crit_edge

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.then33.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %16 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc, align 4
  %ops43 = getelementptr inbounds %struct.tegra_mc_soc, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops43, align 4
  %tobool44.not = icmp eq ptr %19, null
  br i1 %tobool44.not, label %if.end41.if.end100_crit_edge, label %land.lhs.true45

if.end41.if.end100_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

land.lhs.true45:                                  ; preds = %if.end41
  %handle_irq = getelementptr inbounds %struct.tegra_mc_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle_irq, align 4
  %tobool48.not = icmp eq ptr %21, null
  br i1 %tobool48.not, label %land.lhs.true45.if.end100_crit_edge, label %if.then49

land.lhs.true45.if.end100_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then49:                                        ; preds = %land.lhs.true45
  %call50 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call50, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp52 = icmp slt i32 %call50, 0
  br i1 %cmp52, label %if.then49.cleanup_crit_edge, label %if.end55

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %if.then49
  %23 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc, align 4
  %client_id_mask = getelementptr inbounds %struct.tegra_mc_soc, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %client_id_mask to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %client_id_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool57.not = icmp eq i8 %26, 0
  br i1 %tobool57.not, label %do.end70, label %if.end55.if.end76_crit_edge, !prof !196

if.end55.if.end76_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

do.end70:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 762, i32 noundef 9, ptr noundef nonnull @.str.51) #5
  br label %if.end76

if.end76:                                         ; preds = %do.end70, %if.end55.if.end76_crit_edge
  %27 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc, align 4
  %intmask = getelementptr inbounds %struct.tegra_mc_soc, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %intmask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %intmask, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #5, !srcloc !192
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %36 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %soc, align 4
  %ops87 = getelementptr inbounds %struct.tegra_mc_soc, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %ops87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops87, align 4
  %handle_irq88 = getelementptr inbounds %struct.tegra_mc_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %handle_irq88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle_irq88, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end76.dev_name.exit_crit_edge

if.end76.dev_name.exit_crit_edge:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end76.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %45, %if.end.i ], [ %43, %if.end76.dev_name.exit_crit_edge ]
  %call.i238 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %35, ptr noundef %41, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp92 = icmp slt i32 %call.i238, 0
  br i1 %cmp92, label %do.end96, label %dev_name.exit.if.end100_crit_edge

dev_name.exit.if.end100_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

do.end96:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %47, i32 noundef %call.i238) #8
  br label %cleanup

if.end100:                                        ; preds = %dev_name.exit.if.end100_crit_edge, %land.lhs.true45.if.end100_crit_edge, %if.end41.if.end100_crit_edge
  %48 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %soc, align 4
  %reset_ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %reset_ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reset_ops, align 4
  %tobool102.not = icmp eq ptr %51, null
  br i1 %tobool102.not, label %if.end100.if.end112_crit_edge, label %if.then103

if.end100.if.end112_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then103:                                       ; preds = %if.end100
  %reset.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 10
  %52 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @tegra_mc_reset_ops, ptr %reset.i, align 4
  %owner.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 10, i32 1
  %53 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %owner.i, align 4
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node.i, align 8
  %of_node3.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 10, i32 5
  %58 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %of_node3.i, align 4
  %of_reset_n_cells.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 10, i32 6
  %59 = ptrtoint ptr %of_reset_n_cells.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %of_reset_n_cells.i, align 4
  %num_resets.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %49, i32 0, i32 11
  %60 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_resets.i, align 4
  %nr_resets.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 10, i32 8
  %62 = ptrtoint ptr %nr_resets.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %nr_resets.i, align 4
  %call.i239 = tail call i32 @reset_controller_register(ptr noundef %reset.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %cmp105 = icmp slt i32 %call.i239, 0
  br i1 %cmp105, label %do.end109, label %if.then103.if.end112_crit_edge

if.then103.if.end112_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

do.end109:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %call.i239) #8
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.then103.if.end112_crit_edge, %if.end100.if.end112_crit_edge
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %call.i240 = tail call zeroext i1 @device_property_present(ptr noundef %64, ptr noundef nonnull @.str.80) #5
  br i1 %call.i240, label %lor.lhs.false.i, label %if.end112.if.end120_crit_edge

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

lor.lhs.false.i:                                  ; preds = %if.end112
  %65 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %soc, align 4
  %icc_ops.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %icc_ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %icc_ops.i, align 4
  %tobool.not.i242 = icmp eq ptr %68, null
  br i1 %tobool.not.i242, label %lor.lhs.false.i.if.end120_crit_edge, label %if.end.i243

lor.lhs.false.i.if.end120_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.end.i243:                                      ; preds = %lor.lhs.false.i
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %provider.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 11
  %dev2.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 11, i32 8
  %71 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %dev2.i, align 4
  %data.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 11, i32 11
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %provider.i, ptr %data.i, align 4
  %73 = ptrtoint ptr %icc_ops.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %icc_ops.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %set8.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 11, i32 2
  %77 = ptrtoint ptr %set8.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %set8.i, align 4
  %78 = load ptr, ptr %icc_ops.i, align 4
  %aggregate.i = getelementptr inbounds %struct.tegra_mc_icc_ops, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %aggregate.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %aggregate.i, align 4
  %aggregate12.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 11, i32 3
  %81 = ptrtoint ptr %aggregate12.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %aggregate12.i, align 4
  %82 = load ptr, ptr %icc_ops.i, align 4
  %xlate_extended.i = getelementptr inbounds %struct.tegra_mc_icc_ops, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %xlate_extended.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xlate_extended.i, align 4
  %xlate_extended16.i = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 11, i32 7
  %85 = ptrtoint ptr %xlate_extended16.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %xlate_extended16.i, align 4
  %call18.i = tail call i32 @icc_provider_add(ptr noundef %provider.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end.i243.tegra_mc_interconnect_setup.exit_crit_edge

if.end.i243.tegra_mc_interconnect_setup.exit_crit_edge: ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra_mc_interconnect_setup.exit

if.end21.i:                                       ; preds = %if.end.i243
  %call22.i = tail call ptr @icc_node_create(i32 noundef 1000) #5
  %cmp.i.i244 = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i244, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %call22.i to i32
  br label %del_provider.i

if.end26.i:                                       ; preds = %if.end21.i
  %name.i = getelementptr inbounds %struct.icc_node, ptr %call22.i, i32 0, i32 1
  %87 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.81, ptr %name.i, align 4
  tail call void @icc_node_add(ptr noundef %call22.i, ptr noundef %provider.i) #5
  %call28.i = tail call i32 @icc_link_create(ptr noundef %call22.i, i32 noundef 1001) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %for.cond.preheader.i, label %if.end26.i.remove_nodes.i_crit_edge

if.end26.i.remove_nodes.i_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_nodes.i

for.cond.preheader.i:                             ; preds = %if.end26.i
  %88 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %soc, align 4
  %num_clients92.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %num_clients92.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_clients92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp93.not.i = icmp eq i32 %91, 0
  br i1 %cmp93.not.i, label %for.cond.preheader.i.if.end120_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end120_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

for.cond.i:                                       ; preds = %if.end38.i
  %inc.i = add nuw i32 %i.094.i, 1
  %92 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %soc, align 4
  %num_clients.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %num_clients.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_clients.i, align 4
  %cmp.i245 = icmp ult i32 %inc.i, %95
  br i1 %cmp.i245, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end120_crit_edge

for.cond.i.if.end120_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %96 = phi ptr [ %93, %for.cond.i.for.body.i_crit_edge ], [ %89, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.094.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %arrayidx.i = getelementptr %struct.tegra_mc_client, ptr %98, i32 %i.094.i
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i, align 4
  %call34.i = tail call ptr @icc_node_create(i32 noundef %100) #5
  %cmp.i90.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90.i, label %if.then36.i, label %if.end38.i

if.then36.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %call34.i to i32
  br label %remove_nodes.i

if.end38.i:                                       ; preds = %for.body.i
  %102 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %soc, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %name42.i = getelementptr %struct.tegra_mc_client, ptr %105, i32 %i.094.i, i32 1
  %106 = ptrtoint ptr %name42.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name42.i, align 4
  %name43.i = getelementptr inbounds %struct.icc_node, ptr %call34.i, i32 0, i32 1
  %108 = ptrtoint ptr %name43.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %name43.i, align 4
  tail call void @icc_node_add(ptr noundef %call34.i, ptr noundef %provider.i) #5
  %call45.i = tail call i32 @icc_link_create(ptr noundef %call34.i, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %for.cond.i, label %if.end38.i.remove_nodes.i_crit_edge

if.end38.i.remove_nodes.i_crit_edge:              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_nodes.i

remove_nodes.i:                                   ; preds = %if.end38.i.remove_nodes.i_crit_edge, %if.then36.i, %if.end26.i.remove_nodes.i_crit_edge
  %err.0.i = phi i32 [ %call28.i, %if.end26.i.remove_nodes.i_crit_edge ], [ %101, %if.then36.i ], [ %call45.i, %if.end38.i.remove_nodes.i_crit_edge ]
  %call50.i = tail call i32 @icc_nodes_remove(ptr noundef %provider.i) #5
  br label %del_provider.i

del_provider.i:                                   ; preds = %remove_nodes.i, %if.then24.i
  %err.1.i = phi i32 [ %86, %if.then24.i ], [ %err.0.i, %remove_nodes.i ]
  %call52.i = tail call i32 @icc_provider_del(ptr noundef %provider.i) #5
  br label %tegra_mc_interconnect_setup.exit

tegra_mc_interconnect_setup.exit:                 ; preds = %del_provider.i, %if.end.i243.tegra_mc_interconnect_setup.exit_crit_edge
  %retval.0.i246 = phi i32 [ %err.1.i, %del_provider.i ], [ %call18.i, %if.end.i243.tegra_mc_interconnect_setup.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i246)
  %cmp114 = icmp slt i32 %retval.0.i246, 0
  br i1 %cmp114, label %do.end118, label %tegra_mc_interconnect_setup.exit.if.end120_crit_edge

tegra_mc_interconnect_setup.exit.if.end120_crit_edge: ; preds = %tegra_mc_interconnect_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

do.end118:                                        ; preds = %tegra_mc_interconnect_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i246) #8
  br label %if.end120

if.end120:                                        ; preds = %do.end118, %tegra_mc_interconnect_setup.exit.if.end120_crit_edge, %for.cond.i.if.end120_crit_edge, %for.cond.preheader.i.if.end120_crit_edge, %lor.lhs.false.i.if.end120_crit_edge, %if.end112.if.end120_crit_edge
  %109 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %soc, align 4
  %smmu = getelementptr inbounds %struct.tegra_mc_soc, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %smmu, align 4
  %tobool122.not = icmp eq ptr %112, null
  br i1 %tobool122.not, label %if.end120.if.end140_crit_edge, label %if.then123

if.end120.if.end140_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

if.then123:                                       ; preds = %if.end120
  %call127 = tail call ptr @tegra_smmu_probe(ptr noundef %dev, ptr noundef nonnull %112, ptr noundef nonnull %call.i) #5
  %smmu128 = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 1
  %113 = ptrtoint ptr %smmu128 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call127, ptr %smmu128, align 4
  %cmp.i247 = icmp ugt ptr %call127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %do.end134, label %if.then123.if.end140_crit_edge

if.then123.if.end140_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.end134:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %call127 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %114) #8
  %115 = ptrtoint ptr %smmu128 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %smmu128, align 4
  br label %if.end140

if.end140:                                        ; preds = %do.end134, %if.then123.if.end140_crit_edge, %if.end120.if.end140_crit_edge
  %116 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %soc, align 4
  %smmu142 = getelementptr inbounds %struct.tegra_mc_soc, ptr %117, i32 0, i32 7
  %118 = ptrtoint ptr %smmu142 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %smmu142, align 4
  %tobool143.not = icmp eq ptr %119, null
  br i1 %tobool143.not, label %if.then144, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then144:                                       ; preds = %if.end140
  %call146 = tail call ptr @tegra_gart_probe(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  %gart = getelementptr inbounds %struct.tegra_mc, ptr %call.i, i32 0, i32 2
  %120 = ptrtoint ptr %gart to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call146, ptr %gart, align 4
  %cmp.i248 = icmp ugt ptr %call146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %do.end152, label %if.then144.cleanup_crit_edge

if.then144.cleanup_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end152:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %call146 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %121) #8
  %122 = ptrtoint ptr %gart to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %gart, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end152, %if.then144.cleanup_crit_edge, %if.end140.cleanup_crit_edge, %do.end96, %if.then49.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.then23, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end15 ], [ %8, %if.then23 ], [ %call.i238, %do.end96 ], [ -12, %entry.cleanup_crit_edge ], [ %call37, %if.then33.cleanup_crit_edge ], [ %call50, %if.then49.cleanup_crit_edge ], [ 0, %if.then144.cleanup_crit_edge ], [ 0, %do.end152 ], [ 0, %if.end140.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_mc_sync_state(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 11, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %cmp = icmp eq ptr %3, %dev
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @icc_sync_state(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_smmu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_gart_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_hotreset_assert(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -40
  %soc.i = getelementptr i8, ptr %rcdev, i32 -16
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %num_resets.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_resets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %resets.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %resets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resets.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id2.i = getelementptr %struct.tegra_mc_reset, ptr %5, i32 %i.014.i, i32 1
  %6 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %id)
  %cmp3.i = icmp eq i32 %7, %id
  br i1 %cmp3.i, label %tegra_mc_reset_find.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tegra_mc_reset_find.exit:                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.tegra_mc_reset, ptr %5, i32 %i.014.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %tegra_mc_reset_find.exit.cleanup_crit_edge, label %if.end

tegra_mc_reset_find.exit.cleanup_crit_edge:       ; preds = %tegra_mc_reset_find.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %tegra_mc_reset_find.exit
  %reset_ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %reset_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_ops, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reset_status = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %reset_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_status, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end4.if.end12_crit_edge, label %if.then6

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %call8 = tail call i32 %11(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %block_dma = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %block_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %block_dma, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end12.if.end20_crit_edge, label %if.then14

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then14:                                        ; preds = %if.end12
  %call16 = tail call i32 %13(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end20_crit_edge, label %do.end

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.67, ptr noundef %17, i32 noundef %call16) #8
  br label %cleanup

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %dma_idling = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %dma_idling to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_idling, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %if.end20.if.end33_crit_edge, label %while.cond.preheader

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

while.cond.preheader:                             ; preds = %if.end20
  %20 = ptrtoint ptr %dma_idling to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_idling, align 4
  %call2488 = tail call zeroext i1 %21(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i) #5
  br i1 %call2488, label %while.cond.preheader.if.end33_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end33_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %retries.089 = phi i32 [ %dec, %if.end32.while.body_crit_edge ], [ 500, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.089)
  %tobool25.not = icmp eq i32 %retries.089, 0
  br i1 %tobool25.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.70, ptr noundef %25) #8
  br label %cleanup

if.end32:                                         ; preds = %while.body
  %dec = add nsw i32 %retries.089, -1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %26 = ptrtoint ptr %dma_idling to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_idling, align 4
  %call24 = tail call zeroext i1 %27(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i) #5
  br i1 %call24, label %if.end32.if.end33_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end32.if.end33_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33:                                         ; preds = %if.end32.if.end33_crit_edge, %while.cond.preheader.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %9, align 4
  %tobool34.not = icmp eq ptr %29, null
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  %call37 = tail call i32 %29(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then35.cleanup_crit_edge, label %do.end42

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end42:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.73, ptr noundef %33, i32 noundef %call37) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.then35.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end29, %do.end, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tegra_mc_reset_find.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.end ], [ -16, %do.end29 ], [ %call37, %do.end42 ], [ -19, %tegra_mc_reset_find.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.then35.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_hotreset_deassert(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -40
  %soc.i = getelementptr i8, ptr %rcdev, i32 -16
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %num_resets.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_resets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %resets.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %resets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resets.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id2.i = getelementptr %struct.tegra_mc_reset, ptr %5, i32 %i.014.i, i32 1
  %6 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %id)
  %cmp3.i = icmp eq i32 %7, %id
  br i1 %cmp3.i, label %tegra_mc_reset_find.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tegra_mc_reset_find.exit:                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.tegra_mc_reset, ptr %5, i32 %i.014.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %tegra_mc_reset_find.exit.cleanup_crit_edge, label %if.end

tegra_mc_reset_find.exit.cleanup_crit_edge:       ; preds = %tegra_mc_reset_find.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %tegra_mc_reset_find.exit
  %reset_ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %reset_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_ops, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %hotreset_deassert = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hotreset_deassert to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hotreset_deassert, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end4.if.end12_crit_edge, label %if.then6

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %call8 = tail call i32 %11(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %do.end

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.75, ptr noundef %15, i32 noundef %call8) #8
  br label %cleanup

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %unblock_dma = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %unblock_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unblock_dma, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  %call16 = tail call i32 %17(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.cleanup_crit_edge, label %do.end21

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end21:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.78, ptr noundef %21, i32 noundef %call16) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.then14.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %tegra_mc_reset_find.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call16, %do.end21 ], [ -19, %tegra_mc_reset_find.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_hotreset_status(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -40
  %soc.i = getelementptr i8, ptr %rcdev, i32 -16
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %num_resets.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_resets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %resets.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %resets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resets.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id2.i = getelementptr %struct.tegra_mc_reset, ptr %5, i32 %i.014.i, i32 1
  %6 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %id)
  %cmp3.i = icmp eq i32 %7, %id
  br i1 %cmp3.i, label %tegra_mc_reset_find.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tegra_mc_reset_find.exit:                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.tegra_mc_reset, ptr %5, i32 %i.014.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %tegra_mc_reset_find.exit.cleanup_crit_edge, label %if.end

tegra_mc_reset_find.exit.cleanup_crit_edge:       ; preds = %tegra_mc_reset_find.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %tegra_mc_reset_find.exit
  %reset_ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %reset_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_ops, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %reset_status = getelementptr inbounds %struct.tegra_mc_reset_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %reset_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_status, align 4
  %call5 = tail call i32 %11(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %tegra_mc_reset_find.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -19, %tegra_mc_reset_find.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_node_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_link_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_nodes_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr inbounds %struct.tegra_mc_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 %7(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_mc_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %resume = getelementptr inbounds %struct.tegra_mc_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resume, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 %7(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !83, !84, !85, !86, !88, !90, !91, !92, !93, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !115, !116, !118, !120, !122, !123, !125, !126, !127, !128, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/memory/tegra/mc.c", i32 75, i32 38}
!2 = !{ptr @__ksymtab_devm_tegra_memory_controller_get, !3, !"__ksymtab_devm_tegra_memory_controller_get", i1 false, i1 false}
!3 = !{!"../drivers/memory/tegra/mc.c", i32 96, i32 1}
!4 = !{ptr @__ksymtab_tegra_mc_probe_device, !5, !"__ksymtab_tegra_mc_probe_device", i1 false, i1 false}
!5 = !{!"../drivers/memory/tegra/mc.c", i32 105, i32 1}
!6 = !{ptr @tegra_mc_reset_ops_common, !7, !"tegra_mc_reset_ops_common", i1 false, i1 false}
!7 = !{!"../drivers/memory/tegra/mc.c", i32 151, i32 33}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/memory/tegra/mc.c", i32 328, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tegra_mc_write_emem_configuration._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @tegra_mc_write_emem_configuration._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_tegra_mc_write_emem_configuration, !17, !"__ksymtab_tegra_mc_write_emem_configuration", i1 false, i1 false}
!17 = !{!"../drivers/memory/tegra/mc.c", i32 338, i32 1}
!18 = !{ptr @__ksymtab_tegra_mc_get_emem_device_count, !19, !"__ksymtab_tegra_mc_get_emem_device_count", i1 false, i1 false}
!19 = !{!"../drivers/memory/tegra/mc.c", i32 350, i32 1}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/memory/tegra/mc.c", i32 484, i32 43}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/tegra/mc.c", i32 486, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tegra30_mc_probe._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @tegra30_mc_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/memory/tegra/mc.c", i32 495, i32 3}
!29 = !{ptr @tegra30_mc_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra30_mc_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/memory/tegra/mc.c", i32 501, i32 3}
!33 = !{ptr @tegra30_mc_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra30_mc_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @tegra30_mc_ops, !36, !"tegra30_mc_ops", i1 false, i1 false}
!36 = !{!"../drivers/memory/tegra/mc.c", i32 605, i32 27}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/memory/tegra/mc.c", i32 612, i32 9}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/memory/tegra/mc.c", i32 613, i32 9}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/memory/tegra/mc.c", i32 614, i32 9}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/tegra/mc.c", i32 615, i32 9}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/memory/tegra/mc.c", i32 616, i32 9}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/memory/tegra/mc.c", i32 617, i32 9}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memory/tegra/mc.c", i32 618, i32 9}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/memory/tegra/mc.c", i32 619, i32 9}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/memory/tegra/mc.c", i32 620, i32 9}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memory/tegra/mc.c", i32 621, i32 9}
!57 = !{ptr @tegra_mc_status_names, !58, !"tegra_mc_status_names", i1 false, i1 false}
!58 = !{!"../drivers/memory/tegra/mc.c", i32 611, i32 19}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/memory/tegra/mc.c", i32 625, i32 8}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memory/tegra/mc.c", i32 626, i32 8}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/memory/tegra/mc.c", i32 627, i32 8}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/memory/tegra/mc.c", i32 628, i32 8}
!67 = !{ptr @tegra_mc_error_names, !68, !"tegra_mc_error_names", i1 false, i1 false}
!68 = !{!"../drivers/memory/tegra/mc.c", i32 624, i32 19}
!69 = !{ptr @__initcall__kmod_tegra_mc__236_856_tegra_mc_init3, !70, !"__initcall__kmod_tegra_mc__236_856_tegra_mc_init3", i1 false, i1 false}
!70 = !{!"../drivers/memory/tegra/mc.c", i32 856, i32 1}
!71 = !{ptr @__UNIQUE_ID_author237, !72, !"__UNIQUE_ID_author237", i1 false, i1 false}
!72 = !{!"../drivers/memory/tegra/mc.c", i32 858, i32 1}
!73 = !{ptr @__UNIQUE_ID_description238, !74, !"__UNIQUE_ID_description238", i1 false, i1 false}
!74 = !{!"../drivers/memory/tegra/mc.c", i32 859, i32 1}
!75 = !{ptr @__UNIQUE_ID_file239, !76, !"__UNIQUE_ID_file239", i1 false, i1 false}
!76 = !{!"../drivers/memory/tegra/mc.c", i32 860, i32 1}
!77 = !{ptr @__UNIQUE_ID_license240, !76, !"__UNIQUE_ID_license240", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memory/tegra/mc.c", i32 460, i32 36}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/memory/tegra/mc.c", i32 473, i32 3}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @tegra_mc_setup_timings._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @tegra_mc_setup_timings._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/memory/tegra/mc.c", i32 396, i32 35}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/memory/tegra/mc.c", i32 398, i32 3}
!90 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @load_one_timing._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @load_one_timing._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/memory/tegra/mc.c", i32 409, i32 41}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/memory/tegra/mc.c", i32 413, i32 3}
!97 = !{ptr @load_one_timing._entry.37, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @load_one_timing._entry_ptr.39, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/memory/tegra/mc.c", i32 520, i32 53}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memory/tegra/mc.c", i32 540, i32 16}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/memory/tegra/mc.c", i32 542, i32 16}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/memory/tegra/mc.c", i32 545, i32 13}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/memory/tegra/mc.c", i32 547, i32 13}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/memory/tegra/mc.c", i32 594, i32 3}
!111 = !{ptr @tegra30_mc_handle_irq._rs, !110, !"_rs", i1 false, i1 false}
!112 = !{ptr @__func__.tegra30_mc_handle_irq, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @tegra30_mc_handle_irq._entry, !110, !"_entry", i1 false, i1 false}
!115 = !{ptr @tegra30_mc_handle_irq._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/memory/tegra/mc.c", i32 842, i32 11}
!118 = !{ptr @tegra_mc_driver, !119, !"tegra_mc_driver", i1 false, i1 false}
!119 = !{!"../drivers/memory/tegra/mc.c", i32 840, i32 31}
!120 = !{ptr @tegra_mc_probe.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../drivers/memory/tegra/mc.c", i32 729, i32 2}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/memory/tegra/mc.c", i32 737, i32 3}
!125 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @tegra_mc_probe._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @tegra_mc_probe._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/memory/tegra/mc.c", i32 762, i32 3}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/memory/tegra/mc.c", i32 769, i32 4}
!132 = !{ptr @tegra_mc_probe._entry.52, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @tegra_mc_probe._entry_ptr.54, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/memory/tegra/mc.c", i32 778, i32 4}
!136 = !{ptr @tegra_mc_probe._entry.55, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @tegra_mc_probe._entry_ptr.57, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/memory/tegra/mc.c", i32 783, i32 3}
!140 = !{ptr @tegra_mc_probe._entry.58, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @tegra_mc_probe._entry_ptr.60, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/memory/tegra/mc.c", i32 789, i32 4}
!144 = !{ptr @tegra_mc_probe._entry.61, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @tegra_mc_probe._entry_ptr.63, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/memory/tegra/mc.c", i32 798, i32 4}
!148 = !{ptr @tegra_mc_probe._entry.64, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @tegra_mc_probe._entry_ptr.66, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @tegra_mc_reset_ops, !151, !"tegra_mc_reset_ops", i1 false, i1 false}
!151 = !{!"../drivers/memory/tegra/mc.c", i32 292, i32 39}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/memory/tegra/mc.c", i32 203, i32 4}
!154 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @tegra_mc_hotreset_assert._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @tegra_mc_hotreset_assert._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/memory/tegra/mc.c", i32 213, i32 5}
!159 = !{ptr @tegra_mc_hotreset_assert._entry.69, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @tegra_mc_hotreset_assert._entry_ptr.71, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/memory/tegra/mc.c", i32 226, i32 4}
!163 = !{ptr @tegra_mc_hotreset_assert._entry.72, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @tegra_mc_hotreset_assert._entry_ptr.74, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/memory/tegra/mc.c", i32 255, i32 4}
!167 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @tegra_mc_hotreset_deassert._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @tegra_mc_hotreset_deassert._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/memory/tegra/mc.c", i32 265, i32 4}
!172 = !{ptr @tegra_mc_hotreset_deassert._entry.77, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @tegra_mc_hotreset_deassert._entry_ptr.79, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/memory/tegra/mc.c", i32 661, i32 40}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/memory/tegra/mc.c", i32 682, i32 15}
!178 = !{ptr @tegra_mc_of_match, !179, !"tegra_mc_of_match", i1 false, i1 false}
!179 = !{!"../drivers/memory/tegra/mc.c", i32 23, i32 34}
!180 = !{ptr @tegra_mc_pm_ops, !181, !"tegra_mc_pm_ops", i1 false, i1 false}
!181 = !{!"../drivers/memory/tegra/mc.c", i32 836, i32 32}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i64 6274794}
!192 = !{i64 6274376}
!193 = !{i64 1163403, i64 1163430, i64 1163452, i64 1163480}
!194 = !{i64 1163811, i64 1163838, i64 1163871, i64 1163892, i64 1163919, i64 1163945}
!195 = !{!"auto-init"}
!196 = !{!"branch_weights", i32 1, i32 2000}
