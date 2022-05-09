; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/ctrl.c_pt.bc'
source_filename = "../drivers/crypto/caam/ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+caam_dpaa2\22, \22a\22\09"
module asm "\09.weak\09__crc_caam_dpaa2\09\09\09\09"
module asm "\09.long\09__crc_caam_dpaa2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_dpaa2:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_dpaa2\22\09\09\09\09\09"
module asm "__kstrtabns_caam_dpaa2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.caam_imx_data = type { ptr, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.anon.158 = type { i16, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon.154, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon.154 = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fsl_mc_version = type { i32, i32, i32 }
%struct.caam_queue_if = type { i32, i32, i32, i32, i32, i32, i32, i32, [1016 x i32] }
%struct.caam_deco = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, [7 x i32], i32, i32, i32, i32, i32, i32, i32, [24 x i32], [16 x i32], [48 x i32], [8 x i32], [121 x i32], i32, i32, i32, i32, i32, i32, i32, [56 x i32], [18 x i32], [46 x i32], [32 x i32], [84 x i32], i32, i32, [2 x i32], i64, [2 x i32], i64, [2 x i32], i32, i32, i64, i32, i32, [2 x i32], i32, i32, [6 x i32], [4 x i64], [8 x i32], [4 x %struct.deco_sg_table], [16 x i32], [4 x %struct.deco_sg_table], [48 x i32], [64 x i32], [193 x i32], i32, [13 x i32], i32, [112 x i32] }
%struct.deco_sg_table = type { i64, i32, i32 }

@caam_dpaa2 = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__kstrtab_caam_dpaa2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_dpaa2 = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_dpaa2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_dpaa2 to i32), ptr @__kstrtab_caam_dpaa2, ptr @__kstrtabns_caam_dpaa2 }, section "___ksymtab+caam_dpaa2", align 4
@__initcall__kmod_caam__511_921_caam_driver_init6 = internal global ptr @caam_driver_init, section ".initcall6.init", align 4
@caam_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @caam_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @caam_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_caam_driver_exit = internal global ptr @caam_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file512 = internal constant [35 x i8] c"caam.file=drivers/crypto/caam/caam\00", section ".modinfo", align 1
@__UNIQUE_ID_license513 = internal constant [17 x i8] c"caam.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description514 = internal constant [42 x i8] c"caam.description=FSL CAAM request backend\00", section ".modinfo", align 1
@__UNIQUE_ID_author515 = internal constant [46 x i8] c"caam.author=Freescale Semiconductor - NMG/STC\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caam\00", [27 x i8] zeroinitializer }, align 32
@caam_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sec-v4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sec4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@caam_imx_soc_table = internal constant { [7 x %struct.soc_device_attribute], [60 x i8] } { [7 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.34, ptr @caam_imx6ul_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.35, ptr @caam_imx6_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.36, ptr @caam_imx7_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.37, ptr @caam_imx7_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.38, ptr @caam_vf610_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.39, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [60 x i8] zeroinitializer }, align 32
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@caam_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 642, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No clock data provided for i.MX SoC\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caam_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/crypto/caam/ctrl.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@caam_probe._entry_ptr = internal global ptr @caam_probe._entry, section ".printk_index", align 4
@caam_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 657, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"caam: of_iomap() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@caam_probe._entry_ptr.8 = internal global ptr @caam_probe._entry.6, section ".printk_index", align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,qoriq-mc\00", [19 x i8] zeroinitializer }, align 32
@caam_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dma_set_mask_and_coherent failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@caam_probe._entry_ptr.12 = internal global ptr @caam_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,sec-v4.0-job-ring\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,sec4.0-job-ring\00", [44 x i8] zeroinitializer }, align 32
@caam_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 819, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no queues configured, terminating\0A\00", [61 x i8] zeroinitializer }, align 32
@caam_probe._entry_ptr.17 = internal global ptr @caam_probe._entry.15, section ".printk_index", align 4
@caam_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 861, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Entropy delay = %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@caam_probe._entry_ptr.21 = internal global ptr @caam_probe._entry.18, section ".printk_index", align 4
@caam_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 882, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to instantiate RNG\00", [38 x i8] zeroinitializer }, align 32
@caam_probe._entry_ptr.24 = internal global ptr @caam_probe._entry.22, section ".printk_index", align 4
@caam_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 902, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device ID = 0x%016llx (Era %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@caam_probe._entry_ptr.27 = internal global ptr @caam_probe._entry.25, section ".printk_index", align 4
@caam_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 904, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"job rings = %d, qi = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@caam_probe._entry_ptr.30 = internal global ptr @caam_probe._entry.28, section ".printk_index", align 4
@caam_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 908, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"JR platform devices creation error\0A\00", [60 x i8] zeroinitializer }, align 32
@caam_probe._entry_ptr.33 = internal global ptr @caam_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX6UL\00", [24 x i8] zeroinitializer }, align 32
@caam_imx6ul_data = internal constant { %struct.caam_imx_data, [24 x i8] } { %struct.caam_imx_data { ptr @caam_imx6ul_clks, i32 3 }, [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX6*\00", [25 x i8] zeroinitializer }, align 32
@caam_imx6_data = internal constant { %struct.caam_imx_data, [24 x i8] } { %struct.caam_imx_data { ptr @caam_imx6_clks, i32 4 }, [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX7*\00", [25 x i8] zeroinitializer }, align 32
@caam_imx7_data = internal constant { %struct.caam_imx_data, [24 x i8] } { %struct.caam_imx_data { ptr @caam_imx7_clks, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX8M*\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VF*\00", [28 x i8] zeroinitializer }, align 32
@caam_vf610_data = internal constant { %struct.caam_imx_data, [24 x i8] } { %struct.caam_imx_data { ptr @caam_vf610_clks, i32 1 }, [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Freescale i.MX\00", [17 x i8] zeroinitializer }, align 32
@caam_imx6ul_clks = internal constant { [3 x %struct.clk_bulk_data], [40 x i8] } { [3 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.40, ptr null }, %struct.clk_bulk_data { ptr @.str.41, ptr null }, %struct.clk_bulk_data { ptr @.str.42, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@caam_imx6_clks = internal constant { [4 x %struct.clk_bulk_data], [32 x i8] } { [4 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.40, ptr null }, %struct.clk_bulk_data { ptr @.str.41, ptr null }, %struct.clk_bulk_data { ptr @.str.42, ptr null }, %struct.clk_bulk_data { ptr @.str.43, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emi_slow\00", [23 x i8] zeroinitializer }, align 32
@caam_imx7_clks = internal constant { [2 x %struct.clk_bulk_data], [16 x i8] } { [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.40, ptr null }, %struct.clk_bulk_data { ptr @.str.42, ptr null }], [16 x i8] zeroinitializer }, align 32
@caam_vf610_clks = internal constant { [1 x %struct.clk_bulk_data], [24 x i8] } { [1 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.40, ptr null }], [24 x i8] zeroinitializer }, align 32
@init_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to request all necessary clocks\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_clocks\00", [20 x i8] zeroinitializer }, align 32
@init_clocks._entry_ptr = internal global ptr @init_clocks._entry, section ".printk_index", align 4
@init_clocks._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to prepare/enable all necessary clocks\0A\00", [49 x i8] zeroinitializer }, align 32
@init_clocks._entry_ptr.48 = internal global ptr @init_clocks._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,imx6q\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6dl\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6qp\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,sec-v5.0-job-ring\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,sec-v5.0\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,sec-v4.0\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,sec-era\00", [20 x i8] zeroinitializer }, align 32
@caam_get_era_from_hw.id = internal constant { [13 x %struct.anon.158], [44 x i8] } { [13 x %struct.anon.158] [%struct.anon.158 { i16 2576, i8 1, i8 1 }, %struct.anon.158 { i16 2576, i8 2, i8 2 }, %struct.anon.158 { i16 2578, i8 1, i8 3 }, %struct.anon.158 { i16 2580, i8 1, i8 3 }, %struct.anon.158 { i16 2580, i8 2, i8 4 }, %struct.anon.158 { i16 2582, i8 1, i8 4 }, %struct.anon.158 { i16 2576, i8 3, i8 4 }, %struct.anon.158 { i16 2577, i8 1, i8 4 }, %struct.anon.158 { i16 2584, i8 1, i8 4 }, %struct.anon.158 { i16 2577, i8 2, i8 5 }, %struct.anon.158 { i16 2578, i8 2, i8 5 }, %struct.anon.158 { i16 2579, i8 1, i8 5 }, %struct.anon.158 { i16 2588, i8 1, i8 5 }], [44 x i8] zeroinitializer }, align 32
@instantiate_rng._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 297, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"RNG4 SH%d was previously instantiated without prediction resistance. Tearing it down\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"instantiate_rng\00", [16 x i8] zeroinitializer }, align 32
@instantiate_rng._entry_ptr = internal global ptr @instantiate_rng._entry, section ".printk_index", align 4
@instantiate_rng._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 329, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Instantiated RNG4 SH%d\0A\00", [40 x i8] zeroinitializer }, align 32
@instantiate_rng._entry_ptr.60 = internal global ptr @instantiate_rng._entry.58, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@deinstantiate_rng._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to deinstantiate RNG4 SH%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"deinstantiate_rng\00", [46 x i8] zeroinitializer }, align 32
@deinstantiate_rng._entry_ptr = internal global ptr @deinstantiate_rng._entry, section ".printk_index", align 4
@deinstantiate_rng._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 229, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Deinstantiated RNG4 SH%d\0A\00", [38 x i8] zeroinitializer }, align 32
@deinstantiate_rng._entry_ptr.65 = internal global ptr @deinstantiate_rng._entry.63, section ".printk_index", align 4
@append_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.68, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%02d: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"append_operation\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/crypto/caam/desc_constr.h\00", [62 x i8] zeroinitializer }, align 32
@append_operation._entry_ptr = internal global ptr @append_operation._entry, section ".printk_index", align 4
@append_jump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.69, ptr @.str.68, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"append_jump\00", [20 x i8] zeroinitializer }, align 32
@append_jump._entry_ptr = internal global ptr @append_jump._entry, section ".printk_index", align 4
@append_load_imm_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.70, ptr @.str.68, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"append_load_imm_u32\00", [44 x i8] zeroinitializer }, align 32
@append_load_imm_u32._entry_ptr = internal global ptr @append_load_imm_u32._entry, section ".printk_index", align 4
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx8mq\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx8mm\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx8mn\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx8mp\00", [21 x i8] zeroinitializer }, align 32
@run_descriptor_deco0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to acquire DECO 0\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"run_descriptor_deco0\00", [43 x i8] zeroinitializer }, align 32
@run_descriptor_deco0._entry_ptr = internal global ptr @run_descriptor_deco0._entry, section ".printk_index", align 4
@switch.table.caam_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 6], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 2576, i64 2577, i64 2578, i64 2579, i64 2580, i64 2582, i64 2584, i64 2588]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1879048192]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1879048192]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1879048192]
@___asan_gen_.83 = private unnamed_addr constant [11 x i8] c"caam_dpaa2\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 23, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"caam_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 913, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 915, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"caam_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 483, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"caam_imx_soc_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 541, i32 42 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 642, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 657, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 713, i32 43 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 770, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 806, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 807, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 819, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 859, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 882, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 901, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 903, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 908, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 542, i32 14 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"caam_imx6ul_data\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 527, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 543, i32 14 }
@___asan_gen_.185 = private unnamed_addr constant [15 x i8] c"caam_imx6_data\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 506, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 544, i32 14 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"caam_imx7_data\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 516, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 545, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 546, i32 14 }
@___asan_gen_.200 = private unnamed_addr constant [16 x i8] c"caam_vf610_data\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 536, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 547, i32 14 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"caam_imx6ul_clks\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 521, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 522, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 523, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 524, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"caam_imx6_clks\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 499, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 503, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant [15 x i8] c"caam_imx7_clks\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 511, i32 35 }
@___asan_gen_.227 = private unnamed_addr constant [16 x i8] c"caam_vf610_clks\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 532, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 572, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 579, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 476, i32 31 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 477, i32 31 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 478, i32 31 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 216, i32 37 }
@___asan_gen_.258 = private unnamed_addr constant [32 x i8] c"../drivers/crypto/caam/intern.h\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 217, i32 37 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 455, i32 50 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 456, i32 40 }
@___asan_gen_.266 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 404, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 295, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 329, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 224, i32 5 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 229, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 265, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 240, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant [37 x i8] c"../drivers/crypto/caam/desc_constr.h\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 388, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 108, i32 31 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 109, i32 31 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 110, i32 31 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 111, i32 31 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private constant [30 x i8] c"../drivers/crypto/caam/ctrl.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 128, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [24 x i8] c"switch.table.caam_probe\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author515, ptr @__UNIQUE_ID_description514, ptr @__UNIQUE_ID_file512, ptr @__UNIQUE_ID_license513, ptr @__exitcall_caam_driver_exit, ptr @__initcall__kmod_caam__511_921_caam_driver_init6, ptr @__ksymtab_caam_dpaa2, ptr @append_jump._entry, ptr @append_jump._entry_ptr, ptr @append_load_imm_u32._entry, ptr @append_load_imm_u32._entry_ptr, ptr @append_operation._entry, ptr @append_operation._entry_ptr, ptr @caam_driver_exit, ptr @caam_probe._entry, ptr @caam_probe._entry.10, ptr @caam_probe._entry.15, ptr @caam_probe._entry.18, ptr @caam_probe._entry.22, ptr @caam_probe._entry.25, ptr @caam_probe._entry.28, ptr @caam_probe._entry.31, ptr @caam_probe._entry.6, ptr @caam_probe._entry_ptr, ptr @caam_probe._entry_ptr.12, ptr @caam_probe._entry_ptr.17, ptr @caam_probe._entry_ptr.21, ptr @caam_probe._entry_ptr.24, ptr @caam_probe._entry_ptr.27, ptr @caam_probe._entry_ptr.30, ptr @caam_probe._entry_ptr.33, ptr @caam_probe._entry_ptr.8, ptr @deinstantiate_rng._entry, ptr @deinstantiate_rng._entry.63, ptr @deinstantiate_rng._entry_ptr, ptr @deinstantiate_rng._entry_ptr.65, ptr @init_clocks._entry, ptr @init_clocks._entry.46, ptr @init_clocks._entry_ptr, ptr @init_clocks._entry_ptr.48, ptr @instantiate_rng._entry, ptr @instantiate_rng._entry.58, ptr @instantiate_rng._entry_ptr, ptr @instantiate_rng._entry_ptr.60, ptr @run_descriptor_deco0._entry, ptr @run_descriptor_deco0._entry_ptr, ptr @caam_dpaa2, ptr @caam_driver, ptr @.str, ptr @caam_match, ptr @caam_imx_soc_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @caam_imx6ul_data, ptr @.str.35, ptr @caam_imx6_data, ptr @.str.36, ptr @caam_imx7_data, ptr @.str.37, ptr @.str.38, ptr @caam_vf610_data, ptr @.str.39, ptr @caam_imx6ul_clks, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @caam_imx6_clks, ptr @.str.43, ptr @caam_imx7_clks, ptr @caam_vf610_clks, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @caam_get_era_from_hw.id, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @switch.table.caam_probe], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_dpaa2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_imx_soc_table to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_imx6ul_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_imx6_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_imx7_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_vf610_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_imx6ul_clks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_imx6_clks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_imx7_clks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_vf610_clks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_clocks._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_get_era_from_hw.id to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instantiate_rng._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instantiate_rng._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinstantiate_rng._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinstantiate_rng._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_jump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_load_imm_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_descriptor_deco0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.caam_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @caam_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @caam_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @caam_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  %prop.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup262_crit_edge, label %if.end

entry.cleanup262_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup262

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @soc_device_match(ptr noundef nonnull @caam_imx_soc_table) #8
  %tobool5 = icmp ne ptr %call4, null
  %frombool = zext i1 %tobool5 to i8
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  store i8 %frombool, ptr @caam_imx, align 1
  br i1 %tobool5, label %if.then7, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then7:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call4, i32 0, i32 5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup262

if.end10:                                         ; preds = %if.then7
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %num_clks.i = getelementptr inbounds %struct.caam_imx_data, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_clks.i, align 4
  %num_clks1.i = getelementptr inbounds %struct.caam_drv_private, ptr %6, i32 0, i32 14
  %9 = ptrtoint ptr %num_clks1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %num_clks1.i, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %12 = load i32, ptr %num_clks.i, align 4
  %mul.i = shl i32 %12, 3
  %call3.i = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef %11, i32 noundef %mul.i, i32 noundef 3264) #8
  %clks4.i = getelementptr inbounds %struct.caam_drv_private, ptr %6, i32 0, i32 13
  %13 = ptrtoint ptr %clks4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3.i, ptr %clks4.i, align 4
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end10.cleanup262_crit_edge, label %if.end.i

if.end10.cleanup262_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup262

if.end.i:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %num_clks1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_clks1.i, align 4
  %call8.i = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %15, ptr noundef nonnull %call3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44) #11
  br label %cleanup262

if.end11.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %num_clks1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clks1.i, align 4
  %18 = ptrtoint ptr %clks4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clks4.i, align 4
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef %17, ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end11.i.do.end19.i_crit_edge

if.end11.i.do.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19.i

if.end.i.i:                                       ; preds = %if.end11.i
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %17, ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end20.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %17, ptr noundef %19) #8
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then3.i.i, %if.end11.i.do.end19.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end11.i.do.end19.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47) #11
  br label %cleanup262

if.end20.i:                                       ; preds = %if.end.i.i
  %call.i40.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @disable_clocks, ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool.not.i41.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool.not.i41.i, label %if.end20.i.if.end16_crit_edge, label %if.then.i.i

if.end20.i.if.end16_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then.i.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %num_clks1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_clks1.i, align 4
  %22 = ptrtoint ptr %clks4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clks4.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %21, ptr noundef %23) #8
  tail call void @clk_bulk_unprepare(i32 noundef %21, ptr noundef %23) #8
  br label %cleanup262

if.end16:                                         ; preds = %if.end20.i.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %call17 = tail call ptr @devm_of_iomap(ptr noundef %dev1, ptr noundef %2, i32 noundef 0, ptr noundef null) #8
  %cmp.i.i.not = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %do.end23, label %if.end24

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup262

if.end24:                                         ; preds = %if.end16
  %status = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 26, i32 17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i401 = icmp eq i8 %25, 0
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #8
  br i1 %tobool.not.i401, label %if.end.i402, label %if.then.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit

if.end.i402:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i402, %if.then.i
  %retval.0.i403 = phi i32 [ %27, %if.then.i ], [ %26, %if.end.i402 ]
  %and = and i32 %retval.0.i403, 263168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %frombool27 = zext i1 %tobool26.not to i8
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  store i8 %frombool27, ptr @caam_little_end, align 1
  %comp_parms_ms = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 26, i32 10
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %comp_parms_ms) #8
  br i1 %tobool26.not, label %if.then.i405, label %if.end.i406

if.then.i405:                                     ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit408

if.end.i406:                                      ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit408

rd_reg32.exit408:                                 ; preds = %if.end.i406, %if.then.i405
  %retval.0.i407 = phi i32 [ %29, %if.then.i405 ], [ %28, %if.end.i406 ]
  %and30 = and i32 %retval.0.i407, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %rd_reg32.exit408.if.else_crit_edge, label %land.lhs.true

rd_reg32.exit408.if.else_crit_edge:               ; preds = %rd_reg32.exit408
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %rd_reg32.exit408
  %mcr = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %30 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i409 = icmp eq i8 %30, 0
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcr) #8
  br i1 %tobool.not.i409, label %if.end.i411, label %if.then.i410

if.then.i410:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit413

if.end.i411:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit413

rd_reg32.exit413:                                 ; preds = %if.end.i411, %if.then.i410
  %retval.0.i412 = phi i32 [ %32, %if.then.i410 ], [ %31, %if.end.i411 ]
  %and33 = and i32 %retval.0.i412, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %rd_reg32.exit413.if.else_crit_edge, label %rd_reg32.exit413.if.end36_crit_edge

rd_reg32.exit413.if.end36_crit_edge:              ; preds = %rd_reg32.exit413
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

rd_reg32.exit413.if.else_crit_edge:               ; preds = %rd_reg32.exit413
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %rd_reg32.exit413.if.else_crit_edge, %rd_reg32.exit408.if.else_crit_edge
  br label %if.end36

if.end36:                                         ; preds = %if.else, %rd_reg32.exit413.if.end36_crit_edge
  %storemerge = phi i32 [ 4, %if.else ], [ 8, %rd_reg32.exit413.if.end36_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  store i32 %storemerge, ptr @caam_ptr_sz, align 4
  %and37 = lshr i32 %retval.0.i407, 13
  %33 = trunc i32 %and37 to i8
  %34 = and i8 %33, 1
  store i8 %34, ptr @caam_dpaa2, align 1
  %35 = lshr i32 %retval.0.i407, 25
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %qi_present = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %qi_present to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %qi_present, align 1
  %39 = and i32 %retval.0.i407, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp eq i32 %39, 0
  %. = select i1 %cmp, i32 4096, i32 65536
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call17, ptr %call.i, align 4
  %mul = mul nuw nsw i32 %., 6
  %add.ptr = getelementptr i8, ptr %call17, i32 %mul
  %assure = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %assure to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr, ptr %assure, align 4
  %mul53 = shl nuw nsw i32 %., 3
  %add.ptr54 = getelementptr i8, ptr %call17, i32 %mul53
  %deco = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %deco to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr54, ptr %deco, align 4
  %call55 = tail call i32 @irq_of_parse_and_map(ptr noundef %2, i32 noundef 0) #8
  %secvio_irq = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %secvio_irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call55, ptr %secvio_irq, align 4
  %call56 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #8
  %tobool57 = icmp ne ptr %call56, null
  %conv62 = zext i1 %tobool57 to i8
  %mc_en = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 8
  %44 = ptrtoint ptr %mc_en to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv62, ptr %mc_en, align 2
  tail call void @of_node_put(ptr noundef %call56) #8
  %45 = ptrtoint ptr %mc_en to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mc_en, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool64.not = icmp eq i8 %46, 0
  br i1 %tobool64.not, label %if.end36.if.then76_crit_edge, label %if.then65

if.end36.if.then76_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.then65:                                        ; preds = %if.end36
  %call66 = tail call ptr @fsl_mc_get_version() #8
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.then65.cleanup262_crit_edge, label %if.then68

if.then65.cleanup262_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup262

if.then68:                                        ; preds = %if.then65
  %47 = ptrtoint ptr %call66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %48)
  %cmp.i = icmp ugt i32 %48, 10
  br i1 %cmp.i, label %if.then68.if.end73_crit_edge, label %if.end.i414

if.then68.if.end73_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end.i414:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %48)
  %cmp3.i = icmp eq i32 %48, 10
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i414.if.end15.i_crit_edge

if.end.i414.if.end15.i_crit_edge:                 ; preds = %if.end.i414
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then4.i:                                       ; preds = %if.end.i414
  %minor5.i = getelementptr inbounds %struct.fsl_mc_version, ptr %call66, i32 0, i32 1
  %49 = ptrtoint ptr %minor5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %minor5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %50)
  %cmp6.i = icmp ugt i32 %50, 20
  br i1 %cmp6.i, label %if.then4.i.if.end73_crit_edge, label %if.end8.i

if.then4.i.if.end73_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end8.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %50)
  %cmp10.i = icmp eq i32 %50, 20
  br i1 %cmp10.i, label %land.lhs.true.i, label %if.end8.i.if.end15.i_crit_edge

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end8.i
  %revision11.i = getelementptr inbounds %struct.fsl_mc_version, ptr %call66, i32 0, i32 2
  %51 = ptrtoint ptr %revision11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %revision11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp12.not.i = icmp eq i32 %52, 0
  br i1 %cmp12.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true.i.if.end73_crit_edge

land.lhs.true.i.if.end73_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %if.end8.i.if.end15.i_crit_edge, %if.end.i414.if.end15.i_crit_edge
  br label %if.end73

if.end73:                                         ; preds = %if.end15.i, %land.lhs.true.i.if.end73_crit_edge, %if.then4.i.if.end73_crit_edge, %if.then68.if.end73_crit_edge
  %pr_support.0.ph = phi i1 [ true, %land.lhs.true.i.if.end73_crit_edge ], [ true, %if.then4.i.if.end73_crit_edge ], [ true, %if.then68.if.end73_crit_edge ], [ false, %if.end15.i ]
  %53 = ptrtoint ptr %mc_en to i32
  call void @__asan_load1_noabort(i32 %53)
  %.pr = load i8, ptr %mc_en, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool75.not = icmp eq i8 %.pr, 0
  br i1 %tobool75.not, label %if.end73.if.then76_crit_edge, label %if.end73.if.end78_crit_edge

if.end73.if.end78_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end73.if.then76_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.then76:                                        ; preds = %if.end73.if.then76_crit_edge, %if.end36.if.then76_crit_edge
  %pr_support.1.off0525 = phi i1 [ %pr_support.0.ph, %if.end73.if.then76_crit_edge ], [ false, %if.end36.if.then76_crit_edge ]
  %mcr77 = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %54 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i416 = icmp eq i8 %54, 0
  br i1 %tobool.not.i416, label %do.body.i, label %if.then.i417

if.then.i417:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcr77) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %56 = and i32 %55, -68091969
  %57 = or i32 %56, 67305536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcr77, i32 %57) #8, !srcloc !189
  br label %if.end78

do.body.i:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcr77) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %and3.i = and i32 %58, -1073745669
  %or4.i = or i32 %and3.i, 1073742596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcr77, i32 %or4.i) #8, !srcloc !189
  br label %if.end78

if.end78:                                         ; preds = %do.body.i, %if.then.i417, %if.end73.if.end78_crit_edge
  %pr_support.1.off0524 = phi i1 [ %pr_support.0.ph, %if.end73.if.end78_crit_edge ], [ %pr_support.1.off0525, %if.then.i417 ], [ %pr_support.1.off0525, %do.body.i ]
  %mcr79 = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 1
  %call.i419 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419)
  %tobool.not.i420 = icmp eq i32 %call.i419, 0
  br i1 %tobool.not.i420, label %lor.lhs.false.i, label %if.end78.if.then.i422_crit_edge

if.end78.if.then.i422_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i422

lor.lhs.false.i:                                  ; preds = %if.end78
  %call1.i = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.if.then.i422_crit_edge

lor.lhs.false.i.if.then.i422_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i422

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.handle_imx6_err005766.exit_crit_edge, label %lor.lhs.false3.i.if.then.i422_crit_edge

lor.lhs.false3.i.if.then.i422_crit_edge:          ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i422

lor.lhs.false3.i.handle_imx6_err005766.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_imx6_err005766.exit

if.then.i422:                                     ; preds = %lor.lhs.false3.i.if.then.i422_crit_edge, %lor.lhs.false.i.if.then.i422_crit_edge, %if.end78.if.then.i422_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %59 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i421 = icmp eq i8 %59, 0
  br i1 %tobool.not.i.i421, label %do.body.i.i, label %if.then.i.i423

if.then.i.i423:                                   ; preds = %if.then.i422
  call void @__sanitizer_cov_trace_pc() #10
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcr79) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %61 = and i32 %60, 268435455
  %62 = or i32 %61, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcr79, i32 %62) #8, !srcloc !189
  br label %handle_imx6_err005766.exit

do.body.i.i:                                      ; preds = %if.then.i422
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcr79) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %and3.i.i = and i32 %63, -241
  %or4.i.i = or i32 %and3.i.i, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcr79, i32 %or4.i.i) #8, !srcloc !189
  br label %handle_imx6_err005766.exit

handle_imx6_err005766.exit:                       ; preds = %do.body.i.i, %if.then.i.i423, %lor.lhs.false3.i.handle_imx6_err005766.exit_crit_edge
  %scfgr80 = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %64 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i425 = icmp eq i8 %64, 0
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %scfgr80) #8
  br i1 %tobool.not.i425, label %if.end.i427, label %if.then.i426

if.then.i426:                                     ; preds = %handle_imx6_err005766.exit
  call void @__sanitizer_cov_trace_pc() #10
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit429

if.end.i427:                                      ; preds = %handle_imx6_err005766.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit429

rd_reg32.exit429:                                 ; preds = %if.end.i427, %if.then.i426
  %retval.0.i428 = phi i32 [ %66, %if.then.i426 ], [ %65, %if.end.i427 ]
  %virt_en = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 10
  %67 = ptrtoint ptr %virt_en to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %virt_en, align 4
  %and82 = and i32 %retval.0.i407, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %and96 = and i32 %retval.0.i407, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool83.not, label %if.else95, label %if.then84

if.then84:                                        ; preds = %rd_reg32.exit429
  %and90 = and i32 %retval.0.i428, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %or.cond = select i1 %tobool97.not, i1 %tobool91.not, i1 false
  br i1 %or.cond, label %if.then84.if.end101_crit_edge, label %if.then84.if.then105.sink.split_crit_edge

if.then84.if.then105.sink.split_crit_edge:        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then105.sink.split

if.then84.if.end101_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.else95:                                        ; preds = %rd_reg32.exit429
  br i1 %tobool97.not, label %if.else95.if.end101_crit_edge, label %if.else95.if.then105.sink.split_crit_edge

if.else95.if.then105.sink.split_crit_edge:        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then105.sink.split

if.else95.if.end101_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.end101:                                        ; preds = %if.else95.if.end101_crit_edge, %if.then84.if.end101_crit_edge
  %68 = ptrtoint ptr %virt_en to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr526 = load i32, ptr %virt_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr526)
  %cmp103 = icmp eq i32 %.pr526, 1
  br i1 %cmp103, label %if.end101.if.then105_crit_edge, label %if.end101.if.end106_crit_edge

if.end101.if.end106_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end101.if.then105_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then105

if.then105.sink.split:                            ; preds = %if.else95.if.then105.sink.split_crit_edge, %if.then84.if.then105.sink.split_crit_edge
  %69 = ptrtoint ptr %virt_en to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %virt_en, align 4
  br label %if.then105

if.then105:                                       ; preds = %if.then105.sink.split, %if.end101.if.then105_crit_edge
  %jrstart = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %70 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i430 = icmp eq i8 %70, 0
  br i1 %tobool.not.i430, label %do.body.i434, label %if.then.i432

if.then.i432:                                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %jrstart) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %72 = or i32 %71, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jrstart, i32 %72) #8, !srcloc !189
  br label %if.end106

do.body.i434:                                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %jrstart) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %or4.i433 = or i32 %73, 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jrstart, i32 %or4.i433) #8, !srcloc !189
  br label %if.end106

if.end106:                                        ; preds = %do.body.i434, %if.then.i432, %if.end101.if.end106_crit_edge
  %74 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %of_node, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %76 = load i32, ptr @caam_ptr_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %76)
  %cmp.not.i = icmp eq i32 %76, 8
  br i1 %cmp.not.i, label %if.end.i438, label %if.end106.caam_get_dma_mask.exit_crit_edge

if.end106.caam_get_dma_mask.exit_crit_edge:       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_dma_mask.exit

if.end.i438:                                      ; preds = %if.end106
  %77 = load i8, ptr @caam_dpaa2, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i437 = icmp eq i8 %77, 0
  br i1 %tobool.not.i437, label %if.end2.i, label %if.end.i438.caam_get_dma_mask.exit_crit_edge

if.end.i438.caam_get_dma_mask.exit_crit_edge:     ; preds = %if.end.i438
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_dma_mask.exit

if.end2.i:                                        ; preds = %if.end.i438
  %call.i439 = tail call i32 @of_device_is_compatible(ptr noundef %75, ptr noundef nonnull @.str.52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i439)
  %tobool3.not.i = icmp eq i32 %call.i439, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i443, label %if.end2.i.caam_get_dma_mask.exit_crit_edge

if.end2.i.caam_get_dma_mask.exit_crit_edge:       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_dma_mask.exit

lor.lhs.false.i443:                               ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i440 = tail call i32 @of_device_is_compatible(ptr noundef %75, ptr noundef nonnull @.str.53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i440)
  %tobool5.not.i441 = icmp eq i32 %call4.i440, 0
  %spec.select.i442 = select i1 %tobool5.not.i441, i64 68719476735, i64 1099511627775
  br label %caam_get_dma_mask.exit

caam_get_dma_mask.exit:                           ; preds = %lor.lhs.false.i443, %if.end2.i.caam_get_dma_mask.exit_crit_edge, %if.end.i438.caam_get_dma_mask.exit_crit_edge, %if.end106.caam_get_dma_mask.exit_crit_edge
  %retval.0.i444 = phi i64 [ 4294967295, %if.end106.caam_get_dma_mask.exit_crit_edge ], [ 562949953421311, %if.end.i438.caam_get_dma_mask.exit_crit_edge ], [ 1099511627775, %if.end2.i.caam_get_dma_mask.exit_crit_edge ], [ %spec.select.i442, %lor.lhs.false.i443 ]
  %call.i445 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %retval.0.i444) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i445)
  %cmp.i446 = icmp eq i32 %call.i445, 0
  br i1 %cmp.i446, label %if.end114, label %do.end113

do.end113:                                        ; preds = %caam_get_dma_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call.i445) #11
  br label %cleanup262

if.end114:                                        ; preds = %caam_get_dma_mask.exit
  %call1.i447 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %retval.0.i444) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #8
  %78 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %prop.i, align 4, !annotation !192
  %call.i450 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54) #8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %call.i450, ptr noundef nonnull @.str.55, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #8
  call void @of_node_put(ptr noundef %call.i450) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i451 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i451, label %if.then.i452, label %if.else.i

if.then.i452:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %prop.i, align 4
  br label %caam_get_era.exit

if.else.i:                                        ; preds = %if.end114
  %ccb_id.i.i = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 26, i32 20
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %81 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i.i.i = icmp eq i8 %81, 0
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ccb_id.i.i) #8
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = call i32 @llvm.bswap.i32(i32 %82) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit.i.i

rd_reg32.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %83, %if.then.i.i.i ], [ %82, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %retval.0.i.i.i)
  %tobool.not.i.i453 = icmp ult i32 %retval.0.i.i.i, 16777216
  br i1 %tobool.not.i.i453, label %if.end.i.i455, label %if.then.i.i454

if.then.i.i454:                                   ; preds = %rd_reg32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = lshr i32 %retval.0.i.i.i, 24
  br label %caam_get_era.exit

if.end.i.i455:                                    ; preds = %rd_reg32.exit.i.i
  %caam_id_ms.i.i = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 26, i32 25
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %84 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i39.i.i = icmp eq i8 %84, 0
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %caam_id_ms.i.i) #8
  br i1 %tobool.not.i39.i.i, label %if.end.i41.i.i, label %if.then.i40.i.i

if.then.i40.i.i:                                  ; preds = %if.end.i.i455
  call void @__sanitizer_cov_trace_pc() #10
  %86 = call i32 @llvm.bswap.i32(i32 %85) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit43.i.i

if.end.i41.i.i:                                   ; preds = %if.end.i.i455
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit43.i.i

rd_reg32.exit43.i.i:                              ; preds = %if.end.i41.i.i, %if.then.i40.i.i
  %retval.0.i42.i.i = phi i32 [ %86, %if.then.i40.i.i ], [ %85, %if.end.i41.i.i ]
  %shr5.i.i = lshr i32 %retval.0.i42.i.i, 16
  %and7.i.i = lshr i32 %retval.0.i42.i.i, 8
  %87 = trunc i32 %and7.i.i to i8
  %trunc.i.i = trunc i32 %shr5.i.i to i16
  %88 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i.i, label %rd_reg32.exit43.i.i.caam_get_era.exit_crit_edge [
    i16 2576, label %land.lhs.true.i.i
    i16 2578, label %land.lhs.true.2.i.i
    i16 2580, label %land.lhs.true.3.i.i
    i16 2582, label %land.lhs.true.5.i.i
    i16 2577, label %land.lhs.true.7.i.i
    i16 2584, label %land.lhs.true.8.i.i
    i16 2579, label %land.lhs.true.11.i.i
    i16 2588, label %land.lhs.true.12.i.i
  ]

rd_reg32.exit43.i.i.caam_get_era.exit_crit_edge:  ; preds = %rd_reg32.exit43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_era.exit

land.lhs.true.i.i:                                ; preds = %rd_reg32.exit43.i.i
  %switch.tableidx = add i8 %87, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %89 = icmp ult i8 %switch.tableidx, 3
  br i1 %89, label %switch.lookup, label %land.lhs.true.i.i.caam_get_era.exit_crit_edge

land.lhs.true.i.i.caam_get_era.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_era.exit

if.then22.fold.split97.i.i:                       ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

if.then22.fold.split99.i.i:                       ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

if.then22.fold.split100.i.i:                      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

switch.lookup:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.caam_probe, i32 0, i32 %90
  %91 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %91)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.then22.i.i

if.then22.i.i:                                    ; preds = %land.lhs.true.12.i.i.if.then22.i.i_crit_edge, %land.lhs.true.11.i.i.if.then22.i.i_crit_edge, %land.lhs.true.8.i.i.if.then22.i.i_crit_edge, %land.lhs.true.7.i.i.if.then22.i.i_crit_edge, %land.lhs.true.5.i.i.if.then22.i.i_crit_edge, %land.lhs.true.3.i.i.if.then22.i.i_crit_edge, %land.lhs.true.2.i.i.if.then22.i.i_crit_edge, %switch.lookup, %if.then22.fold.split100.i.i, %if.then22.fold.split99.i.i, %if.then22.fold.split97.i.i
  %i.045.lcssa.i.i = phi i32 [ 2, %land.lhs.true.2.i.i.if.then22.i.i_crit_edge ], [ 3, %land.lhs.true.3.i.i.if.then22.i.i_crit_edge ], [ 5, %land.lhs.true.5.i.i.if.then22.i.i_crit_edge ], [ 7, %land.lhs.true.7.i.i.if.then22.i.i_crit_edge ], [ 8, %land.lhs.true.8.i.i.if.then22.i.i_crit_edge ], [ 11, %land.lhs.true.11.i.i.if.then22.i.i_crit_edge ], [ 12, %land.lhs.true.12.i.i.if.then22.i.i_crit_edge ], [ 4, %if.then22.fold.split97.i.i ], [ 9, %if.then22.fold.split99.i.i ], [ 10, %if.then22.fold.split100.i.i ], [ %switch.load, %switch.lookup ]
  %era24.i.i = getelementptr [13 x %struct.anon.158], ptr @caam_get_era_from_hw.id, i32 0, i32 %i.045.lcssa.i.i, i32 2
  %92 = ptrtoint ptr %era24.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %era24.i.i, align 1
  %conv25.i.i = zext i8 %93 to i32
  br label %caam_get_era.exit

land.lhs.true.2.i.i:                              ; preds = %rd_reg32.exit43.i.i
  %94 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %87, label %land.lhs.true.2.i.i.caam_get_era.exit_crit_edge [
    i8 1, label %land.lhs.true.2.i.i.if.then22.i.i_crit_edge
    i8 2, label %if.then22.fold.split100.i.i
  ]

land.lhs.true.2.i.i.if.then22.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

land.lhs.true.2.i.i.caam_get_era.exit_crit_edge:  ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_era.exit

land.lhs.true.3.i.i:                              ; preds = %rd_reg32.exit43.i.i
  %95 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %87, label %land.lhs.true.3.i.i.caam_get_era.exit_crit_edge [
    i8 1, label %land.lhs.true.3.i.i.if.then22.i.i_crit_edge
    i8 2, label %if.then22.fold.split97.i.i
  ]

land.lhs.true.3.i.i.if.then22.i.i_crit_edge:      ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

land.lhs.true.3.i.i.caam_get_era.exit_crit_edge:  ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_era.exit

land.lhs.true.5.i.i:                              ; preds = %rd_reg32.exit43.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp20.5.i.i = icmp eq i8 %87, 1
  br i1 %cmp20.5.i.i, label %land.lhs.true.5.i.i.if.then22.i.i_crit_edge, label %land.lhs.true.5.i.i.caam_get_era.exit_crit_edge

land.lhs.true.5.i.i.caam_get_era.exit_crit_edge:  ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_era.exit

land.lhs.true.5.i.i.if.then22.i.i_crit_edge:      ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

land.lhs.true.7.i.i:                              ; preds = %rd_reg32.exit43.i.i
  %96 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %87, label %land.lhs.true.7.i.i.caam_get_era.exit_crit_edge [
    i8 1, label %land.lhs.true.7.i.i.if.then22.i.i_crit_edge
    i8 2, label %if.then22.fold.split99.i.i
  ]

land.lhs.true.7.i.i.if.then22.i.i_crit_edge:      ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

land.lhs.true.7.i.i.caam_get_era.exit_crit_edge:  ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_era.exit

land.lhs.true.8.i.i:                              ; preds = %rd_reg32.exit43.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp20.8.i.i = icmp eq i8 %87, 1
  br i1 %cmp20.8.i.i, label %land.lhs.true.8.i.i.if.then22.i.i_crit_edge, label %land.lhs.true.8.i.i.caam_get_era.exit_crit_edge

land.lhs.true.8.i.i.caam_get_era.exit_crit_edge:  ; preds = %land.lhs.true.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_era.exit

land.lhs.true.8.i.i.if.then22.i.i_crit_edge:      ; preds = %land.lhs.true.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

land.lhs.true.11.i.i:                             ; preds = %rd_reg32.exit43.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp20.11.i.i = icmp eq i8 %87, 1
  br i1 %cmp20.11.i.i, label %land.lhs.true.11.i.i.if.then22.i.i_crit_edge, label %land.lhs.true.11.i.i.caam_get_era.exit_crit_edge

land.lhs.true.11.i.i.caam_get_era.exit_crit_edge: ; preds = %land.lhs.true.11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_era.exit

land.lhs.true.11.i.i.if.then22.i.i_crit_edge:     ; preds = %land.lhs.true.11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

land.lhs.true.12.i.i:                             ; preds = %rd_reg32.exit43.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp20.12.i.i = icmp eq i8 %87, 1
  br i1 %cmp20.12.i.i, label %land.lhs.true.12.i.i.if.then22.i.i_crit_edge, label %land.lhs.true.12.i.i.caam_get_era.exit_crit_edge

land.lhs.true.12.i.i.caam_get_era.exit_crit_edge: ; preds = %land.lhs.true.12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %caam_get_era.exit

land.lhs.true.12.i.i.if.then22.i.i_crit_edge:     ; preds = %land.lhs.true.12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i.i

caam_get_era.exit:                                ; preds = %land.lhs.true.12.i.i.caam_get_era.exit_crit_edge, %land.lhs.true.11.i.i.caam_get_era.exit_crit_edge, %land.lhs.true.8.i.i.caam_get_era.exit_crit_edge, %land.lhs.true.7.i.i.caam_get_era.exit_crit_edge, %land.lhs.true.5.i.i.caam_get_era.exit_crit_edge, %land.lhs.true.3.i.i.caam_get_era.exit_crit_edge, %land.lhs.true.2.i.i.caam_get_era.exit_crit_edge, %if.then22.i.i, %land.lhs.true.i.i.caam_get_era.exit_crit_edge, %rd_reg32.exit43.i.i.caam_get_era.exit_crit_edge, %if.then.i.i454, %if.then.i452
  %retval.0.i456 = phi i32 [ %80, %if.then.i452 ], [ %shr.i.i, %if.then.i.i454 ], [ %conv25.i.i, %if.then22.i.i ], [ -524, %land.lhs.true.12.i.i.caam_get_era.exit_crit_edge ], [ -524, %land.lhs.true.11.i.i.caam_get_era.exit_crit_edge ], [ -524, %land.lhs.true.5.i.i.caam_get_era.exit_crit_edge ], [ -524, %land.lhs.true.8.i.i.caam_get_era.exit_crit_edge ], [ -524, %land.lhs.true.3.i.i.caam_get_era.exit_crit_edge ], [ -524, %land.lhs.true.7.i.i.caam_get_era.exit_crit_edge ], [ -524, %land.lhs.true.i.i.caam_get_era.exit_crit_edge ], [ -524, %rd_reg32.exit43.i.i.caam_get_era.exit_crit_edge ], [ -524, %land.lhs.true.2.i.i.caam_get_era.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #8
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 11
  %97 = ptrtoint ptr %era to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %retval.0.i456, ptr %era, align 4
  %call116 = call ptr @iommu_get_domain_for_dev(ptr noundef %dev1) #8
  %domain = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 5
  %98 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call116, ptr %domain, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %99 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i457 = icmp eq ptr %100, null
  br i1 %tobool.not.i457, label %if.end.i458, label %caam_get_era.exit.dev_name.exit_crit_edge

caam_get_era.exit.dev_name.exit_crit_edge:        ; preds = %caam_get_era.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i458:                                      ; preds = %caam_get_era.exit
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i458, %caam_get_era.exit.dev_name.exit_crit_edge
  %retval.0.i459 = phi ptr [ %102, %if.end.i458 ], [ %100, %caam_get_era.exit.dev_name.exit_crit_edge ]
  %call118 = call ptr @debugfs_create_dir(ptr noundef %retval.0.i459, ptr noundef null) #8
  %call.i460 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @caam_remove_debugfs, ptr noundef %call118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i460)
  %tobool.not.i461 = icmp eq i32 %call.i460, 0
  br i1 %tobool.not.i461, label %if.end122, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @debugfs_remove(ptr noundef %call118) #8
  br label %cleanup262

if.end122:                                        ; preds = %dev_name.exit
  call void @caam_debugfs_init(ptr noundef nonnull %call.i, ptr noundef %call118) #8
  %103 = ptrtoint ptr %qi_present to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %qi_present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool125.not = icmp eq i8 %104, 0
  br i1 %tobool125.not, label %if.end122.if.end132_crit_edge, label %land.lhs.true126

if.end122.if.end132_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

land.lhs.true126:                                 ; preds = %if.end122
  %105 = load i8, ptr @caam_dpaa2, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool127.not = icmp eq i8 %105, 0
  br i1 %tobool127.not, label %if.then128, label %land.lhs.true126.if.end132_crit_edge

land.lhs.true126.if.end132_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then128:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #10
  %mul129 = mul nuw nsw i32 %., 7
  %add.ptr130 = getelementptr i8, ptr %call17, i32 %mul129
  %qi = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 3
  %106 = ptrtoint ptr %qi to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr130, ptr %qi, align 4
  %qi_control_lo = getelementptr inbounds %struct.caam_queue_if, ptr %add.ptr130, i32 0, i32 1
  call fastcc void @wr_reg32(ptr noundef %qi_control_lo, i32 noundef 1)
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %land.lhs.true126.if.end132_crit_edge, %if.end122.if.end132_crit_edge
  %call133 = call ptr @of_get_next_available_child(ptr noundef %2, ptr noundef null) #8
  %cmp134.not533 = icmp eq ptr %call133, null
  br i1 %cmp134.not533, label %if.end132.for.end_crit_edge, label %for.body.lr.ph

if.end132.for.end_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end132
  %total_jobrs = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.0535 = phi ptr [ %call133, %for.body.lr.ph ], [ %call146, %for.inc.for.body_crit_edge ]
  %ring.0534 = phi i32 [ 0, %for.body.lr.ph ], [ %ring.1, %for.inc.for.body_crit_edge ]
  %call136 = call i32 @of_device_is_compatible(ptr noundef nonnull %np.0535, ptr noundef nonnull @.str.13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %lor.lhs.false138, label %for.body.if.then141_crit_edge

for.body.if.then141_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then141

lor.lhs.false138:                                 ; preds = %for.body
  %call139 = call i32 @of_device_is_compatible(ptr noundef nonnull %np.0535, ptr noundef nonnull @.str.14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %lor.lhs.false138.for.inc_crit_edge, label %lor.lhs.false138.if.then141_crit_edge

lor.lhs.false138.if.then141_crit_edge:            ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then141

lor.lhs.false138.for.inc_crit_edge:               ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then141:                                       ; preds = %lor.lhs.false138.if.then141_crit_edge, %for.body.if.then141_crit_edge
  %add = add i32 %ring.0534, 1
  %mul142 = mul i32 %add, %.
  %add.ptr143 = getelementptr i8, ptr %call17, i32 %mul142
  %arrayidx = getelementptr %struct.caam_drv_private, ptr %call.i, i32 0, i32 4, i32 %ring.0534
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr143, ptr %arrayidx, align 4
  %108 = ptrtoint ptr %total_jobrs to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %total_jobrs, align 4
  %inc = add i8 %109, 1
  store i8 %inc, ptr %total_jobrs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then141, %lor.lhs.false138.for.inc_crit_edge
  %ring.1 = phi i32 [ %add, %if.then141 ], [ %ring.0534, %lor.lhs.false138.for.inc_crit_edge ]
  %call146 = call ptr @of_get_next_available_child(ptr noundef %2, ptr noundef nonnull %np.0535) #8
  %cmp134.not = icmp eq ptr %call146, null
  br i1 %cmp134.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end132.for.end_crit_edge
  %110 = ptrtoint ptr %qi_present to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %qi_present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool148.not = icmp eq i8 %111, 0
  br i1 %tobool148.not, label %land.lhs.true149, label %for.end.if.end156_crit_edge

for.end.if.end156_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

land.lhs.true149:                                 ; preds = %for.end
  %total_jobrs150 = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 6
  %112 = ptrtoint ptr %total_jobrs150 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %total_jobrs150, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool151.not = icmp eq i8 %113, 0
  br i1 %tobool151.not, label %do.end155, label %land.lhs.true149.if.end156_crit_edge

land.lhs.true149.if.end156_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

do.end155:                                        ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %cleanup262

if.end156:                                        ; preds = %land.lhs.true149.if.end156_crit_edge, %for.end.if.end156_crit_edge
  %114 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %115)
  %cmp158 = icmp slt i32 %115, 10
  br i1 %cmp158, label %if.then160, label %if.else167

if.then160:                                       ; preds = %if.end156
  %cha_id_ls = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 26, i32 22
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %116 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i464 = icmp eq i8 %116, 0
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cha_id_ls) #8
  br i1 %tobool.not.i464, label %if.end.i466, label %if.then.i465

if.then.i465:                                     ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #10
  %118 = call i32 @llvm.bswap.i32(i32 %117) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit468

if.end.i466:                                      ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit468

rd_reg32.exit468:                                 ; preds = %if.end.i466, %if.then.i465
  %retval.0.i467 = phi i32 [ %118, %if.then.i465 ], [ %117, %if.end.i466 ]
  %and164 = lshr i32 %retval.0.i467, 16
  %shr165 = and i32 %and164, 15
  br label %if.end173

if.else167:                                       ; preds = %if.end156
  %rng = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 25, i32 13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %119 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i469 = icmp eq i8 %119, 0
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rng) #8
  br i1 %tobool.not.i469, label %if.end.i471, label %if.then.i470

if.then.i470:                                     ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #10
  %121 = call i32 @llvm.bswap.i32(i32 %120) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit473

if.end.i471:                                      ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit473

rd_reg32.exit473:                                 ; preds = %if.end.i471, %if.then.i470
  %retval.0.i472 = phi i32 [ %121, %if.then.i470 ], [ %120, %if.end.i471 ]
  %122 = lshr i32 %retval.0.i472, 24
  br label %if.end173

if.end173:                                        ; preds = %rd_reg32.exit473, %rd_reg32.exit468
  %rng_vid.0 = phi i32 [ %shr165, %rd_reg32.exit468 ], [ %122, %rd_reg32.exit473 ]
  %123 = ptrtoint ptr %mc_en to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %mc_en, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool176.not = icmp eq i8 %124, 0
  %pr_support.1.off0.not = xor i1 %pr_support.1.off0524, true
  %brmerge = or i1 %tobool176.not, %pr_support.1.off0.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rng_vid.0)
  %cmp182 = icmp ugt i32 %rng_vid.0, 3
  %or.cond399 = select i1 %brmerge, i1 %cmp182, i1 false
  br i1 %or.cond399, label %if.then184, label %if.end173.if.end237_crit_edge

if.end173.if.end237_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end237

if.then184:                                       ; preds = %if.end173
  %rdsta = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 23, i32 0, i32 0, i32 26, i32 3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %125 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i474 = icmp eq i8 %125, 0
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rdsta) #8
  br i1 %tobool.not.i474, label %if.end.i476, label %if.then.i475

if.then.i475:                                     ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #10
  %127 = call i32 @llvm.bswap.i32(i32 %126) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit478

if.end.i476:                                      ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit478

rd_reg32.exit478:                                 ; preds = %if.end.i476, %if.then.i475
  %retval.0.i477 = phi i32 [ %127, %if.then.i475 ], [ %126, %if.end.i476 ]
  %rng4_sh_init = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 12
  %and191 = and i32 %retval.0.i477, 51
  %128 = ptrtoint ptr %rng4_sh_init to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %and191, ptr %rng4_sh_init, align 4
  %129 = and i32 %retval.0.i477, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool3.not.i.i = icmp ne i32 %129, 0
  br label %do.body192

do.body192:                                       ; preds = %do.end215.do.body192_crit_edge, %rd_reg32.exit478
  %ent_delay.0 = phi i32 [ 3200, %rd_reg32.exit478 ], [ %ent_delay.1, %do.end215.do.body192_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %130 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i479 = icmp eq i8 %130, 0
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rdsta) #8
  br i1 %tobool.not.i479, label %if.end.i481, label %if.then.i480

if.then.i480:                                     ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  %132 = call i32 @llvm.bswap.i32(i32 %131) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit483

if.end.i481:                                      ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit483

rd_reg32.exit483:                                 ; preds = %if.end.i481, %if.then.i480
  %retval.0.i482 = phi i32 [ %132, %if.then.i480 ], [ %131, %if.end.i481 ]
  %and196 = and i32 %retval.0.i482, 51
  %133 = ptrtoint ptr %rng4_sh_init to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rng4_sh_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool198.not = icmp eq i32 %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool200.not = icmp eq i32 %and196, 0
  %or.cond400 = select i1 %tobool198.not, i1 %tobool200.not, i1 false
  br i1 %or.cond400, label %do.end204, label %rd_reg32.exit483.if.end206_crit_edge

rd_reg32.exit483.if.end206_crit_edge:             ; preds = %rd_reg32.exit483
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

do.end204:                                        ; preds = %rd_reg32.exit483
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %ent_delay.0) #11
  %135 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %driver_data.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %139 = getelementptr inbounds %struct.caam_ctrl, ptr %138, i32 0, i32 23
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %140 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i.i485 = icmp eq i8 %140, 0
  br i1 %tobool.not.i.i485, label %do.body.i.i488, label %if.then.i.i486

if.then.i.i486:                                   ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #10
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %142 = or i32 %141, 536871168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %142) #8, !srcloc !189
  br label %clrsetbits_32.exit.i

do.body.i.i488:                                   ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @arm_heavy_mb() #8
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %or4.i.i487 = or i32 %143, 65568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %or4.i.i487) #8, !srcloc !189
  br label %clrsetbits_32.exit.i

clrsetbits_32.exit.i:                             ; preds = %do.body.i.i488, %if.then.i.i486
  %rtsdctl.i = getelementptr inbounds %struct.caam_ctrl, ptr %138, i32 0, i32 23, i32 0, i32 0, i32 2
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %144 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i22.i = icmp eq i8 %144, 0
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rtsdctl.i) #8
  br i1 %tobool.not.i22.i, label %if.end.i.i489, label %if.then.i23.i

if.then.i23.i:                                    ; preds = %clrsetbits_32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %146 = call i32 @llvm.bswap.i32(i32 %145) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit.i

if.end.i.i489:                                    ; preds = %clrsetbits_32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit.i

rd_reg32.exit.i:                                  ; preds = %if.end.i.i489, %if.then.i23.i
  %retval.0.i.i = phi i32 [ %146, %if.then.i23.i ], [ %145, %if.end.i.i489 ]
  %shr.i = lshr i32 %retval.0.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %ent_delay.0)
  %cmp.not.i490 = icmp ult i32 %shr.i, %ent_delay.0
  br i1 %cmp.not.i490, label %if.end.i491, label %rd_reg32.exit.i.start_rng.i_crit_edge

rd_reg32.exit.i.start_rng.i_crit_edge:            ; preds = %rd_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %start_rng.i

if.end.i491:                                      ; preds = %rd_reg32.exit.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %147 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i24.i = icmp eq i8 %147, 0
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rtsdctl.i) #8
  br i1 %tobool.not.i24.i, label %if.end.i26.i, label %if.then.i25.i

if.then.i25.i:                                    ; preds = %if.end.i491
  call void @__sanitizer_cov_trace_pc() #10
  %149 = call i32 @llvm.bswap.i32(i32 %148) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit28.i

if.end.i26.i:                                     ; preds = %if.end.i491
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit28.i

rd_reg32.exit28.i:                                ; preds = %if.end.i26.i, %if.then.i25.i
  %retval.0.i27.i = phi i32 [ %149, %if.then.i25.i ], [ %148, %if.end.i26.i ]
  %and5.i = and i32 %retval.0.i27.i, 65535
  %shl.i = shl i32 %ent_delay.0, 16
  %or.i492 = or i32 %and5.i, %shl.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %150 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i29.i = icmp eq i8 %150, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool.not.i29.i, label %do.body.i31.i, label %if.then.i30.i

if.then.i30.i:                                    ; preds = %rd_reg32.exit28.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = call i32 @llvm.bswap.i32(i32 %or.i492) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rtsdctl.i, i32 %151) #8, !srcloc !189
  br label %wr_reg32.exit.i

do.body.i31.i:                                    ; preds = %rd_reg32.exit28.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rtsdctl.i, i32 %or.i492) #8, !srcloc !189
  br label %wr_reg32.exit.i

wr_reg32.exit.i:                                  ; preds = %do.body.i31.i, %if.then.i30.i
  %rtfrqmin.i = getelementptr inbounds %struct.caam_ctrl, ptr %138, i32 0, i32 23, i32 0, i32 0, i32 3, i32 1
  %shr7.i = ashr i32 %ent_delay.0, 2
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %152 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i33.i = icmp eq i8 %152, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool.not.i33.i, label %do.body.i35.i, label %if.then.i34.i

if.then.i34.i:                                    ; preds = %wr_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %153 = call i32 @llvm.bswap.i32(i32 %shr7.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rtfrqmin.i, i32 %153) #8, !srcloc !189
  br label %wr_reg32.exit37.i

do.body.i35.i:                                    ; preds = %wr_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rtfrqmin.i, i32 %shr7.i) #8, !srcloc !189
  br label %wr_reg32.exit37.i

wr_reg32.exit37.i:                                ; preds = %do.body.i35.i, %if.then.i34.i
  %154 = getelementptr inbounds %struct.caam_ctrl, ptr %138, i32 0, i32 23, i32 0, i32 0, i32 3, i32 2
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %155 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i38.i = icmp eq i8 %155, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool.not.i38.i, label %do.body.i40.i, label %if.then.i39.i

if.then.i39.i:                                    ; preds = %wr_reg32.exit37.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 4096) #8, !srcloc !189
  br label %wr_reg32.exit42.i

do.body.i40.i:                                    ; preds = %wr_reg32.exit37.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 1048576) #8, !srcloc !189
  br label %wr_reg32.exit42.i

wr_reg32.exit42.i:                                ; preds = %do.body.i40.i, %if.then.i39.i
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br label %start_rng.i

start_rng.i:                                      ; preds = %wr_reg32.exit42.i, %rd_reg32.exit.i.start_rng.i_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %157 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i48.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i48.i, label %do.body.i52.i, label %if.then.i50.i

if.then.i50.i:                                    ; preds = %start_rng.i
  call void @__sanitizer_cov_trace_pc() #10
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %159 = and i32 %158, -553648385
  %160 = or i32 %159, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %160) #8, !srcloc !189
  br label %kick_trng.exit

do.body.i52.i:                                    ; preds = %start_rng.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @arm_heavy_mb() #8
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %and3.i.i493 = and i32 %161, -65570
  %or4.i51.i = or i32 %and3.i.i493, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %or4.i51.i) #8, !srcloc !189
  br label %kick_trng.exit

kick_trng.exit:                                   ; preds = %do.body.i52.i, %if.then.i50.i
  %add205 = add nsw i32 %ent_delay.0, 400
  br label %if.end206

if.end206:                                        ; preds = %kick_trng.exit, %rd_reg32.exit483.if.end206_crit_edge
  %ent_delay.1 = phi i32 [ %ent_delay.0, %rd_reg32.exit483.if.end206_crit_edge ], [ %add205, %kick_trng.exit ]
  %162 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %164 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %status.i, align 4
  %165 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %163, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %167 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 3265, i32 noundef 28) #12
  %tobool.not.i495 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i495, label %instantiate_rng.exit.thread, label %for.cond.preheader.i

instantiate_rng.exit.thread:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br label %do.end231

for.cond.preheader.i:                             ; preds = %if.end206
  %rdsta.i = getelementptr inbounds %struct.caam_ctrl, ptr %166, i32 0, i32 23, i32 0, i32 0, i32 26, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %cmp.i496 = phi i1 [ true, %for.cond.preheader.i ], [ false, %for.inc.i.for.body.i_crit_edge ]
  %tobool.not.i.i497 = phi i1 [ false, %for.cond.preheader.i ], [ true, %for.inc.i.for.body.i_crit_edge ]
  %sh_idx.081.i = phi i32 [ 0, %for.cond.preheader.i ], [ 1, %for.inc.i.for.body.i_crit_edge ]
  %shl.i498 = shl nuw nsw i32 1, %sh_idx.081.i
  %or.i499 = shl nuw nsw i32 17, %sh_idx.081.i
  %and.i500 = and i32 %shl.i498, %and196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i500)
  %tobool4.not.i = icmp eq i32 %and.i500, 0
  br i1 %tobool4.not.i, label %for.body.i.if.end14.i_crit_edge, label %if.then5.i

for.body.i.if.end14.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then5.i:                                       ; preds = %for.body.i
  %shl3.i = shl nuw nsw i32 16, %sh_idx.081.i
  %and6.i = and i32 %shl3.i, %and196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.end.i501, label %if.then5.i.for.inc.i_crit_edge

if.then5.i.for.inc.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end.i501:                                      ; preds = %if.then5.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.56, i32 noundef %sh_idx.081.i) #11
  %call10.i = call fastcc i32 @deinstantiate_rng(ptr noundef %dev1, i32 noundef %shl.i498) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.end.i501.if.end14.i_crit_edge, label %do.end.i501.for.end.thread.i_crit_edge

do.end.i501.for.end.thread.i_crit_edge:           ; preds = %do.end.i501
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

do.end.i501.if.end14.i_crit_edge:                 ; preds = %do.end.i501
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i501.if.end14.i_crit_edge, %for.body.i.if.end14.i_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %168 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i.i.i.i.i = icmp eq i8 %168, 0
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -1333788671, i32 16810160
  %169 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %retval.0.i.i.i.i.i, ptr %call7.i.i, align 8
  %shl.i.i = shl nuw nsw i32 %sh_idx.081.i, 4
  %call2.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 1, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.67, i32 0, i32 7)) #11
  %or.i.i.i = or i32 %shl.i.i, -2108686330
  %170 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %call7.i.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %172 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %172, 0
  %173 = lshr i32 %171, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %171, i32 %173
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %call7.i.i, i32 %and.i.i.i.i.i.i
  %174 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  %retval.0.i.i5.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %or.i.i.i, i32 %174
  %175 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %retval.0.i.i5.i.i.i, ptr %add.ptr.i.i.i.i.i, align 4
  %176 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %call7.i.i, align 8
  %178 = call i32 @llvm.bswap.i32(i32 %177) #8
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %177, i32 %178
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %179 = call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #8
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %add.i.i.i.i, i32 %179
  %180 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %retval.0.i9.i.i.i.i, ptr %call7.i.i, align 8
  %or.cond.i.i = or i1 %tobool3.not.i.i, %tobool.not.i.i497
  br i1 %or.cond.i.i, label %if.end14.i.build_instantiation_desc.exit.i_crit_edge, label %if.then.i.i502

if.end14.i.build_instantiation_desc.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_instantiation_desc.exit.i

if.then.i.i502:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = lshr i32 %179, 24
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %add.i.i.i.i, i32 %181
  %and.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i = getelementptr i32, ptr %call7.i.i, i32 %and.i.i.i.i.i
  %call3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %and.i.i.i.i.i, ptr noundef getelementptr inbounds ([12 x i8], ptr @.str.69, i32 0, i32 7)) #11
  %182 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %call7.i.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %184 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool.not.i.i.i.i.i14.i.i = icmp eq i8 %184, 0
  %185 = lshr i32 %183, 24
  %retval.0.i.i.i.i.i15.i.i = select i1 %tobool.not.i.i.i.i.i14.i.i, i32 %183, i32 %185
  %and.i.i.i.i16.i.i = and i32 %retval.0.i.i.i.i.i15.i.i, 127
  %add.ptr.i.i.i17.i.i = getelementptr i32, ptr %call7.i.i, i32 %and.i.i.i.i16.i.i
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i.i14.i.i, i32 -1577058304, i32 162
  %186 = ptrtoint ptr %add.ptr.i.i.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %retval.0.i.i8.i.i.i, ptr %add.ptr.i.i.i17.i.i, align 4
  %187 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %call7.i.i, align 8
  %189 = call i32 @llvm.bswap.i32(i32 %188) #8
  %retval.0.i7.i.i19.i.i = select i1 %tobool.not.i.i.i.i.i14.i.i, i32 %188, i32 %189
  %add.i.i20.i.i = add i32 %retval.0.i7.i.i19.i.i, 1
  %190 = call i32 @llvm.bswap.i32(i32 %add.i.i20.i.i) #8
  %retval.0.i9.i.i21.i.i = select i1 %tobool.not.i.i.i.i.i14.i.i, i32 %add.i.i20.i.i, i32 %190
  %191 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %retval.0.i9.i.i21.i.i, ptr %call7.i.i, align 8
  %192 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %194 = call i32 @llvm.bswap.i32(i32 %193) #8
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i.i14.i.i, i32 %193, i32 %194
  %195 = lshr i32 %190, 24
  %retval.0.i.i.i22.i.i = select i1 %tobool.not.i.i.i.i.i14.i.i, i32 %add.i.i20.i.i, i32 %195
  %and.i.i23.i.i = and i32 %retval.0.i.i.i22.i.i, 127
  %sub.i.i.i = sub nsw i32 %and.i.i23.i.i, %and.i.i.i.i.i
  %or.i24.i.i = or i32 %sub.i.i.i, %retval.0.i.i.i.i
  %196 = call i32 @llvm.bswap.i32(i32 %or.i24.i.i) #8
  %retval.0.i7.i.i.i = select i1 %tobool.not.i.i.i.i.i14.i.i, i32 %or.i24.i.i, i32 %196
  %197 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %retval.0.i7.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %198 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %call7.i.i, align 8
  %200 = lshr i32 %199, 24
  %retval.0.i.i.i26.i.i = select i1 %tobool.not.i.i.i.i.i14.i.i, i32 %199, i32 %200
  %and.i.i27.i.i = and i32 %retval.0.i.i.i26.i.i, 127
  %call2.i28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %and.i.i27.i.i, ptr noundef getelementptr inbounds ([20 x i8], ptr @.str.70, i32 0, i32 7)) #11
  %201 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %call7.i.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %203 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool.not.i.i.i.i.i29.i.i = icmp eq i8 %203, 0
  %204 = lshr i32 %202, 24
  %retval.0.i.i.i.i.i30.i.i = select i1 %tobool.not.i.i.i.i.i29.i.i, i32 %202, i32 %204
  %and.i.i.i.i31.i.i = and i32 %retval.0.i.i.i.i.i30.i.i, 127
  %add.ptr.i.i.i32.i.i = getelementptr i32, ptr %call7.i.i, i32 %and.i.i.i.i31.i.i
  %retval.0.i.i1.i.i.i = select i1 %tobool.not.i.i.i.i.i29.i.i, i32 277348356, i32 67143696
  %205 = ptrtoint ptr %add.ptr.i.i.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %retval.0.i.i1.i.i.i, ptr %add.ptr.i.i.i32.i.i, align 4
  %206 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %call7.i.i, align 8
  %208 = call i32 @llvm.bswap.i32(i32 %207) #8
  %retval.0.i7.i.i34.i.i = select i1 %tobool.not.i.i.i.i.i29.i.i, i32 %207, i32 %208
  %add.i.i35.i.i = add i32 %retval.0.i7.i.i34.i.i, 1
  %209 = call i32 @llvm.bswap.i32(i32 %add.i.i35.i.i) #8
  %retval.0.i9.i.i36.i.i = select i1 %tobool.not.i.i.i.i.i29.i.i, i32 %add.i.i35.i.i, i32 %209
  %210 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %retval.0.i9.i.i36.i.i, ptr %call7.i.i, align 8
  %211 = lshr i32 %209, 24
  %retval.0.i.i.i.i3.i.i.i = select i1 %tobool.not.i.i.i.i.i29.i.i, i32 %add.i.i35.i.i, i32 %211
  %and.i.i.i4.i.i.i = and i32 %retval.0.i.i.i.i3.i.i.i, 127
  %add.ptr.i.i5.i.i.i = getelementptr i32, ptr %call7.i.i, i32 %and.i.i.i4.i.i.i
  %retval.0.i.i6.i.i.i = select i1 %tobool.not.i.i.i.i.i29.i.i, i32 1, i32 16777216
  %212 = ptrtoint ptr %add.ptr.i.i5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %retval.0.i.i6.i.i.i, ptr %add.ptr.i.i5.i.i.i, align 4
  %213 = load i32, ptr %call7.i.i, align 8
  %214 = call i32 @llvm.bswap.i32(i32 %213) #8
  %retval.0.i7.i8.i.i.i = select i1 %tobool.not.i.i.i.i.i29.i.i, i32 %213, i32 %214
  %add.i9.i.i.i = add i32 %retval.0.i7.i8.i.i.i, 1
  %215 = call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i) #8
  %retval.0.i9.i10.i.i.i = select i1 %tobool.not.i.i.i.i.i29.i.i, i32 %add.i9.i.i.i, i32 %215
  %216 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %retval.0.i9.i10.i.i.i, ptr %call7.i.i, align 8
  %217 = lshr i32 %215, 24
  %retval.0.i.i.i38.i.i = select i1 %tobool.not.i.i.i.i.i29.i.i, i32 %add.i9.i.i.i, i32 %217
  %and.i.i39.i.i = and i32 %retval.0.i.i.i38.i.i, 127
  %call2.i40.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %and.i.i39.i.i, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.67, i32 0, i32 7)) #11
  %218 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %call7.i.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %220 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool.not.i.i.i.i.i41.i.i = icmp eq i8 %220, 0
  %221 = lshr i32 %219, 24
  %retval.0.i.i.i.i.i42.i.i = select i1 %tobool.not.i.i.i.i.i41.i.i, i32 %219, i32 %221
  %and.i.i.i.i43.i.i = and i32 %retval.0.i.i.i.i.i42.i.i, 127
  %add.ptr.i.i.i44.i.i = getelementptr i32, ptr %call7.i.i, i32 %and.i.i.i.i43.i.i
  %retval.0.i.i5.i45.i.i = select i1 %tobool.not.i.i.i.i.i41.i.i, i32 -2108682240, i32 1069186
  %222 = ptrtoint ptr %add.ptr.i.i.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %retval.0.i.i5.i45.i.i, ptr %add.ptr.i.i.i44.i.i, align 4
  %223 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %call7.i.i, align 8
  %225 = call i32 @llvm.bswap.i32(i32 %224) #8
  %retval.0.i7.i.i47.i.i = select i1 %tobool.not.i.i.i.i.i41.i.i, i32 %224, i32 %225
  %add.i.i48.i.i = add i32 %retval.0.i7.i.i47.i.i, 1
  %226 = call i32 @llvm.bswap.i32(i32 %add.i.i48.i.i) #8
  %retval.0.i9.i.i49.i.i = select i1 %tobool.not.i.i.i.i.i41.i.i, i32 %add.i.i48.i.i, i32 %226
  %227 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %retval.0.i9.i.i49.i.i, ptr %call7.i.i, align 8
  br label %build_instantiation_desc.exit.i

build_instantiation_desc.exit.i:                  ; preds = %if.then.i.i502, %if.end14.i.build_instantiation_desc.exit.i_crit_edge
  %228 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %call7.i.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %230 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool.not.i.i.i.i50.i.i = icmp eq i8 %230, 0
  %231 = lshr i32 %229, 24
  %retval.0.i.i.i.i51.i.i = select i1 %tobool.not.i.i.i.i50.i.i, i32 %229, i32 %231
  %and.i.i.i52.i.i = and i32 %retval.0.i.i.i.i51.i.i, 127
  %call3.i54.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %and.i.i.i52.i.i, ptr noundef getelementptr inbounds ([12 x i8], ptr @.str.69, i32 0, i32 7)) #11
  %232 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %call7.i.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %234 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool.not.i.i.i.i.i55.i.i = icmp eq i8 %234, 0
  %235 = lshr i32 %233, 24
  %retval.0.i.i.i.i.i56.i.i = select i1 %tobool.not.i.i.i.i.i55.i.i, i32 %233, i32 %235
  %and.i.i.i.i57.i.i = and i32 %retval.0.i.i.i.i.i56.i.i, 127
  %add.ptr.i.i.i58.i.i = getelementptr i32, ptr %call7.i.i, i32 %and.i.i.i.i57.i.i
  %retval.0.i.i8.i59.i.i = select i1 %tobool.not.i.i.i.i.i55.i.i, i32 -1568669696, i32 32930
  %236 = ptrtoint ptr %add.ptr.i.i.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %retval.0.i.i8.i59.i.i, ptr %add.ptr.i.i.i58.i.i, align 4
  %237 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %call7.i.i, align 8
  %239 = call i32 @llvm.bswap.i32(i32 %238) #8
  %retval.0.i7.i.i61.i.i = select i1 %tobool.not.i.i.i.i.i55.i.i, i32 %238, i32 %239
  %add.i.i62.i.i = add i32 %retval.0.i7.i.i61.i.i, 1
  %240 = call i32 @llvm.bswap.i32(i32 %add.i.i62.i.i) #8
  %retval.0.i9.i.i63.i.i = select i1 %tobool.not.i.i.i.i.i55.i.i, i32 %add.i.i62.i.i, i32 %240
  %241 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %retval.0.i9.i.i63.i.i, ptr %call7.i.i, align 8
  %call15.i = call fastcc i32 @run_descriptor_deco0(ptr noundef %dev1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %build_instantiation_desc.exit.i.for.end.thread.i_crit_edge

build_instantiation_desc.exit.i.for.end.thread.i_crit_edge: ; preds = %build_instantiation_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

if.end18.i:                                       ; preds = %build_instantiation_desc.exit.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %242 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool.not.i67.i = icmp eq i8 %242, 0
  %243 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rdsta.i) #8
  br i1 %tobool.not.i67.i, label %if.end.i.i503, label %if.then.i68.i

if.then.i68.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %244 = call i32 @llvm.bswap.i32(i32 %243) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit.i505

if.end.i.i503:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit.i505

rd_reg32.exit.i505:                               ; preds = %if.end.i.i503, %if.then.i68.i
  %retval.0.i.i504 = phi i32 [ %244, %if.then.i68.i ], [ %243, %if.end.i.i503 ]
  %245 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %status.i, align 4
  %247 = zext i32 %246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %246, label %rd_reg32.exit.i505.for.end.thread.i_crit_edge [
    i32 0, label %rd_reg32.exit.i505.lor.lhs.false.i506_crit_edge
    i32 1879048192, label %rd_reg32.exit.i505.lor.lhs.false.i506_crit_edge536
  ]

rd_reg32.exit.i505.lor.lhs.false.i506_crit_edge536: ; preds = %rd_reg32.exit.i505
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i506

rd_reg32.exit.i505.lor.lhs.false.i506_crit_edge:  ; preds = %rd_reg32.exit.i505
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i506

rd_reg32.exit.i505.for.end.thread.i_crit_edge:    ; preds = %rd_reg32.exit.i505
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

lor.lhs.false.i506:                               ; preds = %rd_reg32.exit.i505.lor.lhs.false.i506_crit_edge, %rd_reg32.exit.i505.lor.lhs.false.i506_crit_edge536
  %and23.i = and i32 %retval.0.i.i504, %or.i499
  call void @__sanitizer_cov_trace_cmp4(i32 %and23.i, i32 %or.i499)
  %cmp24.not.i = icmp eq i32 %and23.i, %or.i499
  br i1 %cmp24.not.i, label %do.end29.i, label %lor.lhs.false.i506.for.end.thread.i_crit_edge

lor.lhs.false.i506.for.end.thread.i_crit_edge:    ; preds = %lor.lhs.false.i506
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

do.end29.i:                                       ; preds = %lor.lhs.false.i506
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.59, i32 noundef %sh_idx.081.i) #11
  %248 = call ptr @memset(ptr %call7.i.i, i32 0, i32 28)
  br label %for.inc.i

for.end.thread.i:                                 ; preds = %lor.lhs.false.i506.for.end.thread.i_crit_edge, %rd_reg32.exit.i505.for.end.thread.i_crit_edge, %build_instantiation_desc.exit.i.for.end.thread.i_crit_edge, %do.end.i501.for.end.thread.i_crit_edge
  %ret.1.ph.i = phi i32 [ -11, %lor.lhs.false.i506.for.end.thread.i_crit_edge ], [ -11, %rd_reg32.exit.i505.for.end.thread.i_crit_edge ], [ %call15.i, %build_instantiation_desc.exit.i.for.end.thread.i_crit_edge ], [ %call10.i, %do.end.i501.for.end.thread.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %instantiate_rng.exit

for.inc.i:                                        ; preds = %do.end29.i, %if.then5.i.for.inc.i_crit_edge
  br i1 %cmp.i496, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %call.i.i507 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @devm_deinstantiate_rng, ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i507)
  %tobool.not.i69.i = icmp eq i32 %call.i.i507, 0
  br i1 %tobool.not.i69.i, label %instantiate_rng.exit.thread530, label %if.then.i70.i

instantiate_rng.exit.thread530:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  %249 = ptrtoint ptr %rng4_sh_init to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %rng4_sh_init, align 4
  %neg = and i32 %250, 51
  %and234 = xor i32 %neg, 51
  store i32 %and234, ptr %rng4_sh_init, align 4
  call fastcc void @clrsetbits_32(ptr noundef %scfgr80, i32 noundef 0, i32 noundef 1024)
  br label %if.end237

if.then.i70.i:                                    ; preds = %for.end.i
  %251 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %driver_data.i, align 4
  %rng4_sh_init.i.i = getelementptr inbounds %struct.caam_drv_private, ptr %252, i32 0, i32 12
  %253 = ptrtoint ptr %rng4_sh_init.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %rng4_sh_init.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool.not.i72.i = icmp eq i32 %254, 0
  br i1 %tobool.not.i72.i, label %if.then.i70.i.instantiate_rng.exit_crit_edge, label %if.then.i73.i

if.then.i70.i.instantiate_rng.exit_crit_edge:     ; preds = %if.then.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %instantiate_rng.exit

if.then.i73.i:                                    ; preds = %if.then.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call fastcc i32 @deinstantiate_rng(ptr noundef %dev1, i32 noundef %254) #8
  br label %instantiate_rng.exit

instantiate_rng.exit:                             ; preds = %if.then.i73.i, %if.then.i70.i.instantiate_rng.exit_crit_edge, %for.end.thread.i
  %retval.0.i508 = phi i32 [ %ret.1.ph.i, %for.end.thread.i ], [ %call.i.i507, %if.then.i73.i ], [ %call.i.i507, %if.then.i70.i.instantiate_rng.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %retval.0.i508)
  %cond = icmp eq i32 %retval.0.i508, -11
  br i1 %cond, label %do.end215, label %instantiate_rng.exit.do.end231_crit_edge

instantiate_rng.exit.do.end231_crit_edge:         ; preds = %instantiate_rng.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end231

do.end215:                                        ; preds = %instantiate_rng.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !193
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !194
  %cmp224 = icmp slt i32 %ent_delay.1, 12800
  br i1 %cmp224, label %do.end215.do.body192_crit_edge, label %do.end215.do.end231_crit_edge

do.end215.do.end231_crit_edge:                    ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end231

do.end215.do.body192_crit_edge:                   ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body192

do.end231:                                        ; preds = %do.end215.do.end231_crit_edge, %instantiate_rng.exit.do.end231_crit_edge, %instantiate_rng.exit.thread
  %retval.0.i508529 = phi i32 [ -12, %instantiate_rng.exit.thread ], [ -11, %do.end215.do.end231_crit_edge ], [ %retval.0.i508, %instantiate_rng.exit.do.end231_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #11
  br label %cleanup262

if.end237:                                        ; preds = %instantiate_rng.exit.thread530, %if.end173.if.end237_crit_edge
  %caam_id_ms = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 26, i32 25
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %255 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool.not.i509 = icmp eq i8 %255, 0
  %256 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %caam_id_ms) #8
  br i1 %tobool.not.i509, label %if.end.i511, label %if.then.i510

if.then.i510:                                     ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  %257 = call i32 @llvm.bswap.i32(i32 %256) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit513

if.end.i511:                                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit513

rd_reg32.exit513:                                 ; preds = %if.end.i511, %if.then.i510
  %retval.0.i512 = phi i32 [ %257, %if.then.i510 ], [ %256, %if.end.i511 ]
  %conv240 = zext i32 %retval.0.i512 to i64
  %shl = shl nuw i64 %conv240, 32
  %caam_id_ls = getelementptr inbounds %struct.caam_ctrl, ptr %call17, i32 0, i32 26, i32 26
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %258 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool.not.i514 = icmp eq i8 %258, 0
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %caam_id_ls) #8
  br i1 %tobool.not.i514, label %if.end.i516, label %if.then.i515

if.then.i515:                                     ; preds = %rd_reg32.exit513
  call void @__sanitizer_cov_trace_pc() #10
  %260 = call i32 @llvm.bswap.i32(i32 %259) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit518

if.end.i516:                                      ; preds = %rd_reg32.exit513
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit518

rd_reg32.exit518:                                 ; preds = %if.end.i516, %if.then.i515
  %retval.0.i517 = phi i32 [ %260, %if.then.i515 ], [ %259, %if.end.i516 ]
  %conv243 = zext i32 %retval.0.i517 to i64
  %or = or i64 %shl, %conv243
  %261 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %era, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.26, i64 noundef %or, i32 noundef %262) #11
  %total_jobrs251 = getelementptr inbounds %struct.caam_drv_private, ptr %call.i, i32 0, i32 6
  %263 = ptrtoint ptr %total_jobrs251 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %total_jobrs251, align 4
  %conv252 = zext i8 %264 to i32
  %265 = ptrtoint ptr %qi_present to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %qi_present, align 1
  %conv254 = zext i8 %266 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %conv252, i32 noundef %conv254) #11
  %call255 = call i32 @devm_of_platform_populate(ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255)
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %rd_reg32.exit518.cleanup262_crit_edge, label %do.end260

rd_reg32.exit518.cleanup262_crit_edge:            ; preds = %rd_reg32.exit518
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup262

do.end260:                                        ; preds = %rd_reg32.exit518
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #11
  br label %cleanup262

cleanup262:                                       ; preds = %do.end260, %rd_reg32.exit518.cleanup262_crit_edge, %do.end231, %do.end155, %devm_add_action_or_reset.exit, %do.end113, %if.then65.cleanup262_crit_edge, %do.end23, %if.then.i.i, %do.end19.i, %do.end.i, %if.end10.cleanup262_crit_edge, %do.end, %entry.cleanup262_crit_edge
  %retval.1 = phi i32 [ %24, %do.end23 ], [ %call.i445, %do.end113 ], [ %retval.0.i508529, %do.end231 ], [ -12, %do.end155 ], [ -22, %do.end ], [ -12, %entry.cleanup262_crit_edge ], [ %call.i460, %devm_add_action_or_reset.exit ], [ %call255, %do.end260 ], [ 0, %rd_reg32.exit518.cleanup262_crit_edge ], [ -517, %if.then65.cleanup262_crit_edge ], [ %call.i40.i, %if.then.i.i ], [ -12, %if.end10.cleanup262_crit_edge ], [ %retval.0.i.ph.i, %do.end19.i ], [ %call8.i, %do.end.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_iomap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_mc_get_version() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clrsetbits_32(ptr noundef %reg, i32 noundef %clear, i32 noundef %set) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %0 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #8, !srcloc !187
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %neg = xor i32 %clear, -1
  %and = and i32 %2, %neg
  %or = or i32 %and, %set
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %3) #8, !srcloc !189
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %neg2 = xor i32 %clear, -1
  %and3 = and i32 %4, %neg2
  %or4 = or i32 %and3, %set
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %or4) #8, !srcloc !189
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_remove_debugfs(ptr noundef %root) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debugfs_remove(ptr noundef %root) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wr_reg32(ptr noundef %reg, i32 noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %0 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.bswap.i32(i32 %data) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %1) #8, !srcloc !189
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %data) #8, !srcloc !189
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @disable_clocks(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_clks = getelementptr inbounds %struct.caam_drv_private, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.caam_drv_private, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %1, ptr noundef %3) #8
  tail call void @clk_bulk_unprepare(i32 noundef %1, ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @deinstantiate_rng(ptr noundef %ctrldev, i32 noundef %state_handle_mask) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3265, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %and = and i32 %state_handle_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.preheader.for.inc_crit_edge, label %if.then2

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then2:                                         ; preds = %for.body.preheader
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i.i.i = icmp eq i8 %2, 0
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1333788671, i32 16810160
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %retval.0.i.i.i.i, ptr %call7.i, align 8
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 1, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.67, i32 0, i32 7)) #11
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %5, 24
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %5, i32 %7
  %and.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i = getelementptr i32, ptr %call7.i, i32 %and.i.i.i.i.i
  %retval.0.i.i5.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 -2108686324, i32 201347202
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i.i5.i.i, ptr %add.ptr.i.i.i.i, align 4
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7.i, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %retval.0.i7.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %10, i32 %11
  %add.i.i.i = add i32 %retval.0.i7.i.i.i, 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #8
  %retval.0.i9.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %add.i.i.i, i32 %12
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i9.i.i.i, ptr %call7.i, align 8
  %14 = lshr i32 %12, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %add.i.i.i, i32 %14
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %and.i.i.i.i, ptr noundef getelementptr inbounds ([12 x i8], ptr @.str.69, i32 0, i32 7)) #11
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call7.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %17 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i.i.i.i6.i = icmp eq i8 %17, 0
  %18 = lshr i32 %16, 24
  %retval.0.i.i.i.i.i7.i = select i1 %tobool.not.i.i.i.i.i6.i, i32 %16, i32 %18
  %and.i.i.i.i8.i = and i32 %retval.0.i.i.i.i.i7.i, 127
  %add.ptr.i.i.i9.i = getelementptr i32, ptr %call7.i, i32 %and.i.i.i.i8.i
  %retval.0.i.i8.i.i = select i1 %tobool.not.i.i.i.i.i6.i, i32 -1568669696, i32 32930
  %19 = ptrtoint ptr %add.ptr.i.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.i8.i.i, ptr %add.ptr.i.i.i9.i, align 4
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call7.i, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %retval.0.i7.i.i11.i = select i1 %tobool.not.i.i.i.i.i6.i, i32 %21, i32 %22
  %add.i.i12.i = add i32 %retval.0.i7.i.i11.i, 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %add.i.i12.i) #8
  %retval.0.i9.i.i13.i = select i1 %tobool.not.i.i.i.i.i6.i, i32 %add.i.i12.i, i32 %23
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i9.i.i13.i, ptr %call7.i, align 8
  %call3 = call fastcc i32 @run_descriptor_deco0(ptr noundef %ctrldev, ptr noundef nonnull %call7.i, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then2
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %26, label %lor.lhs.false.do.end_crit_edge [
    i32 0, label %lor.lhs.false.do.end11_crit_edge
    i32 1879048192, label %lor.lhs.false.do.end11_crit_edge31
  ]

lor.lhs.false.do.end11_crit_edge31:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.1.do.end_crit_edge, %if.then2.1.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.then2.do.end_crit_edge
  %sh_idx.028.lcssa = phi i32 [ 0, %lor.lhs.false.do.end_crit_edge ], [ 0, %if.then2.do.end_crit_edge ], [ 1, %if.then2.1.do.end_crit_edge ], [ 1, %lor.lhs.false.1.do.end_crit_edge ]
  %call3.lcssa = phi i32 [ 0, %lor.lhs.false.do.end_crit_edge ], [ %call3, %if.then2.do.end_crit_edge ], [ %call3.1, %if.then2.1.do.end_crit_edge ], [ 0, %lor.lhs.false.1.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrldev, ptr noundef nonnull @.str.61, i32 noundef %sh_idx.028.lcssa) #11
  br label %for.end

do.end11:                                         ; preds = %lor.lhs.false.do.end11_crit_edge, %lor.lhs.false.do.end11_crit_edge31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %ctrldev, ptr noundef nonnull @.str.64, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end11, %for.body.preheader.for.inc_crit_edge
  %and.1 = and i32 %state_handle_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool1.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool1.not.1, label %for.inc.for.end_crit_edge, label %if.then2.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then2.1:                                       ; preds = %for.inc
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %28 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i.i.i.1 = icmp eq i8 %28, 0
  %retval.0.i.i.i.i.1 = select i1 %tobool.not.i.i.i.i.1, i32 -1333788671, i32 16810160
  %29 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i.i.i.1, ptr %call7.i, align 8
  %call2.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 1, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.67, i32 0, i32 7)) #11
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %32 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i.i.i.i.1 = icmp eq i8 %32, 0
  %33 = lshr i32 %31, 24
  %retval.0.i.i.i.i.i.i.1 = select i1 %tobool.not.i.i.i.i.i.i.1, i32 %31, i32 %33
  %and.i.i.i.i.i.1 = and i32 %retval.0.i.i.i.i.i.i.1, 127
  %add.ptr.i.i.i.i.1 = getelementptr i32, ptr %call7.i, i32 %and.i.i.i.i.i.1
  %retval.0.i.i5.i.i.1 = select i1 %tobool.not.i.i.i.i.i.i.1, i32 -2108686308, i32 469782658
  %34 = ptrtoint ptr %add.ptr.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i.i5.i.i.1, ptr %add.ptr.i.i.i.i.1, align 4
  %35 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call7.i, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  %retval.0.i7.i.i.i.1 = select i1 %tobool.not.i.i.i.i.i.i.1, i32 %36, i32 %37
  %add.i.i.i.1 = add i32 %retval.0.i7.i.i.i.1, 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.1) #8
  %retval.0.i9.i.i.i.1 = select i1 %tobool.not.i.i.i.i.i.i.1, i32 %add.i.i.i.1, i32 %38
  %39 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i9.i.i.i.1, ptr %call7.i, align 8
  %40 = lshr i32 %38, 24
  %retval.0.i.i.i.i.i.1 = select i1 %tobool.not.i.i.i.i.i.i.1, i32 %add.i.i.i.1, i32 %40
  %and.i.i.i.i.1 = and i32 %retval.0.i.i.i.i.i.1, 127
  %call3.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %and.i.i.i.i.1, ptr noundef getelementptr inbounds ([12 x i8], ptr @.str.69, i32 0, i32 7)) #11
  %41 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call7.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %43 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i.i.i.i6.i.1 = icmp eq i8 %43, 0
  %44 = lshr i32 %42, 24
  %retval.0.i.i.i.i.i7.i.1 = select i1 %tobool.not.i.i.i.i.i6.i.1, i32 %42, i32 %44
  %and.i.i.i.i8.i.1 = and i32 %retval.0.i.i.i.i.i7.i.1, 127
  %add.ptr.i.i.i9.i.1 = getelementptr i32, ptr %call7.i, i32 %and.i.i.i.i8.i.1
  %retval.0.i.i8.i.i.1 = select i1 %tobool.not.i.i.i.i.i6.i.1, i32 -1568669696, i32 32930
  %45 = ptrtoint ptr %add.ptr.i.i.i9.i.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i.i8.i.i.1, ptr %add.ptr.i.i.i9.i.1, align 4
  %46 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call7.i, align 8
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %retval.0.i7.i.i11.i.1 = select i1 %tobool.not.i.i.i.i.i6.i.1, i32 %47, i32 %48
  %add.i.i12.i.1 = add i32 %retval.0.i7.i.i11.i.1, 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %add.i.i12.i.1) #8
  %retval.0.i9.i.i13.i.1 = select i1 %tobool.not.i.i.i.i.i6.i.1, i32 %add.i.i12.i.1, i32 %49
  %50 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i9.i.i13.i.1, ptr %call7.i, align 8
  %call3.1 = call fastcc i32 @run_descriptor_deco0(ptr noundef %ctrldev, ptr noundef nonnull %call7.i, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool4.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool4.not.1, label %lor.lhs.false.1, label %if.then2.1.do.end_crit_edge

if.then2.1.do.end_crit_edge:                      ; preds = %if.then2.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.1:                                  ; preds = %if.then2.1
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %52, label %lor.lhs.false.1.do.end_crit_edge [
    i32 0, label %lor.lhs.false.1.do.end11.1_crit_edge
    i32 1879048192, label %lor.lhs.false.1.do.end11.1_crit_edge32
  ]

lor.lhs.false.1.do.end11.1_crit_edge32:           ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.1

lor.lhs.false.1.do.end11.1_crit_edge:             ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.1

lor.lhs.false.1.do.end_crit_edge:                 ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end11.1:                                       ; preds = %lor.lhs.false.1.do.end11.1_crit_edge, %lor.lhs.false.1.do.end11.1_crit_edge32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %ctrldev, ptr noundef nonnull @.str.64, i32 noundef 1) #11
  br label %for.end

for.end:                                          ; preds = %do.end11.1, %for.inc.for.end_crit_edge, %do.end
  %ret.2 = phi i32 [ %call3.lcssa, %do.end ], [ 0, %do.end11.1 ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_descriptor_deco0(ptr noundef %ctrldev, ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %status) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctrldev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %deco2 = getelementptr inbounds %struct.caam_drv_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %deco2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %deco2, align 4
  %virt_en = getelementptr inbounds %struct.caam_drv_private, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %virt_en to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.72) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.if.then_crit_edge

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false7.if.then_crit_edge

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false10.if.end_crit_edge, label %lor.lhs.false10.if.then_crit_edge

lor.lhs.false10.if.then_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false10.if.end_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false10.if.then_crit_edge, %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %deco_rsr = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %8 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rsr) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %10 = or i32 %9, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rsr, i32 %10) #8, !srcloc !189
  br label %while.cond.preheader

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rsr) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %or4.i = or i32 %11, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rsr, i32 %or4.i) #8, !srcloc !189
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.body.i, %if.then.i
  br label %while.cond

while.cond:                                       ; preds = %do.end, %while.cond.preheader
  %timeout.0 = phi i32 [ %dec, %do.end ], [ 100000, %while.cond.preheader ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %12 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i130 = icmp eq i8 %12, 0
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rsr) #8
  br i1 %tobool.not.i130, label %if.end.i, label %if.then.i131

if.then.i131:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i, %if.then.i131
  %retval.0.i = phi i32 [ %14, %if.then.i131 ], [ %13, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %tobool15.not = icmp sgt i32 %retval.0.i, -1
  br i1 %tobool15.not, label %land.rhs, label %rd_reg32.exit.if.end_crit_edge

rd_reg32.exit.if.end_crit_edge:                   ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %rd_reg32.exit
  %dec = add nsw i32 %timeout.0, -1
  %tobool16.not = icmp eq i32 %dec, 0
  br i1 %tobool16.not, label %land.rhs.if.end_crit_edge, label %do.end

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !196
  br label %while.cond

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %rd_reg32.exit.if.end_crit_edge, %lor.lhs.false10.if.end_crit_edge
  %deco_rq = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %15 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i132 = icmp eq i8 %15, 0
  br i1 %tobool.not.i132, label %do.body.i136, label %if.then.i134

if.then.i134:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rq) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %17 = or i32 %16, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rq, i32 %17) #8, !srcloc !189
  br label %while.cond23.preheader

do.body.i136:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rq) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %or4.i135 = or i32 %18, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rq, i32 %or4.i135) #8, !srcloc !189
  br label %while.cond23.preheader

while.cond23.preheader:                           ; preds = %do.body.i136, %if.then.i134
  br label %while.cond23

while.cond23:                                     ; preds = %do.end37, %while.cond23.preheader
  %timeout.2 = phi i32 [ %dec29, %do.end37 ], [ 100000, %while.cond23.preheader ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i139 = icmp eq i8 %19, 0
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rq) #8
  br i1 %tobool.not.i139, label %if.end.i141, label %if.then.i140

if.then.i140:                                     ; preds = %while.cond23
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit143

if.end.i141:                                      ; preds = %while.cond23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit143

rd_reg32.exit143:                                 ; preds = %if.end.i141, %if.then.i140
  %retval.0.i142 = phi i32 [ %21, %if.then.i140 ], [ %20, %if.end.i141 ]
  %and26 = and i32 %retval.0.i142, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.rhs28, label %for.cond.preheader

for.cond.preheader:                               ; preds = %rd_reg32.exit143
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %24 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i195 = icmp eq i8 %24, 0
  %25 = lshr i32 %23, 24
  %retval.0.i.i196 = select i1 %tobool.not.i.i195, i32 %23, i32 %25
  %and.i149197 = and i32 %retval.0.i.i196, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149197)
  %cmp51198.not = icmp eq i32 %and.i149197, 0
  br i1 %cmp51198.not, label %for.end, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

land.rhs28:                                       ; preds = %rd_reg32.exit143
  %dec29 = add nsw i32 %timeout.2, -1
  %tobool30.not = icmp eq i32 %dec29, 0
  br i1 %tobool30.not, label %do.end47.critedge, label %do.end37

do.end37:                                         ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !198
  br label %while.cond23

do.end47.critedge:                                ; preds = %land.rhs28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrldev, ptr noundef nonnull @.str.75) #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %26 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i144 = icmp eq i8 %26, 0
  br i1 %tobool.not.i144, label %do.body.i146, label %if.then.i145

if.then.i145:                                     ; preds = %do.end47.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rq) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %28 = and i32 %27, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rq, i32 %28) #8, !srcloc !189
  br label %cleanup

do.body.i146:                                     ; preds = %do.end47.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rq) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %and3.i = and i32 %29, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rq, i32 %and3.i) #8, !srcloc !189
  br label %cleanup

for.body:                                         ; preds = %wr_reg32.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %tobool.not.i.i200 = phi i1 [ %tobool.not.i.i, %wr_reg32.exit.for.body_crit_edge ], [ %tobool.not.i.i195, %for.cond.preheader.for.body_crit_edge ]
  %i.0199 = phi i32 [ %inc, %wr_reg32.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.caam_deco, ptr %5, i32 0, i32 67, i32 %i.0199
  %add.ptr = getelementptr i32, ptr %desc, i32 %i.0199
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %retval.0.i151 = select i1 %tobool.not.i.i200, i32 %31, i32 %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i200, label %do.body.i154, label %if.then.i153

if.then.i153:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i151) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %33) #8, !srcloc !189
  br label %wr_reg32.exit

do.body.i154:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %retval.0.i151) #8, !srcloc !189
  br label %wr_reg32.exit

wr_reg32.exit:                                    ; preds = %do.body.i154, %if.then.i153
  %inc = add nuw nsw i32 %i.0199, 1
  %34 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %36 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  %37 = lshr i32 %35, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %35, i32 %37
  %and.i149 = and i32 %retval.0.i.i, 127
  %cmp51 = icmp ult i32 %inc, %and.i149
  br i1 %cmp51, label %wr_reg32.exit.for.body_crit_edge, label %for.end.loopexit

wr_reg32.exit.for.body_crit_edge:                 ; preds = %wr_reg32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %wr_reg32.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i149)
  %phi.cmp = icmp ugt i32 %and.i149, 3
  %phi.sel = select i1 %phi.cmp, i32 805306368, i32 536870912
  %jr_ctl_hi204 = getelementptr inbounds %struct.caam_deco, ptr %5, i32 0, i32 52
  br i1 %tobool.not.i.i, label %for.end.loopexit.do.body.i163_crit_edge, label %for.end.loopexit.if.then.i161_crit_edge

for.end.loopexit.if.then.i161_crit_edge:          ; preds = %for.end.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i161

for.end.loopexit.do.body.i163_crit_edge:          ; preds = %for.end.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i163

for.end:                                          ; preds = %for.cond.preheader
  %jr_ctl_hi = getelementptr inbounds %struct.caam_deco, ptr %5, i32 0, i32 52
  br i1 %tobool.not.i.i195, label %for.end.do.body.i163_crit_edge, label %for.end.if.then.i161_crit_edge

for.end.if.then.i161_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i161

for.end.do.body.i163_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i163

if.then.i161:                                     ; preds = %for.end.if.then.i161_crit_edge, %for.end.loopexit.if.then.i161_crit_edge
  %jr_ctl_hi207 = phi ptr [ %jr_ctl_hi204, %for.end.loopexit.if.then.i161_crit_edge ], [ %jr_ctl_hi, %for.end.if.then.i161_crit_edge ]
  %and.i149.lcssa206 = phi i32 [ %phi.sel, %for.end.loopexit.if.then.i161_crit_edge ], [ 536870912, %for.end.if.then.i161_crit_edge ]
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %jr_ctl_hi207) #8, !srcloc !187
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %or.i160 = or i32 %39, %and.i149.lcssa206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i160) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jr_ctl_hi207, i32 %40) #8, !srcloc !189
  br label %clrsetbits_32.exit165

do.body.i163:                                     ; preds = %for.end.do.body.i163_crit_edge, %for.end.loopexit.do.body.i163_crit_edge
  %jr_ctl_hi208 = phi ptr [ %jr_ctl_hi204, %for.end.loopexit.do.body.i163_crit_edge ], [ %jr_ctl_hi, %for.end.do.body.i163_crit_edge ]
  %and.i149.lcssa205 = phi i32 [ %phi.sel, %for.end.loopexit.do.body.i163_crit_edge ], [ 536870912, %for.end.do.body.i163_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %jr_ctl_hi208) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %or4.i162 = or i32 %41, %and.i149.lcssa205
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %jr_ctl_hi208, i32 %or4.i162) #8, !srcloc !189
  br label %clrsetbits_32.exit165

clrsetbits_32.exit165:                            ; preds = %do.body.i163, %if.then.i161
  %desc_dbg = getelementptr inbounds %struct.caam_deco, ptr %5, i32 0, i32 69
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %1, i32 0, i32 11
  %dbg_exec = getelementptr inbounds %struct.caam_deco, ptr %5, i32 0, i32 71
  br label %do.body57

do.body57:                                        ; preds = %land.rhs81.do.body57_crit_edge, %clrsetbits_32.exit165
  %timeout.4 = phi i32 [ 10000000, %clrsetbits_32.exit165 ], [ %dec82, %land.rhs81.do.body57_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %42 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i166 = icmp eq i8 %42, 0
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc_dbg) #8
  br i1 %tobool.not.i166, label %if.end.i168, label %if.then.i167

if.then.i167:                                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit170

if.end.i168:                                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit170

rd_reg32.exit170:                                 ; preds = %if.end.i168, %if.then.i167
  %retval.0.i169 = phi i32 [ %44, %if.then.i167 ], [ %43, %if.end.i168 ]
  %45 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %46)
  %cmp59 = icmp slt i32 %46, 10
  br i1 %cmp59, label %if.then60, label %if.else

if.then60:                                        ; preds = %rd_reg32.exit170
  call void @__sanitizer_cov_trace_pc() #10
  %and61 = lshr i32 %retval.0.i169, 20
  br label %if.end65

if.else:                                          ; preds = %rd_reg32.exit170
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %47 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i171 = icmp eq i8 %47, 0
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dbg_exec) #8
  br i1 %tobool.not.i171, label %if.end.i173, label %if.then.i172

if.then.i172:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit175

if.end.i173:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit175

rd_reg32.exit175:                                 ; preds = %if.end.i173, %if.then.i172
  %retval.0.i174 = phi i32 [ %49, %if.then.i172 ], [ %48, %if.end.i173 ]
  %and63 = lshr i32 %retval.0.i174, 16
  br label %if.end65

if.end65:                                         ; preds = %rd_reg32.exit175, %if.then60
  %deco_state.0.in = phi i32 [ %and61, %if.then60 ], [ %and63, %rd_reg32.exit175 ]
  %deco_state.0 = and i32 %deco_state.0.in, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %deco_state.0)
  %cmp66 = icmp eq i32 %deco_state.0, 13
  br i1 %cmp66, label %if.end65.do.end85_crit_edge, label %do.end73

if.end65.do.end85_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

do.end73:                                         ; preds = %if.end65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i169)
  %tobool80.not = icmp sgt i32 %retval.0.i169, -1
  br i1 %tobool80.not, label %do.end73.do.end85_crit_edge, label %land.rhs81

do.end73.do.end85_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

land.rhs81:                                       ; preds = %do.end73
  %dec82 = add nsw i32 %timeout.4, -1
  %tobool83.not = icmp eq i32 %dec82, 0
  br i1 %tobool83.not, label %land.rhs81.do.end85_crit_edge, label %land.rhs81.do.body57_crit_edge

land.rhs81.do.body57_crit_edge:                   ; preds = %land.rhs81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

land.rhs81.do.end85_crit_edge:                    ; preds = %land.rhs81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

do.end85:                                         ; preds = %land.rhs81.do.end85_crit_edge, %do.end73.do.end85_crit_edge, %if.end65.do.end85_crit_edge
  %timeout.5 = phi i32 [ %timeout.4, %if.end65.do.end85_crit_edge ], [ 0, %land.rhs81.do.end85_crit_edge ], [ %timeout.4, %do.end73.do.end85_crit_edge ]
  %op_status_hi = getelementptr inbounds %struct.caam_deco, ptr %5, i32 0, i32 55
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %50 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i176 = icmp eq i8 %50, 0
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %op_status_hi) #8
  br i1 %tobool.not.i176, label %if.end.i178, label %if.then.i177

if.then.i177:                                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  br label %rd_reg32.exit180

if.end.i178:                                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  br label %rd_reg32.exit180

rd_reg32.exit180:                                 ; preds = %if.end.i178, %if.then.i177
  %retval.0.i179 = phi i32 [ %52, %if.then.i177 ], [ %51, %if.end.i178 ]
  %and87 = and i32 %retval.0.i179, -268435201
  %53 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and87, ptr %status, align 4
  %54 = ptrtoint ptr %virt_en to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %virt_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp89 = icmp eq i32 %55, 1
  br i1 %cmp89, label %if.then90, label %rd_reg32.exit180.if.end92_crit_edge

rd_reg32.exit180.if.end92_crit_edge:              ; preds = %rd_reg32.exit180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then90:                                        ; preds = %rd_reg32.exit180
  %deco_rsr91 = getelementptr inbounds %struct.caam_ctrl, ptr %3, i32 0, i32 9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %56 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i181 = icmp eq i8 %56, 0
  br i1 %tobool.not.i181, label %do.body.i185, label %if.then.i183

if.then.i183:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rsr91) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %58 = and i32 %57, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rsr91, i32 %58) #8, !srcloc !189
  br label %if.end92

do.body.i185:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rsr91) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %and3.i184 = and i32 %59, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rsr91, i32 %and3.i184) #8, !srcloc !189
  br label %if.end92

if.end92:                                         ; preds = %do.body.i185, %if.then.i183, %rd_reg32.exit180.if.end92_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %60 = load i8, ptr @caam_little_end, align 1, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i188 = icmp eq i8 %60, 0
  br i1 %tobool.not.i188, label %do.body.i192, label %if.then.i190

if.then.i190:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rq) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %62 = and i32 %61, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rq, i32 %62) #8, !srcloc !189
  br label %clrsetbits_32.exit194

do.body.i192:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %deco_rq) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %and3.i191 = and i32 %63, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %deco_rq, i32 %and3.i191) #8, !srcloc !189
  br label %clrsetbits_32.exit194

clrsetbits_32.exit194:                            ; preds = %do.body.i192, %if.then.i190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.5)
  %tobool94.not = icmp eq i32 %timeout.5, 0
  %. = select i1 %tobool94.not, i32 -11, i32 0
  br label %cleanup

cleanup:                                          ; preds = %clrsetbits_32.exit194, %do.body.i146, %if.then.i145
  %retval.0 = phi i32 [ %., %clrsetbits_32.exit194 ], [ -19, %if.then.i145 ], [ -19, %do.body.i146 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_deinstantiate_rng(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rng4_sh_init = getelementptr inbounds %struct.caam_drv_private, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %rng4_sh_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rng4_sh_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @deinstantiate_rng(ptr noundef %data, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !164, !166, !168, !170, !171, !172, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__ksymtab_caam_dpaa2, !1, !"__ksymtab_caam_dpaa2", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/ctrl.c", i32 24, i32 1}
!2 = !{ptr @__initcall__kmod_caam__511_921_caam_driver_init6, !3, !"__initcall__kmod_caam__511_921_caam_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/crypto/caam/ctrl.c", i32 921, i32 1}
!4 = !{ptr @__exitcall_caam_driver_exit, !3, !"__exitcall_caam_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file512, !6, !"__UNIQUE_ID_file512", i1 false, i1 false}
!6 = !{!"../drivers/crypto/caam/ctrl.c", i32 923, i32 1}
!7 = !{ptr @__UNIQUE_ID_license513, !6, !"__UNIQUE_ID_license513", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description514, !9, !"__UNIQUE_ID_description514", i1 false, i1 false}
!9 = !{!"../drivers/crypto/caam/ctrl.c", i32 924, i32 1}
!10 = !{ptr @__UNIQUE_ID_author515, !11, !"__UNIQUE_ID_author515", i1 false, i1 false}
!11 = !{!"../drivers/crypto/caam/ctrl.c", i32 925, i32 1}
!12 = !{ptr @caam_dpaa2, !13, !"caam_dpaa2", i1 false, i1 false}
!13 = !{!"../drivers/crypto/caam/ctrl.c", i32 23, i32 6}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/caam/ctrl.c", i32 915, i32 11}
!16 = !{ptr @caam_driver, !17, !"caam_driver", i1 false, i1 false}
!17 = !{!"../drivers/crypto/caam/ctrl.c", i32 913, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/caam/ctrl.c", i32 642, i32 4}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @caam_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @caam_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/caam/ctrl.c", i32 657, i32 3}
!28 = !{ptr @caam_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @caam_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/caam/ctrl.c", i32 713, i32 43}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/caam/ctrl.c", i32 770, i32 3}
!34 = !{ptr @caam_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @caam_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/caam/ctrl.c", i32 806, i32 35}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/caam/ctrl.c", i32 807, i32 35}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/caam/ctrl.c", i32 819, i32 3}
!42 = !{ptr @caam_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @caam_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/caam/ctrl.c", i32 859, i32 5}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @caam_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @caam_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/crypto/caam/ctrl.c", i32 882, i32 4}
!51 = !{ptr @caam_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @caam_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/crypto/caam/ctrl.c", i32 901, i32 2}
!55 = !{ptr @caam_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @caam_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/crypto/caam/ctrl.c", i32 903, i32 2}
!59 = !{ptr @caam_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @caam_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/caam/ctrl.c", i32 908, i32 3}
!63 = !{ptr @caam_probe._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @caam_probe._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/caam/ctrl.c", i32 542, i32 14}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/crypto/caam/ctrl.c", i32 543, i32 14}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/caam/ctrl.c", i32 544, i32 14}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/caam/ctrl.c", i32 545, i32 14}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/crypto/caam/ctrl.c", i32 546, i32 14}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/crypto/caam/ctrl.c", i32 547, i32 14}
!77 = !{ptr @caam_imx_soc_table, !78, !"caam_imx_soc_table", i1 false, i1 false}
!78 = !{!"../drivers/crypto/caam/ctrl.c", i32 541, i32 42}
!79 = !{ptr @caam_imx6ul_data, !80, !"caam_imx6ul_data", i1 false, i1 false}
!80 = !{!"../drivers/crypto/caam/ctrl.c", i32 527, i32 35}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/caam/ctrl.c", i32 522, i32 10}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/crypto/caam/ctrl.c", i32 523, i32 10}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/crypto/caam/ctrl.c", i32 524, i32 10}
!87 = !{ptr @caam_imx6ul_clks, !88, !"caam_imx6ul_clks", i1 false, i1 false}
!88 = !{!"../drivers/crypto/caam/ctrl.c", i32 521, i32 35}
!89 = !{ptr @caam_imx6_data, !90, !"caam_imx6_data", i1 false, i1 false}
!90 = !{!"../drivers/crypto/caam/ctrl.c", i32 506, i32 35}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/crypto/caam/ctrl.c", i32 503, i32 10}
!93 = !{ptr @caam_imx6_clks, !94, !"caam_imx6_clks", i1 false, i1 false}
!94 = !{!"../drivers/crypto/caam/ctrl.c", i32 499, i32 35}
!95 = !{ptr @caam_imx7_data, !96, !"caam_imx7_data", i1 false, i1 false}
!96 = !{!"../drivers/crypto/caam/ctrl.c", i32 516, i32 35}
!97 = !{ptr @caam_imx7_clks, !98, !"caam_imx7_clks", i1 false, i1 false}
!98 = !{!"../drivers/crypto/caam/ctrl.c", i32 511, i32 35}
!99 = !{ptr @caam_vf610_data, !100, !"caam_vf610_data", i1 false, i1 false}
!100 = !{!"../drivers/crypto/caam/ctrl.c", i32 536, i32 35}
!101 = !{ptr @caam_vf610_clks, !102, !"caam_vf610_clks", i1 false, i1 false}
!102 = !{!"../drivers/crypto/caam/ctrl.c", i32 532, i32 35}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/crypto/caam/ctrl.c", i32 572, i32 3}
!105 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @init_clocks._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @init_clocks._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/caam/ctrl.c", i32 579, i32 3}
!110 = !{ptr @init_clocks._entry.46, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @init_clocks._entry_ptr.48, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/crypto/caam/ctrl.c", i32 476, i32 31}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/caam/ctrl.c", i32 477, i32 31}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/caam/ctrl.c", i32 478, i32 31}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/caam/intern.h", i32 216, i32 37}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/caam/intern.h", i32 217, i32 37}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/caam/ctrl.c", i32 455, i32 50}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/crypto/caam/ctrl.c", i32 456, i32 40}
!126 = !{ptr @caam_get_era_from_hw.id, !127, !"id", i1 false, i1 false}
!127 = !{!"../drivers/crypto/caam/ctrl.c", i32 404, i32 4}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/caam/ctrl.c", i32 295, i32 4}
!130 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @instantiate_rng._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @instantiate_rng._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/crypto/caam/ctrl.c", i32 329, i32 3}
!135 = !{ptr @instantiate_rng._entry.58, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @instantiate_rng._entry_ptr.60, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/crypto/caam/ctrl.c", i32 224, i32 5}
!139 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @deinstantiate_rng._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @deinstantiate_rng._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/crypto/caam/ctrl.c", i32 229, i32 4}
!144 = !{ptr @deinstantiate_rng._entry.63, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @deinstantiate_rng._entry_ptr.65, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/caam/desc_constr.h", i32 265, i32 1}
!148 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @append_operation._entry, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @append_operation._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/caam/desc_constr.h", i32 240, i32 1}
!154 = !{ptr @append_jump._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @append_jump._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/crypto/caam/desc_constr.h", i32 388, i32 1}
!158 = !{ptr @append_load_imm_u32._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @append_load_imm_u32._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/crypto/caam/ctrl.c", i32 108, i32 31}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/caam/ctrl.c", i32 109, i32 31}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/crypto/caam/ctrl.c", i32 110, i32 31}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/crypto/caam/ctrl.c", i32 111, i32 31}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/crypto/caam/ctrl.c", i32 128, i32 3}
!170 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @run_descriptor_deco0._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @run_descriptor_deco0._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @caam_match, !174, !"caam_match", i1 false, i1 false}
!174 = !{!"../drivers/crypto/caam/ctrl.c", i32 483, i32 34}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i8 0, i8 2}
!185 = !{i64 2152446345}
!186 = !{i64 2158451268}
!187 = !{i64 4913486}
!188 = !{i64 2152447700}
!189 = !{i64 4913068}
!190 = !{i64 2158452147}
!191 = !{i64 2158452373}
!192 = !{!"auto-init"}
!193 = !{i64 2158659980}
!194 = !{i64 2158659822}
!195 = !{i64 2158628848}
!196 = !{i64 2158628690}
!197 = !{i64 2158629145}
!198 = !{i64 2158628987}
!199 = !{i64 2158635155}
!200 = !{i64 2158634997}
