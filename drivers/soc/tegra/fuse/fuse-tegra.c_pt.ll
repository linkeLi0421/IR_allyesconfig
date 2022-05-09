; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/fuse/fuse-tegra.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/fuse-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tegra_sku_info\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_sku_info\09\09\09\09"
module asm "\09.long\09__crc_tegra_sku_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_sku_info:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_sku_info\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_sku_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_fuse_readl\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_fuse_readl\09\09\09\09"
module asm "\09.long\09__crc_tegra_fuse_readl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_fuse_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_fuse_readl\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_fuse_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvmem_cell_info = type { ptr, i32, i32, i32, i32 }
%struct.tegra_fuse_soc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i8 }
%struct.tegra_fuse = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.70, ptr, ptr }
%struct.anon.70 = type { %struct.mutex, %struct.completion, ptr, %struct.dma_slave_config, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra_fuse_info = type { ptr, i32, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@tegra_sku_info = dso_local global { %struct.tegra_sku_info, [48 x i8] } zeroinitializer, align 32
@__kstrtab_tegra_sku_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_sku_info = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_sku_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_sku_info to i32), ptr @__kstrtab_tegra_sku_info, ptr @__kstrtabns_tegra_sku_info }, section "___ksymtab+tegra_sku_info", align 4
@__initcall__kmod_fuse_tegra__231_350_tegra_fuse_driver_init6 = internal global ptr @tegra_fuse_driver_init, section ".initcall6.init", align 4
@__kstrtab_tegra_fuse_readl = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_fuse_readl = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_fuse_readl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_fuse_readl to i32), ptr @__kstrtab_tegra_fuse_readl, ptr @__kstrtabns_tegra_fuse_readl }, section "___ksymtab+tegra_fuse_readl", align 4
@tegra_soc_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_major, ptr @dev_attr_minor, ptr null], [20 x i8] zeroinitializer }, align 32
@tegra_soc_attr_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tegra_soc_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Tegra\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@tegra_revision_name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@__initcall__kmod_fuse_tegra__233_587_tegra_init_fuseearly = internal global ptr @tegra_init_fuse, section ".initcallearly.init", align 4
@tegra_fuse_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_fuse_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_fuse_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_fuse_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-fuse\00", [21 x i8] zeroinitializer }, align 32
@tegra_fuse_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_fuse_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_fuse_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_fuse_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_fuse_soc }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_fuse_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_fuse_suspend, ptr @tegra_fuse_resume, ptr @tegra_fuse_suspend, ptr @tegra_fuse_resume, ptr @tegra_fuse_suspend, ptr @tegra_fuse_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_fuse_runtime_suspend, ptr @tegra_fuse_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fuse\00", [27 x i8] zeroinitializer }, align 32
@tegra_fuse_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 215, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get FUSE clock: %ld\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_fuse_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/soc/tegra/fuse/fuse-tegra.c\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_fuse_probe._entry_ptr = internal global ptr @tegra_fuse_probe._entry, section ".printk_index", align 4
@tegra_fuse_cells = internal constant { [14 x %struct.nvmem_cell_info], [72 x i8] } { [14 x %struct.nvmem_cell_info] [%struct.nvmem_cell_info { ptr @.str.19, i32 132, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.20, i32 136, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.21, i32 152, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.22, i32 240, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.23, i32 300, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.24, i32 292, i32 1, i32 0, i32 2 }, %struct.nvmem_cell_info { ptr @.str.25, i32 340, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.26, i32 344, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.27, i32 348, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.28, i32 352, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.29, i32 384, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.30, i32 508, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.31, i32 516, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.32, i32 592, i32 4, i32 0, i32 32 }], [72 x i8] zeroinitializer }, align 32
@tegra_fuse_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 253, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register NVMEM device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_fuse_probe._entry_ptr.12 = internal global ptr @tegra_fuse_probe._entry.10, section ".printk_index", align 4
@tegra_fuse_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 261, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get FUSE reset: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_fuse_probe._entry_ptr.15 = internal global ptr @tegra_fuse_probe._entry.13, section ".printk_index", align 4
@tegra_fuse_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 277, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset FUSE: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_fuse_probe._entry_ptr.18 = internal global ptr @tegra_fuse_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsensor-cpu1\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsensor-cpu2\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsensor-cpu0\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xusb-pad-calibration\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsensor-cpu3\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sata-calibration\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tsensor-gpu\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsensor-mem0\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsensor-mem1\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsensor-pllx\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tsensor-common\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsensor-realignment\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpu-calibration\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xusb-pad-calibration-ext\00", [39 x i8] zeroinitializer }, align 32
@tegra124_fuse_soc = external dso_local constant %struct.tegra_fuse_soc, align 4
@tegra114_fuse_soc = external dso_local constant %struct.tegra_fuse_soc, align 4
@tegra30_fuse_soc = external dso_local constant %struct.tegra_fuse_soc, align 4
@tegra20_fuse_soc = external dso_local constant %struct.tegra_fuse_soc, align 4
@tegra_fuse_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 293, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable FUSE clock: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_fuse_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@tegra_fuse_runtime_resume._entry_ptr = internal global ptr @tegra_fuse_runtime_resume._entry, section ".printk_index", align 4
@.compoundliteral = internal global { %struct.tegra_fuse, [40 x i8] } zeroinitializer, align 32
@dev_attr_major = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @major_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_minor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @minor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"major\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"minor\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"A01\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"A02\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"A03\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"A03 prime\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"A04\00", [28 x i8] zeroinitializer }, align 32
@tegra_init_fuse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.7, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014Unsupported SoC: %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_init_fuse\00", [16 x i8] zeroinitializer }, align 32
@tegra_init_fuse._entry_ptr = internal global ptr @tegra_init_fuse._entry, section ".printk_index", align 4
@tegra_init_fuse._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.7, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013failed to get FUSE register\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_init_fuse._entry_ptr.48 = internal global ptr @tegra_init_fuse._entry.46, section ".printk_index", align 4
@car_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@tegra_init_fuse._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.7, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to map clock registers\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_init_fuse._entry_ptr.51 = internal global ptr @tegra_init_fuse._entry.49, section ".printk_index", align 4
@tegra_init_fuse._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.7, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to map FUSE registers\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_init_fuse._entry_ptr.54 = internal global ptr @tegra_init_fuse._entry.52, section ".printk_index", align 4
@tegra_init_fuse._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.7, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016Tegra Revision: %s SKU: %d CPU Process: %d SoC Process: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_init_fuse._entry_ptr.57 = internal global ptr @tegra_init_fuse._entry.55, section ".printk_index", align 4
@tegra_init_fuse.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.45, ptr @.str.7, ptr @.str.59, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fuse_tegra\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Tegra CPU Speedo ID %d, SoC Speedo ID %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 48, i64 53, i64 64]
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"tegra_sku_info\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 26, i32 23 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"tegra_soc_attr\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 411, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"tegra_soc_attr_group\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 417, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 458, i32 39 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 459, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"tegra_revision_name\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 29, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 461, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"tegra_fuse_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 341, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 343, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"tegra_fuse_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 53, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"tegra_fuse_pm\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 335, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 211, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 214, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"tegra_fuse_cells\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 97, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 252, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 260, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 277, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 99, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 105, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 111, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 117, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 123, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 129, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 135, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 141, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 147, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 153, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 159, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 165, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 171, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 177, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 293, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"dev_attr_major\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [15 x i8] c"dev_attr_minor\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 401, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 398, i32 22 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 409, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 30, i32 29 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 31, i32 29 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 32, i32 29 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 33, i32 29 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 34, i32 29 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 35, i32 29 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 527, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 543, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 557, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 564, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 570, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [39 x i8] c"../drivers/soc/tegra/fuse/fuse-tegra.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 574, i32 2 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__initcall__kmod_fuse_tegra__231_350_tegra_fuse_driver_init6, ptr @__initcall__kmod_fuse_tegra__233_587_tegra_init_fuseearly, ptr @__ksymtab_tegra_fuse_readl, ptr @__ksymtab_tegra_sku_info, ptr @tegra_fuse_probe._entry, ptr @tegra_fuse_probe._entry.10, ptr @tegra_fuse_probe._entry.13, ptr @tegra_fuse_probe._entry.16, ptr @tegra_fuse_probe._entry_ptr, ptr @tegra_fuse_probe._entry_ptr.12, ptr @tegra_fuse_probe._entry_ptr.15, ptr @tegra_fuse_probe._entry_ptr.18, ptr @tegra_fuse_runtime_resume._entry, ptr @tegra_fuse_runtime_resume._entry_ptr, ptr @tegra_init_fuse._entry, ptr @tegra_init_fuse._entry.46, ptr @tegra_init_fuse._entry.49, ptr @tegra_init_fuse._entry.52, ptr @tegra_init_fuse._entry.55, ptr @tegra_init_fuse._entry_ptr, ptr @tegra_init_fuse._entry_ptr.48, ptr @tegra_init_fuse._entry_ptr.51, ptr @tegra_init_fuse._entry_ptr.54, ptr @tegra_init_fuse._entry_ptr.57, ptr @tegra_sku_info, ptr @tegra_soc_attr, ptr @tegra_soc_attr_group, ptr @.str, ptr @.str.1, ptr @tegra_revision_name, ptr @.str.2, ptr @tegra_fuse_driver, ptr @.str.3, ptr @tegra_fuse_match, ptr @tegra_fuse_pm, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @tegra_fuse_cells, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.compoundliteral, ptr @dev_attr_major, ptr @dev_attr_minor, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sku_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soc_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_soc_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_revision_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fuse_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fuse_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fuse_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fuse_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fuse_cells to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fuse_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fuse_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fuse_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fuse_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_major to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_minor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_fuse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_fuse._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_fuse._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_fuse._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_fuse._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_fuse_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_fuse_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_fuse_read_spare(i32 noundef %spare) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %info = getelementptr inbounds %struct.tegra_fuse_soc, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %spare1 = getelementptr inbounds %struct.tegra_fuse_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %spare1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %spare1, align 4
  %mul = shl i32 %spare, 2
  %add = add i32 %4, %mul
  %5 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 5), align 4
  %call = tail call i32 %5(ptr noundef nonnull @.compoundliteral, i32 noundef %add) #9
  %and = and i32 %call, 1
  ret i32 %and
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_fuse_read_early(i32 noundef %offset) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 5), align 4
  %call = tail call i32 %0(ptr noundef nonnull @.compoundliteral, i32 noundef %offset) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_fuse_readl(i32 noundef %offset, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 6), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 %0(ptr noundef nonnull @.compoundliteral, i32 noundef %offset) #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call8, ptr %value, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ 0, %if.end6 ], [ -517, %lor.lhs.false.return_crit_edge ], [ -517, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_soc_device_register() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str) #9
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %family, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11), align 4
  %arrayidx = getelementptr [6 x ptr], ptr @tegra_revision_name, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %4) #9
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %revision, align 8
  %call3 = tail call zeroext i8 @tegra_get_chip_id() #9
  %conv = zext i8 %call3 to i32
  %call4 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %conv) #9
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %soc_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %soc_id, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %soc_attr_group = getelementptr inbounds %struct.tegra_fuse_soc, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %soc_attr_group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc_attr_group, align 4
  %custom_attr_group = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %custom_attr_group to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %custom_attr_group, align 8
  %call5 = tail call ptr @soc_device_register(ptr noundef nonnull %call7.i.i) #9
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %soc_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc_id, align 8
  tail call void @kfree(ptr noundef %12) #9
  %13 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %revision, align 8
  tail call void @kfree(ptr noundef %14) #9
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %family, align 4
  tail call void @kfree(ptr noundef %16) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call ptr @soc_device_to_device(ptr noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.then7 ], [ %call13, %if.end12 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_to_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_init_fuse() #0 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  %regs = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #9
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %regs) #9
  %1 = getelementptr inbounds %struct.resource, ptr %regs, i32 0, i32 1
  %2 = getelementptr inbounds %struct.resource, ptr %regs, i32 0, i32 3
  %3 = call ptr @memset(ptr %regs, i32 255, i32 32)
  tail call void @tegra_init_apbmisc() #9
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_fuse_match, ptr noundef nonnull %match) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %call1 = call zeroext i1 @soc_is_tegra() #9
  br i1 %call1, label %if.then2, label %if.then.cleanup83_crit_edge

if.then.cleanup83_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.then2:                                         ; preds = %if.then
  %call3 = call zeroext i8 @tegra_get_chip_id() #9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1879111680, ptr %regs, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1879112703, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 512, ptr %2, align 4
  %7 = zext i8 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call3, label %do.end [
    i8 32, label %sw.bb
    i8 48, label %sw.bb4
    i8 53, label %sw.bb6
    i8 64, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @tegra20_fuse_soc, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %if.end23

sw.bb4:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @tegra30_fuse_soc, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %if.end23

sw.bb6:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @tegra114_fuse_soc, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %if.end23

sw.bb8:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @tegra124_fuse_soc, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %if.end23

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %call3 to i32
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv) #13
  br label %if.end23

if.else12:                                        ; preds = %entry
  %call13 = call i32 @of_address_to_resource(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %regs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %cleanup83

if.end21:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %match, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  store ptr %11, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %do.end, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  %call.i = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @car_match, ptr noundef null) #9
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end23.if.end37_crit_edge, label %if.then26

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then26:                                        ; preds = %if.end23
  %call27 = call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #9
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end33, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %call27, i32 72
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !146
  %13 = or i32 %12, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #9, !srcloc !148
  %add.ptr3.i = getelementptr i8, ptr %call27, i32 20
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %15 = or i32 %14, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #9, !srcloc !148
  call void @iounmap(ptr noundef nonnull %call27) #9
  br label %if.end37

do.end33:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #13
  br label %cleanup83

if.end37:                                         ; preds = %if.then29, %if.end23.if.end37_crit_edge
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regs, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %sub.i = sub i32 1, %17
  %add.i = add i32 %sub.i, %19
  %call40 = call ptr @ioremap(i32 noundef %17, i32 noundef %add.i) #9
  store ptr %call40, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 1), align 4
  %tobool43.not = icmp eq ptr %call40, null
  br i1 %tobool43.not, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #13
  br label %cleanup83

if.end50:                                         ; preds = %if.end37
  %20 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  call void %22(ptr noundef nonnull @.compoundliteral) #9
  %23 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11), align 4
  %arrayidx = getelementptr [6 x ptr], ptr @tegra_revision_name, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %26 = load i32, ptr @tegra_sku_info, align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1), align 4
  %28 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 5), align 4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_init_fuse.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_init_fuse, %if.then63)) #9
          to label %do.end66 [label %if.then63], !srcloc !151

if.then63:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %29 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %30 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tegra_init_fuse.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.59, i32 noundef %29, i32 noundef %30) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %if.end50
  %31 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %lookups = getelementptr inbounds %struct.tegra_fuse_soc, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %lookups to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lookups, align 4
  %tobool68.not = icmp eq ptr %33, null
  br i1 %tobool68.not, label %do.end66.cleanup83_crit_edge, label %if.then69

do.end66.cleanup83_crit_edge:                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.then69:                                        ; preds = %do.end66
  %num_lookups = getelementptr inbounds %struct.tegra_fuse_soc, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %num_lookups to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_lookups, align 4
  %mul = mul i32 %35, 24
  %call73 = call ptr @kmemdup(ptr noundef nonnull %33, i32 noundef %mul, i32 noundef 3264) #9
  store ptr %call73, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 10), align 4
  %tobool76.not = icmp eq ptr %call73, null
  br i1 %tobool76.not, label %if.then69.cleanup83_crit_edge, label %if.then77

if.then69.cleanup83_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.then77:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %36 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %num_lookups80 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %num_lookups80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_lookups80, align 4
  call void @nvmem_add_cell_lookups(ptr noundef nonnull %call73, i32 noundef %38) #9
  br label %cleanup83

cleanup83:                                        ; preds = %if.then77, %if.then69.cleanup83_crit_edge, %do.end66.cleanup83_crit_edge, %do.end47, %do.end33, %do.end18, %if.then.cleanup83_crit_edge
  %retval.1 = phi i32 [ -6, %do.end18 ], [ -6, %do.end47 ], [ 0, %if.then.cleanup83_crit_edge ], [ -6, %do.end33 ], [ 0, %if.then69.cleanup83_crit_edge ], [ 0, %if.then77 ], [ 0, %do.end66.cleanup83_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %regs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_fuse_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %nvmem = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tegra_fuse_restore, ptr noundef %0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %1 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call2, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 2), align 4
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call2) #9
  store ptr %call4, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 1), align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  store ptr %call13, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  %cmp.i123 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end11
  %cmp.not = icmp eq ptr %call13, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then16.if.end23_crit_edge, label %do.end

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %4) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.then16.if.end23_crit_edge
  %5 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.compoundliteral, ptr %driver_data.i.i, align 4
  store ptr %dev, ptr @.compoundliteral, align 4
  %call30 = tail call i32 @devm_pm_runtime_enable(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %8 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %probe = getelementptr inbounds %struct.tegra_fuse_soc, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %probe, align 4
  %tobool34.not = icmp eq ptr %10, null
  br i1 %tobool34.not, label %if.end33.if.end42_crit_edge, label %if.then35

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then35:                                        ; preds = %if.end33
  %call38 = tail call i32 %10(ptr noundef nonnull @.compoundliteral) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then35.cleanup_crit_edge, label %if.then35.if.end42_crit_edge

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.then35.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  %11 = getelementptr inbounds i8, ptr %nvmem, i32 16
  %12 = call ptr @memset(ptr %11, i32 0, i32 72)
  %13 = ptrtoint ptr %nvmem to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %nvmem, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 1
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.4, ptr %name, align 4
  %id = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 2
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %id, align 4
  %owner = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 3
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %owner, align 4
  %cells = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 5
  %17 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tegra_fuse_cells, ptr %cells, align 4
  %ncells = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 6
  %18 = ptrtoint ptr %ncells to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 14, ptr %ncells, align 4
  %type = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 9
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %type, align 4
  %read_only = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 10
  %20 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %read_only, align 4
  %root_only = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 11
  %21 = ptrtoint ptr %root_only to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %root_only, align 1
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 15
  %22 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tegra_fuse_read, ptr %reg_read, align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %info = getelementptr inbounds %struct.tegra_fuse_soc, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %size = getelementptr inbounds %struct.tegra_fuse_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %size46 = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 18
  %28 = ptrtoint ptr %size46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %size46, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 19
  %29 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 20
  %30 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem, i32 0, i32 21
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.compoundliteral, ptr %priv, align 4
  %call48 = call ptr @devm_nvmem_register(ptr noundef %dev, ptr noundef nonnull %nvmem) #9
  store ptr %call48, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 9), align 4
  %cmp.i124 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then52, label %if.end59

if.then52:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %call48 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %32) #13
  br label %cleanup

if.end59:                                         ; preds = %if.end42
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  store ptr %call.i.i, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 4), align 4
  %cmp.i125 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then64, label %if.end72

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i.i) #13
  br label %cleanup

if.end72:                                         ; preds = %if.end59
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i126 = icmp slt i32 %call.i, 0
  br i1 %cmp.i126, label %if.then.i, label %if.end77

if.then.i:                                        ; preds = %if.end72
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !152
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !153
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %35 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 4), align 4
  %call79 = call i32 @reset_control_reset(ptr noundef %35) #9
  %call.i127 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp82 = icmp slt i32 %call79, 0
  br i1 %cmp82, label %do.end86, label %if.end88

do.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call79) #13
  br label %cleanup

if.end88:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  call void @iounmap(ptr noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end86, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %if.then64, %if.then52, %if.then35.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end23, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then8 ], [ %6, %if.end23 ], [ %32, %if.then52 ], [ %33, %if.then64 ], [ %call79, %do.end86 ], [ 0, %if.end88 ], [ %call, %entry.cleanup_crit_edge ], [ %call30, %if.end26.cleanup_crit_edge ], [ %call38, %if.then35.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @tegra_fuse_restore(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  store ptr %base, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_fuse_read(ptr noundef %priv, i32 noundef %offset, ptr nocapture noundef writeonly %value, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp6.not = icmp ult i32 %bytes, 4
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div5 = lshr i32 %bytes, 2
  %read = getelementptr inbounds %struct.tegra_fuse, ptr %priv, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %mul = shl i32 %i.07, 2
  %add = add i32 %mul, %offset
  %call = tail call i32 %1(ptr noundef %priv, i32 noundef %add) #9
  %arrayidx = getelementptr i32, ptr %value, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %div5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_fuse_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %clk_suspend_on = getelementptr inbounds %struct.tegra_fuse_soc, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %clk_suspend_on to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %clk_suspend_on, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !153
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end11.i.i.i.i.i, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.else ], [ 0, %if.then.if.end_crit_edge ], [ %call.i, %if.then.i.if.end_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_fuse_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %clk_suspend_on = getelementptr inbounds %struct.tegra_fuse_soc, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %clk_suspend_on to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %clk_suspend_on, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call1, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_fuse_runtime_suspend(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  tail call void @clk_disable(ptr noundef %0) #9
  tail call void @clk_unprepare(ptr noundef %0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_fuse_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %0) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.cleanup_crit_edge

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %clk_prepare_enable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @major_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @tegra_get_major_rev() #9
  %conv = zext i8 %call to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_major_rev() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minor_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @tegra_get_minor_rev() #9
  %conv = zext i8 %call to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_minor_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_apbmisc() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc_is_tegra() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_add_cell_lookups(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !87, !89, !90, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__ksymtab_tegra_sku_info, !1, !"__ksymtab_tegra_sku_info", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 27, i32 1}
!2 = !{ptr @__initcall__kmod_fuse_tegra__231_350_tegra_fuse_driver_init6, !3, !"__initcall__kmod_fuse_tegra__231_350_tegra_fuse_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 350, i32 1}
!4 = !{ptr @__ksymtab_tegra_fuse_readl, !5, !"__ksymtab_tegra_fuse_readl", i1 false, i1 false}
!5 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 376, i32 1}
!6 = !{ptr @tegra_soc_attr_group, !7, !"tegra_soc_attr_group", i1 false, i1 false}
!7 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 417, i32 30}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 458, i32 39}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 459, i32 41}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 461, i32 39}
!14 = !{ptr @__initcall__kmod_fuse_tegra__233_587_tegra_init_fuseearly, !15, !"__initcall__kmod_fuse_tegra__233_587_tegra_init_fuseearly", i1 false, i1 false}
!15 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 587, i32 1}
!16 = !{ptr @tegra_sku_info, !17, !"tegra_sku_info", i1 false, i1 false}
!17 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 26, i32 23}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 343, i32 11}
!20 = !{ptr @tegra_fuse_driver, !21, !"tegra_fuse_driver", i1 false, i1 false}
!21 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 341, i32 31}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 211, i32 39}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 214, i32 4}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tegra_fuse_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_fuse_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 252, i32 3}
!34 = !{ptr @tegra_fuse_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tegra_fuse_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 260, i32 3}
!38 = !{ptr @tegra_fuse_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_fuse_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 277, i32 3}
!42 = !{ptr @tegra_fuse_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra_fuse_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 99, i32 11}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 105, i32 11}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 111, i32 11}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 117, i32 11}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 123, i32 11}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 129, i32 11}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 135, i32 11}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 141, i32 11}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 147, i32 11}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 153, i32 11}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 159, i32 11}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 165, i32 11}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 171, i32 11}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 177, i32 11}
!72 = !{ptr @tegra_fuse_cells, !73, !"tegra_fuse_cells", i1 false, i1 false}
!73 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 97, i32 37}
!74 = !{ptr @tegra_fuse_match, !75, !"tegra_fuse_match", i1 false, i1 false}
!75 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 53, i32 34}
!76 = !{ptr @tegra_fuse_pm, !77, !"tegra_fuse_pm", i1 false, i1 false}
!77 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 335, i32 32}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 293, i32 3}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tegra_fuse_runtime_resume._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tegra_fuse_runtime_resume._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"fuse", i1 false, i1 false}
!84 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 48, i32 27}
!85 = !{ptr @tegra_soc_attr, !86, !"tegra_soc_attr", i1 false, i1 false}
!86 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 411, i32 26}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 401, i32 8}
!89 = !{ptr @dev_attr_major, !88, !"dev_attr_major", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 398, i32 22}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 409, i32 8}
!94 = !{ptr @dev_attr_minor, !93, !"dev_attr_minor", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 30, i32 29}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 31, i32 29}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 32, i32 29}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 33, i32 29}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 34, i32 29}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 35, i32 29}
!107 = !{ptr @tegra_revision_name, !108, !"tegra_revision_name", i1 false, i1 false}
!108 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 29, i32 20}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 527, i32 5}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @tegra_init_fuse._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @tegra_init_fuse._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 543, i32 4}
!116 = !{ptr @tegra_init_fuse._entry.46, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @tegra_init_fuse._entry_ptr.48, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 557, i32 4}
!120 = !{ptr @tegra_init_fuse._entry.49, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @tegra_init_fuse._entry_ptr.51, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 564, i32 3}
!124 = !{ptr @tegra_init_fuse._entry.52, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @tegra_init_fuse._entry_ptr.54, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 570, i32 2}
!128 = !{ptr @tegra_init_fuse._entry.55, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @tegra_init_fuse._entry_ptr.57, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 574, i32 2}
!132 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @tegra_init_fuse.__UNIQUE_ID_ddebug232, !131, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!134 = !{ptr @car_match, !135, !"car_match", i1 false, i1 false}
!135 = !{!"../drivers/soc/tegra/fuse/fuse-tegra.c", i32 38, i32 34}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"auto-init"}
!146 = !{i64 4814554}
!147 = !{i64 2154203754}
!148 = !{i64 4814136}
!149 = !{i64 2154204385}
!150 = !{i64 2154204593}
!151 = !{i64 2148733699, i64 2148733704, i64 2148733717, i64 2148733761, i64 2148733795, i64 2148733816}
!152 = !{i64 2148251303}
!153 = !{i64 736126, i64 736151, i64 736173, i64 736189, i64 736201, i64 736221, i64 736245, i64 736261, i64 736273}
!154 = !{i64 2148251491}
!155 = !{i8 0, i8 2}
